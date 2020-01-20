package com.opencloud.system.service.impl;

import com.opencloud.common.test.BaseTest;
import com.opencloud.system.service.SystemApiService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class SystemApiServiceImplTest extends BaseTest {
    @Autowired
    private SystemApiService systemApiService;

    @Test
    public void batchUpdateService() {
        systemApiService.batchUpdateService(systemApiService.getBatchUpdateServiceList().toArray(new String[]{}));
    }
}
