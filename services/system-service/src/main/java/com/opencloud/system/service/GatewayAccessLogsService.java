package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.entity.GatewayAccessLogs;

/**
 * 网关访问日志
 * @author liuyadu
 */
public interface GatewayAccessLogsService extends IBaseService<GatewayAccessLogs> {
    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<GatewayAccessLogs> findPage(PageParams pageParams);
}
