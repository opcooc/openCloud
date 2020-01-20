package com.opencloud.zuul.filter;

import com.opencloud.common.constants.ErrorCode;
import com.opencloud.common.utils.WebUtil;
import com.opencloud.system.client.model.AuthorityResource;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 访问验证前置过滤器
 *
 * @author liuyadu
 */
@Slf4j
public class PreCheckFilter extends OncePerRequestFilter {

    private static final int DISABLED = 0;
    private static final int UPDATING = 2;

    private AccessDeniedHandler accessDeniedHandler;

    private AccessManager accessManager;

    public PreCheckFilter(AccessManager accessManager, AccessDeniedHandler accessDeniedHandler) {
        this.accessManager = accessManager;
        this.accessDeniedHandler = accessDeniedHandler;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String requestPath = accessManager.getRequestPath(request);
        String remoteIpAddress = WebUtil.getClientIP(request);
        String origin = request.getHeader(HttpHeaders.ORIGIN);
        AuthorityResource resource = accessManager.getResource(requestPath);
        if (resource != null) {
            // 资源状态验证
            if (DISABLED == resource.getStatus().intValue()) {
                // 禁用
                accessDeniedHandler.handle(request, response, new AccessDeniedException(ErrorCode.ACCESS_DENIED_DISABLED.getMessage()));
                return;
            } else if (UPDATING == resource.getStatus().intValue()) {
                // 维护中
                accessDeniedHandler.handle(request, response, new AccessDeniedException(ErrorCode.ACCESS_DENIED_UPDATING.getMessage()));
                return;
            }
        }

        // ip黑名单验证
        boolean deny = accessManager.matchIpOrOriginBlacklist(requestPath, remoteIpAddress, origin);
        if (deny) {
            // 拒绝
            accessDeniedHandler.handle(request, response, new AccessDeniedException(ErrorCode.ACCESS_DENIED_BLACK_LIMITED.getMessage()));
            return;
        }

        // ip白名单验证
        Boolean[] matchIpWhiteListResult = accessManager.matchIpOrOriginWhiteList(requestPath, remoteIpAddress, origin);
        Boolean hasWhiteList = matchIpWhiteListResult[0];
        Boolean allow = matchIpWhiteListResult[1];
        if (hasWhiteList) {
            // 接口存在白名单限制
            if (!allow) {
                accessDeniedHandler.handle(request, response, new AccessDeniedException(ErrorCode.ACCESS_DENIED_WHITE_LIMITED.getMessage()));
                return;
            }
        }
        filterChain.doFilter(request, response);
    }
}
