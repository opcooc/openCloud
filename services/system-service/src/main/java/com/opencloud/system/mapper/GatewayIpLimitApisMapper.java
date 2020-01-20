package com.opencloud.system.mapper;

import com.opencloud.system.client.model.IpLimitApi;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import com.opencloud.system.client.model.entity.GatewayIpLimitApi;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author liuyadu
 */
@Repository
public interface GatewayIpLimitApisMapper extends SuperMapper<GatewayIpLimitApi> {

    List<IpLimitApi> selectIpLimitApi(@Param("policyType") int policyType);
}
