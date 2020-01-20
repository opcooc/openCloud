package com.opencloud.common.mybatis.base.controller;


import com.opencloud.common.mybatis.base.service.IBaseService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author: Administrator
 * @date: 2019/1/4 22:02
 * @desc: 类描述：基础控制器
 */
public class BaseController<Biz extends IBaseService<T>, T> {

    @Autowired
    protected Biz bizService;
}
