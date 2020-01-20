package com.opencloud.msg.service;

import com.opencloud.msg.client.model.SmsMessage;

/**
 * @author woodev
 */
public interface SmsSender {

	/**
	 * 发送短信
	 * @param parameter
	 * @return
	 */
	Boolean send(SmsMessage parameter);
}
