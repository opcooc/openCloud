package com.opencloud.job.mapper;

import com.opencloud.common.mybatis.base.mapper.SuperMapper;
import com.opencloud.job.client.model.entity.JobLogs;
import org.springframework.stereotype.Repository;

/**
 * @author LYD
 */
@Repository
public interface JobLogsMapper extends SuperMapper<JobLogs> {
}
