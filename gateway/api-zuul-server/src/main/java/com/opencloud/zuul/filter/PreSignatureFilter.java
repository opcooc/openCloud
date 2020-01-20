package com.opencloud.zuul.filter;

import cn.hutool.core.collection.ConcurrentHashSet;
import com.opencloud.common.constants.CommonConstants;
import com.opencloud.common.exception.BaseSignatureException;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.utils.SignatureUtil;
import com.opencloud.common.utils.WebUtil;
import com.opencloud.system.client.model.entity.SystemApp;
import com.opencloud.zuul.configuration.ApiProperties;
import com.opencloud.zuul.exception.JsonSignatureDeniedHandler;
import com.opencloud.zuul.service.feign.SystemAppServiceClient;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

/**
 * 数字验签前置过滤器
 *
 * @author: liuyadu
 * @date: 2018/11/28 18:26
 * @description:
 */
public class PreSignatureFilter extends OncePerRequestFilter {
    private JsonSignatureDeniedHandler signatureDeniedHandler;
    private SystemAppServiceClient systemAppServiceClient;
    private ApiProperties apiProperties;
    private static final AntPathMatcher pathMatch = new AntPathMatcher();
    private Set<String> signIgnores = new ConcurrentHashSet<>();

    public PreSignatureFilter(SystemAppServiceClient systemAppServiceClient, ApiProperties apiProperties, JsonSignatureDeniedHandler jsonSignatureDeniedHandler) {
        this.systemAppServiceClient = systemAppServiceClient;
        this.apiProperties = apiProperties;
        this.signatureDeniedHandler = jsonSignatureDeniedHandler;
        // 默认忽略签名
        signIgnores.add("/");
        signIgnores.add("/error");
        signIgnores.add("/favicon.ico");
        signIgnores.add("/actuator/**");
        if (apiProperties != null) {
            if (apiProperties.getSignIgnores() != null) {
                signIgnores.addAll(apiProperties.getSignIgnores());
            }
            if (apiProperties.getApiDebug()) {
                signIgnores.add("/**/v2/api-docs/**");
                signIgnores.add("/**/swagger-resources/**");
                signIgnores.add("/webjars/**");
                signIgnores.add("/doc.html");
                signIgnores.add("/swagger-ui.html");
            }
        }
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        String requestPath = request.getRequestURI();
        if (apiProperties.getCheckSign() && !notSign(requestPath)) {
            try {
                Map params = WebUtil.getFormMap(request);
                // 验证请求参数
                SignatureUtil.validateParams(params);
                //开始验证签名
                if (systemAppServiceClient != null) {
                    String apiKey = params.get(CommonConstants.SIGN_API_KEY).toString();
                    // 获取客户端信息
                    ResultBody<SystemApp> resultBody = systemAppServiceClient.getByApiKey(apiKey);
                    SystemApp app = resultBody.getData();
                    if (app == null || app.getAppId() == null) {
                        throw new BaseSignatureException("无效的ApiKey");
                    }
                    // 服务器验证签名结果
                    if (!SignatureUtil.validateSign(params, app.getSecretKey())) {
                        throw new BaseSignatureException("签名验证失败!");
                    }
                }
            } catch (Exception ex) {
                signatureDeniedHandler.handle(request, response, ex);
                return;
            }
        }
        filterChain.doFilter(request, response);
    }

    protected boolean notSign(String requestPath) {
        if (apiProperties.getSignIgnores() == null) {
            return false;
        }
        for (String path : signIgnores) {
            if (pathMatch.match(path, requestPath)) {
                return true;
            }
        }
        return false;
    }
}
