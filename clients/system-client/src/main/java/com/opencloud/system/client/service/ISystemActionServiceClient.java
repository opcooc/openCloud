package com.opencloud.system.client.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.ResultBody;
import com.opencloud.system.client.model.entity.SystemAction;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * @author liuyadu
 */
public interface ISystemActionServiceClient {

    /**
     * 获取功能操作列表
     * @param map
     * @return
     */
    @GetMapping("/action")
    ResultBody<Page<SystemAction>> getPage(@RequestParam Map<String, Object> map);

    /**
     * 获取功能按钮详情
     *
     * @param actionId
     * @return
     */
    @GetMapping("/action/info")
    ResultBody<SystemAction> get(@RequestParam("actionId") Long actionId);

    /**
     * 添加/修改功能按钮
     *
     * @param systemAction
     * @return
     */
    @PostMapping("/action/save")
    ResultBody<Long> save(@RequestBody SystemAction systemAction);

    /**
     * 移除功能按钮
     *
     * @param actionId
     * @return
     */
    @PostMapping("/action/remove")
    ResultBody remove(@RequestParam("actionId") Long actionId);
}
