package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.entity.SystemAction;

import java.util.List;

/**
 * 操作资源管理
 *
 * @author liuyadu
 */
public interface SystemActionService extends IBaseService<SystemAction> {
    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<SystemAction> findPage(PageParams pageParams);

    /**
     * 查询菜单下所有操作
     *
     * @param menuId
     * @return
     */
    List<SystemAction> findListByMenuId(Long menuId);

    /**
     * 检查操作编码是否存在
     *
     * @param actionCode
     * @return
     */
    Boolean isExist(String actionCode);


    /**
     * 添加操作资源
     *
     * @param action
     * @return
     */
    SystemAction add(SystemAction action);

    /**
     * 修改操作资源
     *
     * @param action
     * @return
     */
    SystemAction update(SystemAction action);

    /**
     * 移除操作
     *
     * @param actionId
     * @return
     */
    void remove(Long actionId);

    /**
     * 移除菜单相关资源
     *
     * @param menuId
     */
    void removeByMenuId(Long menuId);
}
