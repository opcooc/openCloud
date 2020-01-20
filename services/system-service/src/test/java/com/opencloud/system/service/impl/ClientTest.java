package com.opencloud.system.service.impl;

import cn.hutool.core.util.RandomUtil;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

/**
 * @author: liuyadu
 * @date: 2019/4/25 11:15
 * @description:
 */
public class ClientTest {

    public static void main(String[] args) {


        PasswordEncoder encoder = new StandardPasswordEncoder();
        String apiKey = RandomUtil.randomString(24);
        String secretKey = RandomUtil.randomString(32);
        System.out.println("apiKey=" + apiKey);
        System.out.println("secretKey=" + secretKey);
        System.out.println("encodeSecretKey=" + encoder.encode(secretKey));


        RestTemplate restTemplate = new RestTemplate();

        // restTemplate.getInterceptors().add(new BasicAuthorizationInterceptor)
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.setContentType(MediaType.APPLICATION_FORM_URLENCODED);

        MultiValueMap<String, Object> postParameters = new LinkedMultiValueMap<>();
        postParameters.add("client_id","1556153880995");
        postParameters.add("client_secret", "ecac8f3b0876469d9d4ebc4dab811f03");
        postParameters.add("grant_type", "authorization_code");
        postParameters.add("code", "sv0gnx");
        postParameters.add("redirect_uri", "http://222.240.195.28:8080/risk-web/a/login");
        // 使用客户端的请求头,发起请求

        HttpEntity<MultiValueMap<String, Object> > requestEntity = new HttpEntity(postParameters, requestHeaders);

        String result = restTemplate.postForObject("http://39.106.187.125:8888/auth/oauth/token", requestEntity, String.class);
        System.out.println(result);
    }
}
