package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.entity.GatewayRoute;

import java.util.List;

/**
 * 路由管理
 *
 * @author liuyadu
 */
public interface GatewayRouteService extends IBaseService<GatewayRoute> {
    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<GatewayRoute> findPage(PageParams pageParams);

    /**
     * 查询可用路由列表
     *
     * @return
     */
    List<GatewayRoute> findList();

    /**
     * 添加路由
     *
     * @param route
     */
    void add(GatewayRoute route);

    /**
     * 更新路由
     *
     * @param route
     */
    void update(GatewayRoute route);

    /**
     * 删除路由
     *
     * @param routeId
     */
    void remove(Long routeId);

    /**
     * 是否存在
     *
     * @param routeName
     * @return
     */
    Boolean isExist(String routeName);
}
