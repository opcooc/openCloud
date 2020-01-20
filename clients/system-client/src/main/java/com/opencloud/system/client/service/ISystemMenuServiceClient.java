package com.opencloud.system.client.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.ResultBody;
import com.opencloud.system.client.model.entity.SystemAction;
import com.opencloud.system.client.model.entity.SystemMenu;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * @author liuyadu
 */
 public interface ISystemMenuServiceClient {
    /**
     * 获取菜单列表
     * @param map
     * @return
     */
    @GetMapping("/menu")
    ResultBody<Page<SystemMenu>> getPage(@RequestParam Map<String, Object> map);

    /**
     * 获取菜单列表
     * @return
     */
    @GetMapping("/menu/list")
    ResultBody<List<SystemMenu>> getList();

    /**
     * 获取菜单下所有操作
     * @param menuId
     * @return
     */
    @GetMapping("/menu/action")
    ResultBody<List<SystemAction>> getMenuAction(@RequestParam("menuId") Long menuId);

    /**
     * 获取菜单信息详情
     * @param menuId
     * @return
     */
    @GetMapping("/menu/info")
    ResultBody<SystemMenu> get(@RequestParam("menuId") Long menuId);

    /**
     * 添加/修改菜单信息
     * @param systemMenu
     * @return
     */
    @PostMapping(value = "/menu/save")
    ResultBody<Long> save(@RequestBody SystemMenu systemMenu);

    /**
     * 移除菜单信息
     * @param menuId
     * @return
     */
    @PostMapping("/menu/remove")
    ResultBody<Boolean> remove(@RequestParam("menuId") Long menuId);
}
