package com.opencloud.zuul.exception;

import com.opencloud.common.exception.GlobalExceptionHandler;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.utils.WebUtil;
import com.opencloud.zuul.service.AccessLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 网关认证异常处理,记录日志
 * @author liuyadu
 */
@Slf4j
public class JsonAuthenticationEntryPoint implements AuthenticationEntryPoint {
    private AccessLogService accessLogService;

    public JsonAuthenticationEntryPoint(AccessLogService accessLogService) {
        this.accessLogService = accessLogService;
    }

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
                         AuthenticationException exception) throws IOException, ServletException {
        ResultBody resultBody = GlobalExceptionHandler.resolveException(exception,request.getRequestURI());
        response.setStatus(resultBody.getHttpStatus());
        // 保存日志
        accessLogService.sendLog(request, response,exception);
        WebUtil.writeJson(response, resultBody);
    }
}
