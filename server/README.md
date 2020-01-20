### 应用资源服务模块
+ 服务消费者(feign调用聚合)
+ 需要安全配置类
+ 为WEB应用、移动APP应用、第三方服务器提供接口的服务

### 创建基于Oauth2认证协议的资源服务器
+ 支持oauth2身份认证
+ 支持接口自动扫描
#### 项目快速搭建

1. 配置pom
```
  <dependencies>
  <!-- 引入所有依赖,可以到父项目dependencyManagement管理 -->
      <dependencies>
              <dependency>
                  <groupId>com.opencloud</groupId>
                  <artifactId>cloud-dependencies</artifactId>
                  <version>1.0.0</version>
                  <type>pom</type>
                  <scope>import</scope>
              </dependency>
        </dependencies>
        <!--引入公共jar-->
        <dependency>
            <groupId>com.opencloud</groupId>
            <artifactId>common-starter</artifactId>
        </dependency>
    </dependencies>
```
2. 创建资源服务器安全配置类ResourceServerConfiguration
```
@Configuration
@EnableResourceServer
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {
    @Autowired
    private RedisConnectionFactory redisConnectionFactory;
    
    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        // 构建redis获取token服务类
        resources.tokenServices(SecurityHelper.buildRedisTokenServices(redisConnectionFactory));
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
                .and()
                .authorizeRequests()
                // 指定监控访问权限
                .requestMatchers(EndpointRequest.toAnyEndpoint()).permitAll()
                .anyRequest().authenticated()
                .and()
                .exceptionHandling()
                // 认证鉴权错误处理,为了统一异常处理。每个资源服务器都应该加上。
                .accessDeniedHandler(new BaseAccessDeniedHandler())
                .authenticationEntryPoint(new BaseAuthenticationEntryPoint())
                .and().csrf().disable()
                // 禁用httpBasic
                .httpBasic().disable();
    }

}
```

3. 配置bootstrap.yml
```
server:
    port: 3333
spring:
    application:
        name: ${artifactId}
    cloud:
        #手动配置Bus id,
        bus:
            id: ${spring.application.name}:${server.port}
        nacos:
            config:
                namespace: ${config.namespace}
                refreshable-dataids: common.properties
                server-addr: ${config.server-addr}
                shared-dataids: common.properties,db.properties,redis.properties,rabbitmq.properties
            discovery:
                namespace: ${config.namespace}
                server-addr: ${discovery.server-addr}
    main:
        allow-bean-definition-overriding: true
    #解决restful 404错误 spring.mvc.throw-exception-if-no-handler-found=true spring.resources.add-mappings=false
    mvc:
        throw-exception-if-no-handler-found: true
    resources:
        add-mappings: false
    profiles:
        active: ${profile.name}
        
management:
    endpoints:
        web:
            exposure:
                include: '*'
                
cloud:
    swagger2:
        enabled: true
        description: 资源服务器
        title: 资源服务器

```

4. 创建Application.class
```
  @EnableFeignClients
  @EnableDiscoveryClient
  @SpringBootApplication
  public class Application {
      public static void main(String[] args) {
          SpringApplication.run(Application.class, args);
      }
  }
```

5. 项目创建成功
