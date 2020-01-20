package com.opencloud.system.client.service;

import com.opencloud.common.model.ResultBody;
import com.opencloud.common.security.BaseAuthority;
import com.opencloud.system.client.model.AuthorityApi;
import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.AuthorityResource;
import com.opencloud.system.client.model.entity.SystemAuthorityAction;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Date;
import java.util.List;

/**
 * 权限控制API接口
 *
 * @author liuyadu
 */
public interface ISystemAuthorityServiceClient {
    /**
     * 获取所有访问权限列表
     */
    @GetMapping("/authority/access")
    ResultBody<List<AuthorityResource>> findAuthorityResource();

    /**
     * 获取接口权限列表
     *
     * @param serviceId
     * @return
     */
    @GetMapping("/authority/api")
    ResultBody<List<AuthorityApi>> findAuthorityApi(@RequestParam(value = "serviceId", required = false) String serviceId);

    /**
     * 获取菜单权限列表
     *
     * @return
     */
    @GetMapping("/authority/menu")
    ResultBody<List<AuthorityMenu>> findAuthorityMenu();

    /**
     * 获取功能权限列表
     *
     * @param actionId
     * @return
     */
    @GetMapping("/authority/action")
    ResultBody<List<SystemAuthorityAction>> findAuthorityAction(@RequestParam(value = "actionId") Long actionId);

    /**
     * 获取角色已分配权限
     *
     * @param roleId
     * @return
     */
    @GetMapping("/authority/role")
    ResultBody<List<BaseAuthority>> findAuthorityRole(@RequestParam(value = "roleId") Long roleId);


    /**
     * 获取用户菜单列表
     * @param userId
     * @param root
     * @return
     */
    @GetMapping("/authority/user/menu")
    ResultBody<List<AuthorityMenu>> findAuthorityMenuByUser(@RequestParam(value = "userId") Long userId, @RequestParam(value = "root")  Boolean root);

    /**
     * 获取用户已分配权限
     *
     * @param userId
     * @return
     */
    @GetMapping("/authority/user")
    ResultBody<List<BaseAuthority>> findAuthorityUser(@RequestParam(value = "userId") Long userId);

    /**
     * 获取应用已分配接口权限
     *
     * @param appId
     * @return
     */
    @GetMapping("/authority/app")
    ResultBody<List<BaseAuthority>> findAuthorityApp(@RequestParam(value = "appId") String appId);

    /**
     * 分配角色权限
     *
     * @param roleId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/role/grant")
    ResultBody grantAuthorityRole(
            @RequestParam(value = "roleId") Long roleId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    );

    /**
     * 分配用户权限
     *
     * @param userId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/user/grant")
    ResultBody grantAuthorityUser(
            @RequestParam(value = "userId") Long userId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    );

    /**
     * 分配应用权限
     *
     * @param appId
     * @param expireTime
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/app/grant")
    ResultBody grantAuthorityApp(
            @RequestParam(value = "appId") String appId,
            @RequestParam(value = "expireTime", required = false) @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date expireTime,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    );

    /**
     * 功能按钮授权
     *
     * @param actionId
     * @param authorityIds
     * @return
     */
    @PostMapping("/authority/action/grant")
    ResultBody grantAuthorityAction(
            @RequestParam(value = "actionId") Long actionId,
            @RequestParam(value = "authorityIds", required = false) String authorityIds
    );
}
