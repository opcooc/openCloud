package com.opencloud.system.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.mybatis.base.controller.BaseController;
import com.opencloud.system.client.model.entity.GatewayAccessLogs;
import com.opencloud.system.client.service.IGatewayAccessLogsClient;
import com.opencloud.system.service.GatewayAccessLogsService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * 网关日志
 *
 * @author: liuyadu
 * @date: 2019/3/12 15:12
 * @description:
 */
@RestController
public class GatewayAccessLogsController extends BaseController<GatewayAccessLogsService, GatewayAccessLogs> implements IGatewayAccessLogsClient {

    /**
     * 获取服务列表
     *
     * @return
     */
    @GetMapping("/gateway/access/logs")
    @Override
    public ResultBody<Page<GatewayAccessLogs>> getPage(@RequestParam Map<String, Object> map) {
        return ResultBody.ok().data(bizService.findPage(new PageParams(map)));
    }

}
