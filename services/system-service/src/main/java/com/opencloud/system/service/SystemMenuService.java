package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.entity.SystemMenu;

import java.util.List;

/**
 * 菜单资源管理
 * @author liuyadu
 */
public interface SystemMenuService extends IBaseService<SystemMenu> {
    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<SystemMenu> findPage(PageParams pageParams);

    /**
     * 查询列表
     * @return
     */
    List<SystemMenu> findList();

    /**
     * 检查菜单编码是否存在
     *
     * @param menuCode
     * @return
     */
    Boolean isExist(String menuCode);


    /**
     * 添加菜单资源
     *
     * @param menu
     * @return
     */
    SystemMenu add(SystemMenu menu);

    /**
     * 修改菜单资源
     *
     * @param menu
     * @return
     */
    SystemMenu update(SystemMenu menu);

    /**
     * 移除菜单
     *
     * @param menuId
     * @return
     */
    void remove(Long menuId);
}
