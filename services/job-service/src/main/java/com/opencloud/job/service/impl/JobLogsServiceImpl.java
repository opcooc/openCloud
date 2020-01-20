package com.opencloud.job.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.ObjectUtils;
import com.opencloud.common.model.PageParams;
import com.opencloud.common.mybatis.base.service.impl.BaseServiceImpl;
import com.opencloud.job.client.model.entity.JobLogs;
import com.opencloud.job.mapper.JobLogsMapper;
import com.opencloud.job.service.JobLogsService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author liuyadu
 */
@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class JobLogsServiceImpl extends BaseServiceImpl<JobLogsMapper, JobLogs> implements JobLogsService {

    /**
     * 分页查询
     *
     * @param pageParams
     * @return
     */
    @Override
    public IPage<JobLogs> findPage(PageParams pageParams) {
        JobLogs query = pageParams.mapToBean(JobLogs.class);
        QueryWrapper<JobLogs> queryWrapper = new QueryWrapper();
        queryWrapper.lambda()
                .likeRight(ObjectUtils.isNotEmpty(query.getJobName()), JobLogs::getJobName, query.getJobName());
        queryWrapper.orderByDesc("create_time");
        return baseMapper.selectPage(pageParams,queryWrapper);
    }
}
