package com.opencloud.admin.service.feign;

import com.opencloud.msg.client.constatns.MsgConstants;
import com.opencloud.msg.client.service.IWebhookServiceClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;

/**
 * @author: liuyadu
 * @date: 2018/10/24 16:49
 * @description:
 */
@Component
@FeignClient(value = MsgConstants.MSG_SERVICE)
public interface WebhookServiceClient extends IWebhookServiceClient {


}
