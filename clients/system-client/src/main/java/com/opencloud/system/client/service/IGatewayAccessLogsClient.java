package com.opencloud.system.client.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.ResultBody;
import com.opencloud.system.client.model.entity.GatewayAccessLogs;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * @author liuyadu
 */
public interface IGatewayAccessLogsClient {

    /**
     * 获取服务列表
     *
     * @return
     */
    @GetMapping("/gateway/access/logs")
    ResultBody<Page<GatewayAccessLogs>> getPage(@RequestParam Map<String, Object> map);

}
