package com.opencloud.zuul.exception;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author liuyadu
 */
public interface SignatureDeniedHandler {
    /**
     * 签名异常处理
     * @param var1
     * @param var2
     * @param var3
     * @throws IOException
     * @throws ServletException
     */
    void handle(HttpServletRequest var1, HttpServletResponse var2, Exception var3) throws IOException, ServletException;
}
