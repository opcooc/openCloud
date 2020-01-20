package com.opencloud.system.controller;

import com.opencloud.common.constants.CommonConstants;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.mybatis.base.controller.BaseController;
import com.opencloud.common.security.BaseAuthority;
import com.opencloud.common.utils.RestUtil;
import com.opencloud.system.client.model.AuthorityApi;
import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.AuthorityResource;
import com.opencloud.system.client.model.entity.SystemAuthority;
import com.opencloud.system.client.model.entity.SystemAuthorityAction;
import com.opencloud.system.client.model.entity.SystemUser;
import com.opencloud.system.client.service.ISystemAuthorityServiceClient;
import com.opencloud.system.service.SystemAuthorityService;
import com.opencloud.system.service.SystemUserService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

/**
 * @author: liuyadu
 * @date: 2018/11/26 18:20
 * @description:
 */
@Api(tags = "系统权限管理")
@RestController
public class SystemAuthorityController extends BaseController<SystemAuthorityService, SystemAuthority> implements ISystemAuthorityServiceClient {

    @Autowired
    private SystemUserService systemUserService;
    @Autowired
    private RestUtil restUtil;

    /**
     * 获取所有访问权限列表
     */
    @GetMapping("/authority/access")
    @Override
    public ResultBody<List<AuthorityResource>> findAuthorityResource() {
        List<AuthorityResource> result = bizService.findAuthorityResource();
        return ResultBody.ok().data(result);
    }

    /**
     * 获取接口权限列表
     *
     * @param serviceId
     * @return
     */
    @GetMapping("/authority/api")
    @Override
    public ResultBody<List<AuthorityApi>> findAuthorityApi(
            @RequestParam(value = "serviceId", required = false) String serviceId
    ) {
        List<AuthorityApi> result = bizService.findAuthorityApi(serviceId);
        return ResultBody.ok().data(result);
    }

    /**
     * 获取菜单权限列表
     *
     * @return
     */
    @GetMapping("/authority/menu")
    @Override
    public ResultBody<List<AuthorityMenu>> findAuthorityMenu() {
        List<AuthorityMenu> result = bizService.findAuthorityMenu(1);
        return ResultBody.ok().data(result);
    }

    /**
     * 获取功能权限列表
     *
     * @param actionId
     * @return
     */
    @GetMapping("/authority/action")
    @Override
    public ResultBody<List<SystemAuthorityAction>> findAuthorityAction(
            @RequestParam(value = "actionId") Long actionId
    ) {
        List<SystemAuthorityAction> list = bizService.findAuthorityAction(actionId);
        return ResultBody.ok().data(list);
    }

    /**
     * 获取角色已分配权限
     *
     * @param roleId
     * @return
     */
    @GetMapping("/authority/role")
    @Override
    public ResultBody<List<BaseAuthority>> findAuthorityRole(@RequestParam(value = "roleId") Long roleId) {
        List<BaseAuthority> result = bizService.findAuthorityByRole(roleId);
        return ResultBody.ok().data(result);
    }

    /**
     * 获取用户菜单列表
     *
     * @param userId
     * @param root
     * @return
     */
    @GetMapping("/authority/user/menu")
    @Override
    public ResultBody<List<AuthorityMenu>> findAuthorityMenuByUser(@RequestParam(value = "userId") Long userId, @RequestParam(value = "root") Boolean root) {
        return ResultBody.ok().data(bizService.findAuthorityMenuByUser(userId, root));
    }

    /**
     * 获取用户已分配权限
     *
     * @param userId
     * @return
     */
    @GetMapping("/authority/user")
    @Override
    public ResultBody<List<BaseAuthority>> findAuthorityUser(
            @RequestParam(value = "userId") Long userId
    ) {
        SystemUser user = systemUserService.getById(userId);
        List<BaseAuthority> result = bizService.findAuthorityByUser(userId, CommonConstants.ROOT.equals(user.getUserName()));
        return ResultBody.ok().data(result);
    }

    /**
     * 获取应用已分配接口权限
     *
     * @param appId
     * @return
     */
    @GetMapping("/authority/app")
    @Override
    public ResultBody<List<BaseAuthority>> findAuthorityApp(
            @RequestParam(value = "appId") String appId
    ) {
        List<BaseAuthority> result = bizService.findAuthorityByApp(appId);
        return ResultBody.ok().data(result);
    }

    /**
     * 分配角色权限
     *
     * @param roleId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/role/grant")
    @Override
    public ResultBody grantAuthorityRole(
            @RequestParam(value = "roleId") Long roleId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    ) {
        bizService.addAuthorityRole(roleId, expireTime, authorityIds != null ? StringUtils.commaDelimitedListToStringArray(authorityIds) : null);
        restUtil.refreshGateway();
        return ResultBody.ok();
    }

    /**
     * 分配用户权限
     *
     * @param userId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/user/grant")
    @Override
    public ResultBody grantAuthorityUser(
            @RequestParam(value = "userId") Long userId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    ) {
        bizService.addAuthorityUser(userId, expireTime, authorityIds != null ? StringUtils.commaDelimitedListToStringArray(authorityIds) : null);
        restUtil.refreshGateway();
        return ResultBody.ok();
    }

    /**
     * 分配应用权限
     *
     * @param appId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/app/grant")
    @Override
    public ResultBody grantAuthorityApp(
            @RequestParam(value = "appId") String appId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    ) {
        bizService.addAuthorityApp(appId, expireTime, authorityIds != null ? StringUtils.commaDelimitedListToStringArray(authorityIds) : null);
        restUtil.refreshGateway();
        return ResultBody.ok();
    }

    /**
     * 功能按钮授权
     *
     * @param actionId
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/action/grant")
    @Override
    public ResultBody grantAuthorityAction(
            @RequestParam(value = "actionId") Long actionId,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    ) {
        bizService.addAuthorityAction(actionId, authorityIds != null ? StringUtils.commaDelimitedListToStringArray(authorityIds) : null);
        restUtil.refreshGateway();
        return ResultBody.ok();
    }


}
