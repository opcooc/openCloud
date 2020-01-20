package com.opencloud.system.controller;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.opencloud.common.model.ResultBody;
import com.opencloud.system.client.model.IpLimitApi;
import com.opencloud.system.client.model.RateLimitApi;
import com.opencloud.system.client.model.entity.GatewayRoute;
import com.opencloud.system.client.service.IGatewayServiceClient;
import com.opencloud.system.service.GatewayIpLimitService;
import com.opencloud.system.service.GatewayRateLimitService;
import com.opencloud.system.service.GatewayRouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * 网关接口
 *
 * @author: liuyadu
 * @date: 2019/3/12 15:12
 * @description:
 */
@RestController
public class GatewayController implements IGatewayServiceClient {

    @Autowired
    private GatewayIpLimitService gatewayIpLimitService;
    @Autowired
    private GatewayRateLimitService gatewayRateLimitService;
    @Autowired
    private GatewayRouteService gatewayRouteService;

    /**
     * 获取服务列表
     *
     * @return
     */
    @GetMapping("/gateway/service/list")
    @Override
    public ResultBody getServiceList() {
        List<Map> services = Lists.newArrayList();
        List<GatewayRoute> routes = gatewayRouteService.findList();
        if (routes != null && routes.size() > 0) {
            routes.forEach(route -> {
                Map service = Maps.newHashMap();
                service.put("serviceId", route.getRouteName());
                service.put("serviceName", route.getRouteDesc());
                services.add(service);
            });
        }
        return ResultBody.ok().data(services);
    }

    /**
     * 获取黑名单接口列表
     *
     * @return
     */
    @GetMapping("/gateway/api/blackList")
    @Override
    public ResultBody<List<IpLimitApi>> getBlackApiList() {
        return ResultBody.ok().data(gatewayIpLimitService.findBlackList());
    }


    /**
     * 获取白名单接口列表
     *
     * @return
     */
    @GetMapping("/gateway/api/whiteList")
    @Override
    public ResultBody<List<IpLimitApi>> getWhiteApiList() {
        return ResultBody.ok().data(gatewayIpLimitService.findWhiteList());
    }

    /**
     * 获取限流接口列表
     *
     * @return
     */
    @GetMapping("/gateway/api/rateLimit")
    @Override
    public ResultBody<List<RateLimitApi>> getRateLimitApiList() {
        return ResultBody.ok().data(gatewayRateLimitService.findApiList());
    }

    /**
     * 获取路由列表
     *
     * @return
     */
    @GetMapping("/gateway/api/route")
    @Override
    public ResultBody<List<GatewayRoute>> getRouteList() {
        return ResultBody.ok().data(gatewayRouteService.findList());
    }
}
