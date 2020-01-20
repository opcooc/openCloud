package com.opencloud.zuul.service.feign;

import com.opencloud.system.client.service.ISystemAppServiceClient;
import com.opencloud.system.client.constants.SystemConstants;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;

/**
 * @author: liuyadu
 * @date: 2018/10/24 16:49
 * @description:
 */
@Component
@FeignClient(value = SystemConstants.SYSTEM_SERVER)
public interface SystemAppServiceClient extends ISystemAppServiceClient {


}
