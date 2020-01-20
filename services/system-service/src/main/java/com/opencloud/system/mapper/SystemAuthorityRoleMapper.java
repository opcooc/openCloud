package com.opencloud.system.mapper;

import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.entity.SystemAuthorityRole;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import com.opencloud.common.security.BaseAuthority;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author liuyadu
 */
@Repository
public interface SystemAuthorityRoleMapper extends SuperMapper<SystemAuthorityRole> {

    /**
     * 获取角色已授权权限
     *
     * @param roleId
     * @return
     */
    List<BaseAuthority> selectAuthorityByRole(@Param("roleId") Long roleId);

    /**
     * 获取角色菜单权限
     *
     * @param roleId
     * @return
     */
    List<AuthorityMenu> selectAuthorityMenuByRole(@Param("roleId") Long roleId);
}
