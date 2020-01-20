package com.opencloud.system.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.mybatis.base.controller.BaseController;
import com.opencloud.common.utils.RestUtil;
import com.opencloud.system.client.model.entity.SystemAction;
import com.opencloud.system.client.service.ISystemActionServiceClient;
import com.opencloud.system.service.SystemActionService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * @author liuyadu
 */
@Api(tags = "系统功能按钮")
@RestController
public class SystemActionController extends BaseController<SystemActionService, SystemAction> implements ISystemActionServiceClient {

    @Autowired
    private RestUtil restUtil;

    /**
     * 获取功能操作列表
     *
     * @param map
     * @return
     */
    @GetMapping("/action")
    @Override
    public ResultBody<Page<SystemAction>> getPage(@RequestParam Map<String, Object> map) {
        return ResultBody.ok().data(bizService.findPage(new PageParams(map)));
    }

    /**
     * 获取功能按钮详情
     *
     * @param actionId
     * @return
     */
    @GetMapping("/action/info")
    @Override
    public ResultBody<SystemAction> get(@RequestParam("actionId") Long actionId) {
        return ResultBody.ok().data(bizService.getById(actionId));
    }

    /**
     * 添加/修改功能按钮
     *
     * @param systemAction
     * @return
     */
    @PostMapping("/action/save")
    @Override
    public ResultBody<Long> save(@RequestBody SystemAction systemAction) {
        if (systemAction.getActionId() == null) {
            bizService.add(systemAction);
        } else {
            bizService.update(systemAction);
        }
        restUtil.refreshGateway();
        return ResultBody.ok();
    }

    /**
     * 移除功能按钮
     *
     * @param actionId
     * @return
     */
    @PostMapping("/action/remove")
    @Override
    public ResultBody remove(@RequestParam("actionId") Long actionId) {
        bizService.remove(actionId);
        // 刷新网关
        restUtil.refreshGateway();
        return ResultBody.ok();
    }
}
