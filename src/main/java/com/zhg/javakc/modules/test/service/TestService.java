package com.zhg.javakc.modules.test.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.test.dao.TestDao;
import com.zhg.javakc.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author lisiyu
 * @Date 19/8/22 - 11:52
 */
@Service
public class TestService extends BaseService<TestDao, TestEntity> {
    @Autowired
    private TestDao testDao;
    public Page<TestEntity> queryAll(TestEntity testEntity, Page<TestEntity> page){
        testEntity.setPage(page);
        Page<TestEntity> page1 = page.setList(testDao.findList(testEntity));
        return page1;
    }
}
