package com.opencloud.gateway.exception;

import com.opencloud.common.exception.BaseSignatureException;
import org.springframework.web.server.ServerWebExchange;
import reactor.core.publisher.Mono;

/**
 * @author LYD
 */
public interface ServerSignatureDeniedHandler {
    /**
     * 签名异常处理
     * @param var1
     * @param var2
     * @return
     */
    Mono<Void> handle(ServerWebExchange var1, BaseSignatureException var2);
}
