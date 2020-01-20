package com.opencloud.zuul.exception;

import com.opencloud.common.exception.GlobalExceptionHandler;
import com.opencloud.common.model.ResultBody;
import com.opencloud.common.utils.WebUtil;
import com.opencloud.zuul.service.AccessLogService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 网关权限异常处理,记录日志
 * @author liuyadu
 */
@Slf4j
public class JsonAccessDeniedHandler implements AccessDeniedHandler {
    private AccessLogService accessLogService;

    public JsonAccessDeniedHandler(AccessLogService accessLogService) {
        this.accessLogService = accessLogService;
    }

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response,
                       AccessDeniedException exception) throws IOException, ServletException {
        ResultBody resultBody = GlobalExceptionHandler.resolveException(exception,request.getRequestURI());
        response.setStatus(resultBody.getHttpStatus());
        // 保存日志
        accessLogService.sendLog(request, response,exception);
        WebUtil.writeJson(response, resultBody);
    }
}
