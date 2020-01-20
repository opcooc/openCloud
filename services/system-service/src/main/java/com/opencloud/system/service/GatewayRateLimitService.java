package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.RateLimitApi;
import com.opencloud.system.client.model.entity.GatewayRateLimit;
import com.opencloud.system.client.model.entity.GatewayRateLimitApi;

import java.util.List;

/**
 * 访问日志
 * @author liuyadu
 */
public interface GatewayRateLimitService extends IBaseService<GatewayRateLimit> {

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<GatewayRateLimit> findPage(PageParams pageParams);

    /**
     * 查询接口流量限制
     *
     * @return
     */
    List<RateLimitApi> findApiList();

    /**
     * 查询策略已绑定API列表
     *
     * @return
     */
    List<GatewayRateLimitApi> findApiList(Long policyId);

    /**
     * 删除限流策略
     *
     * @param policyId
     */
    void remove(Long policyId);

    /**
     * 绑定API, 一个API只能绑定一个策略
     *
     * @param policyId
     * @param apis
     */
    void saveApis(Long policyId, String... apis);

    /**
     * 清空绑定的API
     *
     * @param policyId
     */
    void clearByPolicyId(Long policyId);

    /**
     * API解除所有策略
     *
     * @param apiId
     */
    void clearByApiId(Long apiId);
}
