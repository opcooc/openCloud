<p align="center">
  <a target="_blank" href="https://nacos.io/en-us/"><img src="https://img.shields.io/badge/Nacos-blue.svg" alt="Nacos"></a>
  <a><img src="https://img.shields.io/badge/Spring%20Cloud-%20Greenwich.SR2-brightgreen.svg" alt="SpringCloud"></a>
  <a><img src="https://img.shields.io/badge/Spring%20Boot-2.1.6-brightgreen.svg" alt="SpringBoot"></a>
  <a><img src="https://img.shields.io/badge/Redis-orange.svg"></a>
  <a><img src="https://img.shields.io/badge/RabbitMq-orange.svg"></a>
  <a target="_blank" href="https://www.iviewui.com/docs/guide/install"><img src="https://img.shields.io/badge/iview-brightgreen.svg?style=flat-square" alt="iview"></a>
  <a><img src="https://img.shields.io/badge/vue-brightgreen.svg?style=flat-square" alt="vue"></a>
  <a><img src="https://img.shields.io/npm/l/express.svg" alt="License"></a>
</p>  

## SpringCloud微服务平台(专业版)

#### 开源不易，请随手给个Star! 感谢支持！

#### 简介
便于企业快速搭建SpringCloud微服务架构体系，并为APP端、WEB应用提供更安全有效接口对接能力。
+ 基于SpringCloud微服务分布式架构,基于Nacos统一服务发现与配置中心
+ 基于Spring Security、Oauth2的权限管理系统
+ 基于Spring Gateway、Zuul统一网关,提供APP端、第三方服务对接平台。支持(参数签名校验、第三方应用认证授权、接口限流、接口访问限制、接口状态控制）
+ 基于Vue开发的前后分离系统
+ 提供对常见容器化支持 Docker、Kubernetes的支持

<a target="_blank" href="http://pro.openc.top">在线体验</a> | <a target="_blank" href="https://gitee.com/liuyadu/open-cloud-pro.git">专业版服务端源码</a>  | <a target="_blank" href="https://gitee.com/liuyadu_open/open-admin-pro">专业版UI源码</a>

+ 后台默认账号:admin 123456  
+ 后台测试账号:test 123456
+ SpringBootAdmin账号:sba 123456

#### 核心依赖 
依赖 | 版本
---|---
Spring Boot |  2.1.6.RELEASE  
Spring Cloud | Greenwich.SR2
Spring Alibaba Cloud | 2.1.0.RELEASE  
Mybatis Plus | 3.1.1
iView | 4.0.0 
hutool | 4.1.19

####  架构图
流程图设计：<a target="_blank" href="https://www.processon.com/">processon.com</a>  
![image](/docs/架构图.jpg) 

#### jmeter压力测试
单机：window10 i5-9400f 2.9ghz 6核 16G
测试用例:300秒内模拟10000用户登陆。
![image](/docs/jmeter.png) 


#### 使用手册
<a target="_blank" href="https://gitee.com/liuyadu/open-cloud/wikis/pages">使用手册</a>  

#### 交流群 
学习交流(千人群):760809808 <a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=3c1017efeda485820c9eddee13a125d99261f7504746aa4824bc5c7c2b9a4234"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="open-cloud交流群" title="open-cloud交流群"></a>  

#### 代码结构
``` lua
open-cloud-pro
├── docs                               -- 文档及脚本
    ├── bin                            -- 执行脚本  
    ├── config                         -- 公共配置,用于导入到nacos配置中心   
    ├── sql                            -- sql文件
    
├── clients                            -- 微服务fegin接口
    ├── bpm-client                     -- 工作流服务接口
    ├── job-client                     -- 定时任务服务接口
    ├── msg-client                     -- 消息服务接口
    ├── system-client                  -- 系统服务接口
    ├── README.md                      -- 开发文档说明
    
├── components                         -- 公共组件
    ├── common-core                    -- 提供工具类、封装类、全局异常解析等
    ├── common-starter                 -- SpringBoot自动配置类
    ├── java-sdk                       -- 开放api第三方集成SDK(完善中...)
    ├── tenant-starter                 -- 多租户模块,多数据源自动切换(完善中...)
 
├── dependencies                       -- jar包版本管理
    ├── cloud-clients-dependencies     -- 业务组件版本管理
    ├── cloud-dependencies             -- 所有jar版本管理
    ├── README.md                      -- 开发文档说明
    
├── gateway                            -- 网关
    ├── api-gateway-server             -- 开放API网关(基于SpringGateway)[8888]
    ├── api-zuul-server                -- 开放API网关(基于Zuul)[8888]
    ├── README.md                      -- 开发文档说明
     
├── samples                            -- 演示示例
    ├── sso-ui-demo                    -- 单点登录客户端演示  
    ├── tenant-demo                    -- 多租户演示
    
├── server                             -- 应用服务
    ├── admin-server                   -- 后台认证服务&资源服务[8211]
    ├── generator-server               -- 代码生成
    ├── sba-server                     -- SpringbootAdmin监控服务
    ├── site-server                    -- 官网认证服务&资源服务
    ├── README.md                      -- 开发文档说明
    
├── services                           -- 微服务
    ├── bpm-service                     -- 工作流服务[8255]
    ├── msg-service                     -- 消息服务[8266]
    ├── job-service                     -- 调度服务[8501]
    ├── system-service                  -- 系统管理服务[8233]
    ├── README.md                      -- 开发文档说明
```

#### 快速开始
本项目基于springCloud打造的分布式快速开发框架. 需要了解SpringCloud,SpringBoot,SpringSecurity,分布式原理。

1. 准备环境
    + Java1.8  (v1.8.0_131+)
    + Nacos服务注册和配置中心(v1.0.0+) <a href="https://nacos.io/zh-cn/">阿里巴巴nacos.io</a>
    + Redis (v3.2.00+)
    + RabbitMq (v3.7+)（需安装rabbitmq_delayed_message_exchange插件 <a href="https://www.rabbitmq.com/community-plugins.html" target="_blank">下载地址</a>）
    + Mysql (v5.5.28+)
    + Maven (v3+)
    + Nodejs (v10.14.2+)
   
2. 执行创建数据库open-cloud
   并执行/docs/sql下所有sql脚本
    
3.  启动nacos服务,新建公共配置文件 
    + 访问 http://localhost:8848/nacos/index.html 
    + 导入配置 /docs/config/nacos_config_expor.zip（nacos1.0.3以上版本支持一键导入）
          
     如图:
     ![nacos](https://gitee.com/uploads/images/2019/0425/231436_fce24434_791541.png "nacos.png")
4. 修改主pom.xml  

    初始化maven项目
    ``` bush
        maven clean install
    ```
    本地启动,默认不用修改
    ``` xml
        <!--Nacos配置中心地址-->
        <config.server-addr>127.0.0.1:8848</config.server-addr>
        <!--Nacos配置中心命名空间,用于支持多环境.这里必须使用ID，不能使用名称,默认为空-->
        <config.namespace></config.namespace>
        <!--Nacos服务发现地址-->
        <discovery.server-addr>127.0.0.1:8848</discovery.server-addr>
    ```
    
5. 本地启动(按顺序启动)
     1. [必需]SystemServiceApplication(系统服务)
     2. [必需]AdminApplication(后台服务)
     3. [必需]ApiGatewayApplication(开放网关)或ApiZuulApplication
     ```
        访问 http://localhost:8888
     ```
     4.[非必需]SpringBootAdmin(监控服务器)(非必需)
      ```
          访问 http://localhost:8849
      ```
      
6. 前端启动
    ```bush
        npm install 
        npm run dev
    ``` 
    访问 http://localhost:8080
    
    
7. 项目打包部署  
    +  maven多环境打包,替换变量
   ```bush
     mvn clean install package -P {dev|test|online}
   ```
    + 项目启动
    ```bush
    ./docs/bin/startup.sh {start|stop|restart|status} system-service.jar
    ./docs/bin/startup.sh {start|stop|restart|status} admin-server.jar
    ./docs/bin/startup.sh {start|stop|restart|status} api-spring-server.jar
    ```
    
8.docker部署   
 +  配置DOCKER私服仓库
 +  maven多环境打包,替换变量.并构建docker镜像
       ```bush
          clean install package -P {dev|test|online} dockerfile:build 
       ```  
 + 启动docker容器
      ```bush
        docker run -d -e JAVA_OPTS="-Xms128m -Xmx256m" -p 8233:8233 --name system-service cloud.pro/system-service:1.0.0
        docker run -d -e JAVA_OPTS="-Xms128m -Xmx256m" -p 8211:8211 --name admin-server cloud.pro/admin-server:1.0.0
        docker run -d -e JAVA_OPTS="-Xms128m -Xmx256m" -p 8888:8888 --name api-gateway-server cloud.pro/api-gateway-server:1.0.0
      ```  
#### OAuth2使用说明
<a target="_blank" href="https://gitee.com/liuyadu/open-cloud/wikis/pages?sort_id=1396294&doc_id=256893">OAuth2</a>
