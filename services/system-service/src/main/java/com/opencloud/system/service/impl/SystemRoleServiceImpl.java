package com.opencloud.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.opencloud.common.constants.CommonConstants;
import com.opencloud.common.exception.BaseException;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.impl.BaseServiceImpl;
import com.opencloud.common.utils.StringUtil;
import com.opencloud.system.client.constants.SystemConstants;
import com.opencloud.system.client.model.entity.SystemRole;
import com.opencloud.system.client.model.entity.SystemRoleUser;
import com.opencloud.system.client.model.entity.SystemUser;
import com.opencloud.system.mapper.SystemRoleMapper;
import com.opencloud.system.mapper.SystemRoleUserMapper;
import com.opencloud.system.service.SystemRoleService;
import com.opencloud.system.service.SystemUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;


/**
 * @author liuyadu
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class SystemRoleServiceImpl extends BaseServiceImpl<SystemRoleMapper, SystemRole> implements SystemRoleService {
    @Autowired
    private SystemRoleUserMapper systemRoleUserMapper;
    @Autowired
    private SystemUserService systemUserService;

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    @Override
    public IPage<SystemRole> findPage(PageParams pageParams) {
        SystemRole query = pageParams.mapToBean(SystemRole.class);
        QueryWrapper<SystemRole> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .likeRight(ObjectUtils.isNotEmpty(query.getRoleCode()), SystemRole::getRoleCode, query.getRoleCode())
                .likeRight(ObjectUtils.isNotEmpty(query.getRoleName()), SystemRole::getRoleName, query.getRoleName());
        queryWrapper.orderByDesc("create_time");
        return baseMapper.selectPage(pageParams, queryWrapper);
    }

    /**
     * 查询列表
     *
     * @return
     */
    @Override
    public List<SystemRole> findList() {
        List<SystemRole> list = list(new QueryWrapper<>());
        return list;
    }

    /**
     * 添加角色
     *
     * @param role 角色
     * @return
     */
    @Override
    public SystemRole add(SystemRole role) {
        if (isExist(role.getRoleCode())) {
            throw new BaseException(String.format("%s编码已存在!", role.getRoleCode()));
        }
        if (role.getStatus() == null) {
            role.setStatus(SystemConstants.ENABLED);
        }
        if (role.getIsPersist() == null) {
            role.setIsPersist(SystemConstants.DISABLED);
        }
        role.setCreateTime(new Date());
        role.setUpdateTime(role.getCreateTime());
        save(role);
        return role;
    }

    /**
     * 更新角色
     *
     * @param role 角色
     * @return
     */
    @Override
    public SystemRole update(SystemRole role) {
        SystemRole saved = getById(role.getRoleId());
        if (role == null) {
            throw new BaseException("信息不存在!");
        }
        if (!saved.getRoleCode().equals(role.getRoleCode())) {
            // 和原来不一致重新检查唯一性
            if (isExist(role.getRoleCode())) {
                throw new BaseException(String.format("%s编码已存在!", role.getRoleCode()));
            }
        }
        role.setUpdateTime(new Date());
        updateById(role);
        return role;
    }

    /**
     * 删除角色
     *
     * @param roleId 角色ID
     * @return
     */
    @Override
    public void remove(Long roleId) {
        if (roleId == null) {
            return;
        }
        SystemRole role = getById(roleId);
        if (role != null && role.getIsPersist().equals(SystemConstants.ENABLED)) {
            throw new BaseException(String.format("默认数据,禁止删除"));
        }
        int count = getCountByRoleId(roleId);
        if (count > 0) {
            throw new BaseException("该角色下存在授权人员,禁止删除!");
        }
        removeById(roleId);
    }

    /**
     * 检测角色编码是否存在
     *
     * @param roleCode
     * @return
     */
    @Override
    public Boolean isExist(String roleCode) {
        if (StringUtil.isBlank(roleCode)) {
            throw new BaseException("roleCode不能为空!");
        }
        QueryWrapper<SystemRole> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRole::getRoleCode, roleCode);
        return count(queryWrapper) > 0;
    }

    /**
     * 用户添加角色
     *
     * @param userId
     * @param roles
     * @return
     */
    @Override
    public void saveRoles(Long userId, String... roles) {
        if (userId == null || roles == null) {
            return;
        }
        SystemUser user = systemUserService.getById(userId);
        if (user == null) {
            return;
        }
        if (CommonConstants.ROOT.equals(user.getUserName())) {
            throw new BaseException("默认用户无需分配!");
        }
        // 先清空,在添加
        removeRolesByUserId(userId);
        if (roles != null && roles.length > 0) {
            for (String roleId : roles) {
                SystemRoleUser roleUser = new SystemRoleUser();
                roleUser.setUserId(userId);
                roleUser.setRoleId(Long.parseLong(roleId));
                systemRoleUserMapper.insert(roleUser);
            }
            // 批量保存
        }
    }

    /**
     * 角色添加成员
     *
     * @param roleId
     * @param userIds
     */
    @Override
    public void saveUsers(Long roleId, String... userIds) {
        if (roleId == null || userIds == null) {
            return;
        }
        // 先清空,在添加
        removeUsersByRoleId(roleId);
        if (userIds != null && userIds.length > 0) {
            for (String userId : userIds) {
                SystemRoleUser roleUser = new SystemRoleUser();
                roleUser.setUserId(Long.parseLong(userId));
                roleUser.setRoleId(roleId);
                systemRoleUserMapper.insert(roleUser);
            }
            // 批量保存
        }
    }

    /**
     * 查询角色成员
     *
     * @return
     */
    @Override
    public List<SystemRoleUser> findUsersByRoleId(Long roleId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getRoleId, roleId);
        return systemRoleUserMapper.selectList(queryWrapper);
    }

    /**
     * 获取角色所有授权组员数量
     *
     * @param roleId
     * @return
     */
    @Override
    public int getCountByRoleId(Long roleId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getRoleId, roleId);
        int result = systemRoleUserMapper.selectCount(queryWrapper);
        return result;
    }

    /**
     * 获取组员角色数量
     *
     * @param userId
     * @return
     */
    @Override
    public int getCountByUserId(Long userId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getUserId, userId);
        int result = systemRoleUserMapper.selectCount(queryWrapper);
        return result;
    }

    /**
     * 移除角色所有组员
     *
     * @param roleId
     * @return
     */
    @Override
    public void removeUsersByRoleId(Long roleId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getRoleId, roleId);
        systemRoleUserMapper.delete(queryWrapper);
    }

    /**
     * 移除组员的所有角色
     *
     * @param userId
     * @return
     */
    @Override
    public void removeRolesByUserId(Long userId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getUserId, userId);
        systemRoleUserMapper.delete(queryWrapper);
    }

    /**
     * 检测是否存在
     *
     * @param userId
     * @param roleId
     * @return
     */
    @Override
    public Boolean isExist(Long userId, Long roleId) {
        QueryWrapper<SystemRoleUser> queryWrapper = new QueryWrapper();
        queryWrapper.lambda().eq(SystemRoleUser::getRoleId, roleId);
        queryWrapper.lambda().eq(SystemRoleUser::getUserId, userId);
        systemRoleUserMapper.delete(queryWrapper);
        int result = systemRoleUserMapper.selectCount(queryWrapper);
        return result > 0;
    }


    /**
     * 获取组员角色
     *
     * @param userId
     * @return
     */
    @Override
    public List<SystemRole> findRolesByUserId(Long userId) {
        List<SystemRole> roles = systemRoleUserMapper.selectUsersByRoleId(userId);
        return roles;
    }

    /**
     * 获取用户角色ID列表
     *
     * @param userId
     * @return
     */
    @Override
    public List<Long> findRoleIdsByUserId(Long userId) {
        return systemRoleUserMapper.selectUsersIdByRoleId(userId);
    }


}
