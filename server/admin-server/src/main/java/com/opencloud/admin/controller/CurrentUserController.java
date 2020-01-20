package com.opencloud.admin.controller;

import com.opencloud.admin.service.feign.SystemAuthorityServiceClient;
import com.opencloud.admin.service.feign.SystemUserServiceClient;
import com.opencloud.common.constants.CommonConstants;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.security.SecurityHelper;
import com.opencloud.common.security.BaseUserDetails;
import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.entity.SystemUser;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author: liuyadu
 * @date: 2019/5/24 13:31
 * @description:
 */
@Api(tags = "当前登陆用户")
@RestController
public class CurrentUserController {

    @Autowired
    private SystemUserServiceClient systemUserServiceClient;
    @Autowired
    private SystemAuthorityServiceClient systemAuthorityServiceClient;
    @Autowired
    private RedisTokenStore redisTokenStore;
    /**
     * 修改当前登录用户密码
     *
     * @return
     */
    @ApiOperation(value = "修改当前登录用户密码", notes = "修改当前登录用户密码")
    @GetMapping("/current/user/rest/password")
    public ResultBody restPassword(@RequestParam(value = "password") String password) {
        systemUserServiceClient.updatePassword(SecurityHelper.getUser().getUserId(), password);
        return ResultBody.ok();
    }

    /**
     * 修改当前登录用户基本信息
     *
     * @param nickName
     * @param userDesc
     * @param avatar
     * @return
     */
    @ApiOperation(value = "修改当前登录用户基本信息", notes = "修改当前登录用户基本信息")
    @PostMapping("/current/user/update")
    public ResultBody updateUserInfo(
            @RequestParam(value = "nickName") String nickName,
            @RequestParam(value = "userDesc", required = false) String userDesc,
            @RequestParam(value = "avatar", required = false) String avatar
    ) {
        BaseUserDetails baseUserDetails = SecurityHelper.getUser();
        SystemUser user = new SystemUser();
        user.setUserId(baseUserDetails.getUserId());
        user.setNickName(nickName);
        user.setUserDesc(userDesc);
        user.setAvatar(avatar);
        systemUserServiceClient.save(user);
        baseUserDetails.setNickName(nickName);
        baseUserDetails.setAvatar(avatar);
        SecurityHelper.updateUser(redisTokenStore, baseUserDetails);
        return ResultBody.ok();
    }

    /**
     * 获取登陆用户已分配权限
     *
     * @return
     */
    @ApiOperation(value = "获取当前登录用户已分配菜单权限", notes = "获取当前登录用户已分配菜单权限")
    @GetMapping("/current/user/menu")
    public ResultBody<List<AuthorityMenu>> findAuthorityMenu() {
        return systemAuthorityServiceClient.findAuthorityMenuByUser(SecurityHelper.getUser().getUserId(), CommonConstants.ROOT.equals(SecurityHelper.getUser().getUsername()));
    }
}
