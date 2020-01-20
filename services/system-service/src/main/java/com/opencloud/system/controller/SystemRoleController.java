package com.opencloud.system.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.mybatis.base.controller.BaseController;
import com.opencloud.system.client.model.entity.SystemRole;
import com.opencloud.system.client.model.entity.SystemRoleUser;
import com.opencloud.system.client.service.ISystemRoleServiceClient;
import com.opencloud.system.service.SystemRoleService;
import io.swagger.annotations.Api;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author liuyadu
 */
@Api(tags = "系统角色管理")
@RestController
public class SystemRoleController extends BaseController<SystemRoleService, SystemRole> implements ISystemRoleServiceClient {

    /**
     * 获取角色列表
     *
     * @param map
     * @return
     */
    @GetMapping("/role")
    @Override
    public ResultBody<Page<SystemRole>> getPage(@RequestParam Map<String, Object> map) {
        return ResultBody.ok().data(bizService.findPage(new PageParams(map)));
    }

    /**
     * 获取角色列表
     *
     * @return
     */
    @GetMapping("/role/list")
    @Override
    public ResultBody<List<SystemRole>> getList() {
        return ResultBody.ok().data(bizService.findList());
    }

    /**
     * 获取角色详情
     */
    @GetMapping("/role/info")
    @Override
    public ResultBody<SystemRole> get(@RequestParam(value = "roleId") Long roleId) {
        SystemRole result = bizService.getById(roleId);
        return ResultBody.ok().data(result);
    }

    /**
     * 添加/修改角色
     *
     * @param systemRole
     * @return
     */
    @PostMapping("/role/save")
    @Override
    public ResultBody<Long> save(@RequestBody SystemRole systemRole) {
        if (systemRole.getRoleId() == null) {
            bizService.add(systemRole);
        } else {
            bizService.update(systemRole);
        }
        return ResultBody.ok();
    }

    /**
     * 删除角色
     *
     * @param roleId
     * @return
     */
    @PostMapping("/role/remove")
    @Override
    public ResultBody remove(@RequestParam(value = "roleId") Long roleId) {
        bizService.remove(roleId);
        return ResultBody.ok();
    }

    /**
     * 角色添加成员列表
     *
     * @param roleId
     * @param userIds
     * @return
     */
    @PostMapping("/role/save/users")
    @Override
    public ResultBody saveUsers(
            @RequestParam(value = "roleId") Long roleId,
            @RequestParam(value = "userIds", required = false) String userIds
    ) {
        bizService.saveUsers(roleId, userIds != null ? StringUtils.commaDelimitedListToStringArray(userIds) : null);
        return ResultBody.ok();
    }

    /**
     * 获取角色成员列表
     *
     * @param roleId
     * @return
     */
    @GetMapping("/role/users")
    @Override
    public ResultBody<List<SystemRoleUser>> getRoleUsers(@RequestParam(value = "roleId") Long roleId) {
        return ResultBody.ok().data(bizService.findUsersByRoleId(roleId));
    }

}
