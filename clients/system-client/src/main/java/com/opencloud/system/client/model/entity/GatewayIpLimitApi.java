package com.opencloud.system.client.model.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.opencloud.common.mybatis.base.entity.AbstractEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * @author liuyadu
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@TableName("gateway_ip_limit_api")
public class GatewayIpLimitApi extends AbstractEntity {

    /**
     * 策略ID
     */
    private Long policyId;

    /**
     * 接口资源ID
     */
    private Long apiId;


    private static final long serialVersionUID = 1L;

    /**
     * 获取策略ID
     *
     * @return policy_id - 策略ID
     */
    public Long getPolicyId() {
        return policyId;
    }

    /**
     * 设置策略ID
     *
     * @param policyId 策略ID
     */
    public void setPolicyId(Long policyId) {
        this.policyId = policyId;
    }

    /**
     * 获取接口资源ID
     *
     * @return api_id - 接口资源ID
     */
    public Long getApiId() {
        return apiId;
    }

    /**
     * 设置接口资源ID
     *
     * @param apiId 接口资源ID
     */
    public void setApiId(Long apiId) {
        this.apiId = apiId;
    }
}
