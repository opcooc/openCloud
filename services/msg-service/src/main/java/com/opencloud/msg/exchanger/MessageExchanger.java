package com.opencloud.msg.exchanger;


import com.opencloud.msg.client.model.BaseMessage;

/**
 * @author woodev
 */

public interface MessageExchanger {

    boolean support(Object message);

    boolean exchange(BaseMessage message);
}
