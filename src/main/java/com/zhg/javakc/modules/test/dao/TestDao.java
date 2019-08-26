package com.zhg.javakc.modules.test.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.test.entity.TestEntity;

/**
 * @Author lisiyu
 * @Date 19/8/22 - 12:04
 */
@MyBatisDao
public interface TestDao extends BaseDao<TestEntity> {
}
