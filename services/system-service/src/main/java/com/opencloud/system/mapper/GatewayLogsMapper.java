package com.opencloud.system.mapper;

import com.opencloud.system.client.model.entity.GatewayAccessLogs;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import org.springframework.stereotype.Repository;

/**
 * @author liuyadu
 */
@Repository
public interface GatewayLogsMapper extends SuperMapper<GatewayAccessLogs> {
}
