package com.opencloud.system.client.model.entity;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.opencloud.common.annotation.TableAlias;
import com.opencloud.common.mybatis.base.entity.AbstractEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * 系统应用-基础信息
 *
 * @author liuyadu
 */
@Data
@EqualsAndHashCode(callSuper = true)
@NoArgsConstructor
@TableName("system_app")
@TableAlias("app")
public class SystemApp extends AbstractEntity {

    @TableId(type = IdType.INPUT)
    private String appId;

    /**
     * API访问key
     */
    private String apiKey;
    /**
     * API访问密钥
     */
    private String secretKey;

    /**
     * app类型：server-服务应用 app-手机应用 pc-PC网页应用 wap-手机网页应用
     */
    private String appType;

    /**
     * 应用图标
     */
    private String appIcon;

    /**
     * app名称
     */
    private String appName;

    /**
     * app英文名称
     */
    private String appNameEn;
    /**
     * 移动应用操作系统：ios-苹果 android-安卓
     */
    private String appOs;


    /**
     * 用户ID:默认为0
     */
    private Long developerId;

    /**
     * app描述
     */
    private String appDesc;

    /**
     * 官方网址
     */
    private String website;

    /**
     * 状态:0-无效 1-有效
     */
    private Integer status;

    /**
     * 默认数据0-否 1-是 禁止删除
     */
    private Integer isPersist;

    /**
     * @return app_id
     */
    public String getAppId() {
        return appId;
    }

    /**
     * @param appId
     */
    public void setAppId(String appId) {
        this.appId = appId;
    }

    /**
     * 获取app名称
     *
     * @return app_name - app名称
     */
    public String getAppName() {
        return appName;
    }

    /**
     * 设置app名称
     *
     * @param appName app名称
     */
    public void setAppName(String appName) {
        this.appName = appName;
    }

    /**
     * 获取app英文名称
     *
     * @return app_name_en - app英文名称
     */
    public String getAppNameEn() {
        return appNameEn;
    }

    /**
     * 设置app英文名称
     *
     * @param appNameEn app英文名称
     */
    public void setAppNameEn(String appNameEn) {
        this.appNameEn = appNameEn;
    }



    /**
     * @return app_type
     */
    public String getAppType() {
        return appType;
    }

    /**
     * @param appType
     */
    public void setAppType(String appType) {
        this.appType = appType;
    }

    public String getAppOs() {
        return appOs;
    }

    public void setAppOs(String appOs) {
        this.appOs = appOs;
    }

    public String getAppDesc() {
        return appDesc;
    }

    public void setAppDesc(String appDesc) {
        this.appDesc = appDesc;
    }


    public String getAppIcon() {
        return appIcon;
    }

    public void setAppIcon(String appIcon) {
        this.appIcon = appIcon;
    }


    public Long getDeveloperId() {
        return developerId;
    }

    public void setDeveloperId(Long developerId) {
        this.developerId = developerId;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsPersist() {
        return isPersist;
    }

    public void setIsPersist(Integer isPersist) {
        this.isPersist = isPersist;
    }

    public String getApiKey() {
        return apiKey;
    }

    public void setApiKey(String apiKey) {
        this.apiKey = apiKey;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }
}
