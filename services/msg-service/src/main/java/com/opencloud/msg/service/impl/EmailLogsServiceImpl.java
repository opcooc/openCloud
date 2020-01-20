package com.opencloud.msg.service.impl;

import com.opencloud.common.mybatis.base.service.impl.BaseServiceImpl;
import com.opencloud.msg.client.model.entity.EmailLogs;
import com.opencloud.msg.mapper.EmailLogsMapper;
import com.opencloud.msg.service.EmailLogsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 邮件发送日志 服务实现类
 *
 * @author liuyadu
 * @date 2019-07-17
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class EmailLogsServiceImpl extends BaseServiceImpl<EmailLogsMapper, EmailLogs> implements EmailLogsService {

}
