package com.zhg.javakc.modules.driver.audit.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.driver.audit.entity.AuditEntity;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;

import java.util.List;

@MyBatisDao
public interface AuditDao extends BaseDao<AuditEntity> {

    public List<AuditEntity> query1(AuditEntity auditEntity);
    public List<AuditEntity> query2();
}
