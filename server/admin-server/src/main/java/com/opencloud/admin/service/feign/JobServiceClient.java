package com.opencloud.admin.service.feign;

import com.opencloud.job.client.constans.JobConstants;
import com.opencloud.job.client.service.IJobServiceClient;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;

/**
 * @author: liuyadu
 * @date: 2018/10/24 16:49
 * @description:
 */
@Component
@FeignClient(value = JobConstants.JOB_SERVICE)
public interface JobServiceClient extends IJobServiceClient {


}
