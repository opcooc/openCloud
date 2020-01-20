package com.opencloud.bpm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;


/**
 * 工作流服务
 *
 * @author liuyadu
 */
@EnableFeignClients
@EnableDiscoveryClient
@SpringBootApplication(exclude = {org.activiti.spring.boot.SecurityAutoConfiguration.class})
public class BpmServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(BpmServiceApplication.class, args);
    }
}
