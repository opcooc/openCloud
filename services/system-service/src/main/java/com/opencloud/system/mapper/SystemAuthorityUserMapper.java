package com.opencloud.system.mapper;

import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.entity.SystemAuthorityUser;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import com.opencloud.common.security.BaseAuthority;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author liuyadu
 */
@Repository
public interface SystemAuthorityUserMapper extends SuperMapper<SystemAuthorityUser> {

    /**
     * 获取用户已授权权限
     *
     * @param userId
     * @return
     */
    List<BaseAuthority> selectAuthorityByUser(@Param("userId") Long userId);

    /**
     * 获取用户已授权权限完整信息
     *
     * @param userId
     * @return
     */
    List<AuthorityMenu> selectAuthorityMenuByUser(@Param("userId") Long userId);
}
