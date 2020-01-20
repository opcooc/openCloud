package com.opencloud.system.mapper;

import com.opencloud.system.client.model.AuthorityResource;
import com.opencloud.system.client.model.AuthorityAction;
import com.opencloud.system.client.model.AuthorityApi;
import com.opencloud.system.client.model.AuthorityMenu;
import com.opencloud.system.client.model.entity.SystemAuthority;
import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import com.opencloud.common.security.BaseAuthority;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * @author liuyadu
 */
@Repository
public interface SystemAuthorityMapper extends SuperMapper<SystemAuthority> {

    /**
     * 查询所有资源授权列表
     * @return
     */
    List<AuthorityResource> selectAllAuthorityResource();

    /**
     * 查询已授权权限列表
     *
     * @param map
     * @return
     */
    List<BaseAuthority> selectAuthorityAll(Map map);


    /**
     * 获取菜单权限
     *
     * @param map
     * @return
     */
    List<AuthorityMenu> selectAuthorityMenu(Map map);

    /**
     * 获取操作权限
     *
     * @param map
     * @return
     */
    List<AuthorityAction> selectAuthorityAction(Map map);

    /**
     * 获取API权限
     *
     * @param map
     * @return
     */
    List<AuthorityApi> selectAuthorityApi(Map map);


}
