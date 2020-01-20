package com.opencloud.msg.service;


import com.baomidou.mybatisplus.core.metadata.IPage;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.IBaseService;
import com.opencloud.msg.client.model.entity.WebhookLogs;

/**
 * 异步通知日志接口
 *
 * @author: liuyadu
 * @date: 2019/2/13 14:39
 * @description:
 */
public interface WebhookService extends IBaseService<WebhookLogs> {
    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    IPage<WebhookLogs> findPage(PageParams pageParams);

}
