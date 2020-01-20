package com.opencloud.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.exception.BaseException;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.impl.BaseServiceImpl;
import com.opencloud.system.client.constants.SystemConstants;
import com.opencloud.system.client.constants.ResourceType;
import com.opencloud.system.client.model.entity.SystemAction;
import com.opencloud.system.mapper.SystemActionMapper;
import com.opencloud.system.service.SystemActionService;
import com.opencloud.system.service.SystemAuthorityService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * @author liuyadu
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class SystemActionServiceImpl extends BaseServiceImpl<SystemActionMapper, SystemAction> implements SystemActionService {
    @Autowired
    private SystemAuthorityService systemAuthorityService;

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    @Override
    public IPage<SystemAction> findPage(PageParams pageParams) {
        SystemAction query = pageParams.mapToBean(SystemAction.class);
        QueryWrapper<SystemAction> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .likeRight(ObjectUtils.isNotEmpty(query.getActionCode()), SystemAction::getActionCode, query.getActionCode())
                .likeRight(ObjectUtils.isNotEmpty(query.getActionName()), SystemAction::getActionName, query.getActionName());
        queryWrapper.orderByDesc("create_time");
        return baseMapper.selectPage(new Page(pageParams.getPage(), pageParams.getLimit()), queryWrapper);
    }

    /**
     * 查询菜单下所有操作
     *
     * @param menuId
     * @return
     */
    @Override
    public List<SystemAction> findListByMenuId(Long menuId) {
        QueryWrapper<SystemAction> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .eq(SystemAction::getMenuId, menuId);
        List<SystemAction> list = list(queryWrapper);
        //根据优先级从大到小排序
        list.sort((SystemAction h1, SystemAction h2) -> h1.getPriority().compareTo(h2.getPriority()));
        return list;
    }


    /**
     * 检查Action编码是否存在
     *
     * @param acitonCode
     * @return
     */
    @Override
    public Boolean isExist(String acitonCode) {
        QueryWrapper<SystemAction> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .eq(SystemAction::getActionCode, acitonCode);
        int count = count(queryWrapper);
        return count > 0 ? true : false;
    }

    /**
     * 添加Action操作
     *
     * @param aciton
     * @return
     */
    @Override
    public SystemAction add(SystemAction aciton) {
        if (isExist(aciton.getActionCode())) {
            throw new BaseException(String.format("%s编码已存在!", aciton.getActionCode()));
        }
        if (aciton.getMenuId() == null) {
            aciton.setMenuId(0L);
        }
        if (aciton.getPriority() == null) {
            aciton.setPriority(0);
        }
        if (aciton.getStatus() == null) {
            aciton.setStatus(SystemConstants.ENABLED);
        }
        if (aciton.getIsPersist() == null) {
            aciton.setIsPersist(SystemConstants.DISABLED);
        }
        aciton.setCreateTime(new Date());
        aciton.setUpdateTime(aciton.getCreateTime());
        save(aciton);
        // 同步权限表里的信息
        systemAuthorityService.saveOrUpdateAuthority(aciton.getActionId(), ResourceType.action);
        return aciton;
    }

    /**
     * 修改Action操作
     *
     * @param aciton
     * @return
     */
    @Override
    public SystemAction update(SystemAction aciton) {
        SystemAction saved = getById(aciton.getActionId());
        if (saved == null) {
            throw new BaseException(String.format("%s信息不存在", aciton.getActionId()));
        }
        if (!saved.getActionCode().equals(aciton.getActionCode())) {
            // 和原来不一致重新检查唯一性
            if (isExist(aciton.getActionCode())) {
                throw new BaseException(String.format("%s编码已存在!", aciton.getActionCode()));
            }
        }
        if (aciton.getMenuId() == null) {
            aciton.setMenuId(0L);
        }
        if (aciton.getPriority() == null) {
            aciton.setPriority(0);
        }
        aciton.setUpdateTime(new Date());
        updateById(aciton);
        // 同步权限表里的信息
        systemAuthorityService.saveOrUpdateAuthority(aciton.getActionId(), ResourceType.action);
        return aciton;
    }

    /**
     * 移除Action
     *
     * @param actionId
     * @return
     */
    @Override
    public void remove(Long actionId) {
        SystemAction aciton = getById(actionId);
        if (aciton != null && aciton.getIsPersist().equals(SystemConstants.ENABLED)) {
            throw new BaseException(String.format("默认数据,禁止删除"));
        }
        systemAuthorityService.removeAuthorityAction(actionId);
        systemAuthorityService.removeAuthority(actionId, ResourceType.action);
        removeById(actionId);
    }

    /**
     * 移除菜单相关资源
     *
     * @param menuId
     */
    @Override
    public void removeByMenuId(Long menuId) {
        List<SystemAction> actionList = findListByMenuId(menuId);
        if (actionList != null && actionList.size() > 0) {
            for (SystemAction action : actionList) {
                remove(action.getActionId());
            }
        }
    }
}
