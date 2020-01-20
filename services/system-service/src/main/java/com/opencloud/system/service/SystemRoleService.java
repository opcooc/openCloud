package com.opencloud.system.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.system.client.model.entity.SystemRole;
import com.opencloud.system.client.model.entity.SystemRoleUser;

import java.util.List;

/**
 * 角色管理
 *
 * @author liuyadu
 */
public interface SystemRoleService extends IBaseService<SystemRole> {

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<SystemRole> findPage(PageParams pageParams);

    /**
     * 查询列表
     *
     * @return
     */
    List<SystemRole> findList();

    /**
     * 添加角色
     *
     * @param role 角色
     * @return
     */
    SystemRole add(SystemRole role);

    /**
     * 更新角色
     *
     * @param role 角色
     * @return
     */
    SystemRole update(SystemRole role);

    /**
     * 删除角色
     *
     * @param roleId 角色ID
     * @return
     */
    void remove(Long roleId);

    /**
     * 检测角色编码是否存在
     *
     * @param roleCode
     * @return
     */
    Boolean isExist(String roleCode);

    /**
     * 用户添加角色
     *
     * @param userId
     * @param roles
     * @return
     */
    void saveRoles(Long userId, String... roles);

    /**
     * 角色添加成员
     *
     * @param roleId
     * @param userIds
     */
    void saveUsers(Long roleId, String... userIds);

    /**
     * 查询角色成员
     * @param roleId
     * @return
     */
    List<SystemRoleUser> findUsersByRoleId(Long roleId);

    /**
     * 获取角色所有授权组员数量
     *
     * @param roleId
     * @return
     */
    int getCountByRoleId(Long roleId);

    /**
     * 获取组员角色数量
     *
     * @param userId
     * @return
     */
    int getCountByUserId(Long userId);

    /**
     * 移除角色所有组员
     *
     * @param roleId
     * @return
     */
    void removeUsersByRoleId(Long roleId);

    /**
     * 移除组员的所有角色
     *
     * @param userId
     * @return
     */
    void removeRolesByUserId(Long userId);

    /**
     * 检测是否存在
     *
     * @param userId
     * @param roleId
     * @return
     */
    Boolean isExist(Long userId, Long roleId);

    /**
     * 获取用户角色列表
     *
     * @param userId
     * @return
     */
    List<SystemRole> findRolesByUserId(Long userId);

    /**
     * 获取用户角色ID列表
     *
     * @param userId
     * @return
     */
    List<Long> findRoleIdsByUserId(Long userId);
}
