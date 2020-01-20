package com.opencloud.job.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.opencloud.common.exception.BaseException;
import com.opencloud.job.client.model.JobInfo;
import com.opencloud.job.client.model.entity.JobLogs;
import lombok.extern.slf4j.Slf4j;
import org.assertj.core.util.Lists;
import org.quartz.*;
import org.quartz.impl.matchers.GroupMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;

/**
 * 任务处理类
 *
 * @author liuyadu
 */
@Slf4j
@Service
public class JobService {

    @Autowired
    private Scheduler scheduler;
    @Autowired
    private JobLogsService jobLogsService;

    /**
     * 获取任务分组名称
     *
     * @return
     */
    public List<String> getJobGroupNames() {
        try {
            return scheduler.getJobGroupNames();
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
        return Lists.newArrayList();
    }

    /**
     * 获取任务列表
     *
     * @return
     */
    public List<JobInfo> getJobList() {
        List<JobInfo> list = new ArrayList<>();
        try {
            for (String groupJob : getJobGroupNames()) {
                for (JobKey jobKey : scheduler.getJobKeys(GroupMatcher.<JobKey>groupEquals(groupJob))) {
                    List<? extends Trigger> triggers = scheduler.getTriggersOfJob(jobKey);
                    for (Trigger trigger : triggers) {
                        Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());
                        JobDetail jobDetail = scheduler.getJobDetail(jobKey);
                        String cronExpression = "";
                        Date createTime = null;
                        Long repeatInterval = 0L;
                        Integer repeatCount = 0;
                        Date startDate = null;
                        Date endDate = null;
                        if (trigger instanceof CronTrigger) {
                            CronTrigger cronTrigger = (CronTrigger) trigger;
                            cronExpression = cronTrigger.getCronExpression();
                        } else if (trigger instanceof SimpleTrigger) {
                            SimpleTrigger simpleTrigger = (SimpleTrigger) trigger;
                            repeatInterval = simpleTrigger.getRepeatInterval();
                            repeatCount = simpleTrigger.getRepeatCount();
                            startDate = simpleTrigger.getStartTime();
                            endDate = simpleTrigger.getEndTime();
                        }
                        JobInfo info = new JobInfo();
                        info.setData(jobDetail.getJobDataMap());
                        info.setJobName(jobKey.getName());
                        info.setJobTrigger(trigger.getClass().getName());
                        info.setJobGroupName(jobKey.getGroup());
                        info.setJobClassName(jobDetail.getJobClass().getName());
                        info.setJobDescription(jobDetail.getDescription());
                        info.setJobStatus(triggerState.name());
                        info.setCronExpression(cronExpression);
                        info.setCreateTime(createTime);
                        info.setRepeatInterval(repeatInterval);
                        info.setRepeatCount(repeatCount);
                        info.setStartDate(startDate);
                        info.setEndDate(endDate);
                        list.add(info);
                    }
                }
            }
        } catch (SchedulerException e) {
            e.printStackTrace();
        }
        return list;
    }

    /**
     * 添加简单任务
     *
     * @param info
     */
    public void addSimpleJob(JobInfo info) {
        String jobName = info.getJobName();
        String jobClassName = info.getJobClassName();
        String jobGroupName = info.getJobGroupName();
        String jobDescription = info.getJobDescription();
        Date createTime = new Date();
        JobDataMap dataMap = new JobDataMap();
        if (info.getData() != null) {
            dataMap.putAll(info.getData());
        }
        dataMap.put("createTime", createTime);
        try {
            // 触发器的key值
            TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroupName);
            // job的key值
            JobKey jobKey = JobKey.jobKey(jobName, jobGroupName);
            if (checkExists(jobName, jobGroupName)) {
                throw new BaseException(String.format("任务已经存在, jobName:[%s],jobGroup:[%s]", jobName, jobGroupName));
            }
            /* 简单调度 */
            SimpleTrigger trigger = TriggerBuilder
                    .newTrigger()
                    .withIdentity(triggerKey)
                    .startAt(info.getStartDate())
                    .withSchedule(
                            SimpleScheduleBuilder.simpleSchedule()
                                    .withIntervalInMilliseconds(info.getRepeatInterval())
                                    .withRepeatCount(info.getRepeatCount()))
                    .endAt(info.getEndDate()).build();
            Class<? extends Job> clazz = (Class<? extends Job>) Class
                    .forName(jobClassName);
            JobDetail jobDetail = JobBuilder.newJob(clazz).withIdentity(jobKey)
                    .withDescription(jobDescription).usingJobData(dataMap).build();
            scheduler.scheduleJob(jobDetail, trigger);
        } catch (SchedulerException | ClassNotFoundException e) {
            throw new BaseException("任务添加失败");
        }
    }

    /**
     * 添加cron表达式任务
     *
     * @param info
     */
    public void addCronJob(JobInfo info) {
        String jobName = info.getJobName();
        String jobClassName = info.getJobClassName();
        String jobGroupName = info.getJobGroupName();
        String jobDescription = info.getJobDescription();
        String cronExpression = info.getCronExpression();
        Date createTime = new Date();
        JobDataMap dataMap = new JobDataMap();
        if (info.getData() != null) {
            dataMap.putAll(info.getData());
        }
        dataMap.put("createTime", createTime);
        try {
            if (checkExists(jobName, jobGroupName)) {
                throw new BaseException(String.format("任务已经存在, jobName:[%s],jobGroup:[%s]", jobName, jobGroupName));
            }
            TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroupName);
            JobKey jobKey = JobKey.jobKey(jobName, jobGroupName);
            CronScheduleBuilder schedBuilder = CronScheduleBuilder
                    .cronSchedule(cronExpression)
                    .withMisfireHandlingInstructionDoNothing();
            CronTrigger trigger = TriggerBuilder.newTrigger()
                    .withIdentity(triggerKey)
                    .withSchedule(schedBuilder).build();

            Class<? extends Job> clazz = (Class<? extends Job>) Class
                    .forName(jobClassName);
            JobDetail jobDetail = JobBuilder.newJob(clazz).withIdentity(jobKey)
                    .withDescription(jobDescription).usingJobData(dataMap).build();
            scheduler.scheduleJob(jobDetail, trigger);
        } catch (SchedulerException | ClassNotFoundException e) {
            throw new BaseException("任务添加失败");
        }
    }

    public void editSimpleJob(JobInfo info) {
        String jobName = info.getJobName();
        String jobGroupName = info.getJobGroupName();
        String jobDescription = info.getJobDescription();
        JobDataMap dataMap = new JobDataMap();
        if (info.getData() != null) {
            dataMap.putAll(info.getData());
        }
        try {
            if (!checkExists(jobName, jobGroupName)) {
                throw new BaseException(
                        String.format("Job不存在, jobName:{%s},jobGroup:{%s}",
                                jobName, jobGroupName));
            }
            TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroupName);
            JobKey jobKey = new JobKey(jobName, jobGroupName);
            /* 简单调度 */
            SimpleTrigger trigger = TriggerBuilder
                    .newTrigger()
                    .withIdentity(triggerKey)
                    .startAt(info.getStartDate())
                    .withSchedule(
                            SimpleScheduleBuilder.simpleSchedule()
                                    .withIntervalInMilliseconds(info.getRepeatInterval())
                                    .withRepeatCount(info.getRepeatCount()))
                    .endAt(info.getEndDate()).build();
            JobDetail jobDetail = scheduler.getJobDetail(jobKey);
            jobDetail = jobDetail.getJobBuilder().withDescription(jobDescription).usingJobData(dataMap).build();
            HashSet<Trigger> triggerSet = new HashSet<>();
            triggerSet.add(trigger);
            scheduler.scheduleJob(jobDetail, triggerSet, true);
        } catch (SchedulerException e) {
            throw new BaseException("任务修改失败");
        }
    }

    /**
     * 修改定时任务
     *
     * @param info
     */
    public void editCronJob(JobInfo info) {
        String jobName = info.getJobName();
        String jobGroupName = info.getJobGroupName();
        String jobDescription = info.getJobDescription();
        String cronExpression = info.getCronExpression();
        JobDataMap dataMap = new JobDataMap();
        if (info.getData() != null) {
            dataMap.putAll(info.getData());
        }
        try {
            if (!checkExists(jobName, jobGroupName)) {
                throw new BaseException(
                        String.format("Job不存在, jobName:{%s},jobGroup:{%s}",
                                jobName, jobGroupName));
            }
            TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroupName);
            JobKey jobKey = new JobKey(jobName, jobGroupName);
            CronScheduleBuilder cronScheduleBuilder = CronScheduleBuilder
                    .cronSchedule(cronExpression)
                    .withMisfireHandlingInstructionDoNothing();
            CronTrigger cronTrigger = TriggerBuilder.newTrigger()
                    .withIdentity(triggerKey)
                    .withSchedule(cronScheduleBuilder).build();
            JobDetail jobDetail = scheduler.getJobDetail(jobKey);
            jobDetail = jobDetail.getJobBuilder().withDescription(jobDescription).usingJobData(dataMap).build();
            HashSet<Trigger> triggerSet = new HashSet<>();
            triggerSet.add(cronTrigger);
            scheduler.scheduleJob(jobDetail, triggerSet, true);
        } catch (SchedulerException e) {
            throw new BaseException("类名不存在或执行表达式错误");
        }
    }

    /**
     * 删除定时任务
     *
     * @param jobName
     * @param jobGroup
     */
    public void deleteJob(String jobName, String jobGroup) {
        TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroup);
        try {
            if (checkExists(jobName, jobGroup)) {
                scheduler.pauseTrigger(triggerKey);
                scheduler.unscheduleJob(triggerKey);
                // 删除日志
                QueryWrapper<JobLogs> queryWrapper = new QueryWrapper();
                queryWrapper.lambda()
                        .eq(JobLogs::getJobName, jobName)
                        .eq(JobLogs::getJobGroup, jobGroup);
                jobLogsService.remove(queryWrapper);
            }
        } catch (SchedulerException e) {
            throw new BaseException(e.getMessage());
        }
    }

    /**
     * 暂停定时任务
     *
     * @param jobName
     * @param jobGroup
     */
    public void pauseJob(String jobName, String jobGroup) {
        TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroup);
        try {
            if (checkExists(jobName, jobGroup)) {
                scheduler.pauseTrigger(triggerKey);
            }
        } catch (SchedulerException e) {
            throw new BaseException(e.getMessage());
        }
    }

    /**
     * 恢复暂停任务
     *
     * @param jobName
     * @param jobGroup
     */
    public void resumeJob(String jobName, String jobGroup) {
        TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroup);
        try {
            if (checkExists(jobName, jobGroup)) {
                scheduler.resumeTrigger(triggerKey);
            }
        } catch (SchedulerException e) {
            throw new BaseException(e.getMessage());
        }
    }

    /**
     * 验证任务是否存在
     *
     * @param jobName
     * @param jobGroup
     * @return
     * @throws SchedulerException
     */
    public boolean checkExists(String jobName, String jobGroup) {
        TriggerKey triggerKey = TriggerKey.triggerKey(jobName, jobGroup);
        try {
            return scheduler.checkExists(triggerKey);
        } catch (SchedulerException e) {
            return false;
        }
    }

}
