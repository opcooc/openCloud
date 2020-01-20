package com.opencloud.system.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.mybatis.base.controller.BaseController;
import com.opencloud.common.utils.RestUtil;
import com.opencloud.system.client.model.entity.SystemAction;
import com.opencloud.system.client.model.entity.SystemMenu;
import com.opencloud.system.client.service.ISystemMenuServiceClient;
import com.opencloud.system.service.SystemActionService;
import com.opencloud.system.service.SystemMenuService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author liuyadu
 */
@Api(tags = "系统菜单信息管理")
@RestController
public class SystemMenuController extends BaseController<SystemMenuService, SystemMenu> implements ISystemMenuServiceClient {

    @Autowired
    private SystemActionService systemActionService;

    @Autowired
    private RestUtil restUtil;

    /**
     * 获取菜单列表
     *
     * @param map
     * @return
     */
    @GetMapping("/menu")
    @Override
    public ResultBody<Page<SystemMenu>> getPage(@RequestParam Map<String, Object> map) {
        return ResultBody.ok().data(bizService.findPage(new PageParams(map)));
    }

    /**
     * 获取菜单列表
     *
     * @return
     */
    @GetMapping("/menu/list")
    @Override
    public ResultBody<List<SystemMenu>> getList() {
        return ResultBody.ok().data(bizService.findList());
    }

    /**
     * 获取菜单下所有操作
     *
     * @param menuId
     * @return
     */
    @GetMapping("/menu/action")
    @Override
    public ResultBody<List<SystemAction>> getMenuAction(@RequestParam("menuId") Long menuId) {
        return ResultBody.ok().data(systemActionService.findListByMenuId(menuId));
    }

    /**
     * 获取菜单信息详情
     *
     * @param menuId
     * @return
     */
    @GetMapping("/menu/info")
    @Override
    public ResultBody<SystemMenu> get(@RequestParam("menuId") Long menuId) {
        return ResultBody.ok().data(bizService.getById(menuId));
    }

    /**
     * 添加/修改菜单信息
     *
     * @param systemMenu
     * @return
     */
    @PostMapping(value = "/menu/save")
    @Override
    public ResultBody<Long> save(@RequestBody SystemMenu systemMenu) {
        if (systemMenu.getMenuId() == null) {
            bizService.add(systemMenu);
        } else {
            bizService.update(systemMenu);
        }
        return ResultBody.ok();
    }

    /**
     * 移除菜单信息
     *
     * @param menuId
     * @return
     */
    @PostMapping("/menu/remove")
    @Override
    public ResultBody<Boolean> remove(@RequestParam("menuId") Long menuId) {
        bizService.remove(menuId);
        restUtil.refreshGateway();
        return ResultBody.ok();
    }
}
