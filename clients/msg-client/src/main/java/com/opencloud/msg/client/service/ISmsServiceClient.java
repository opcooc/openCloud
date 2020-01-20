package com.opencloud.msg.client.service;

import com.opencloud.common.model.ResultBody;
import com.opencloud.msg.client.model.SmsMessage;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * 推送通知
 * @author woodev
 */
public interface ISmsServiceClient {
    /**
     * 短信通知
     * @param message
     * @return
     */
    @ApiOperation("发送短信")
    @PostMapping("/sms/send")
    ResultBody<String> send(
            SmsMessage message
    );

}
