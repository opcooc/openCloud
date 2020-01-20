package com.opencloud.system.mapper;

import com.opencloud.system.client.model.entity.SystemApi;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author liuyadu
 */
@Repository
public interface SystemApiMapper extends SuperMapper<SystemApi> {
    List<String> selectServiceList();
}
