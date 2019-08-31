package com.zhg.javakc.modules.driver.audit.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.driver.audit.dao.AuditDao;
import com.zhg.javakc.modules.driver.audit.entity.AuditEntity;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import com.zhg.javakc.modules.driver.train.entity.TrainEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuditService extends BaseService<AuditDao, AuditEntity> {

    @Autowired
    private AuditDao auditDao;

    public Page<AuditEntity> queryAll(AuditEntity auditEntity, Page<AuditEntity> page){
        auditEntity.setPage(page);
        Page<AuditEntity> page1 = page.setList(auditDao.query1(auditEntity));
        return page1;
    }
    public List<AuditEntity> query2(){
        return auditDao.query2();
    }

}
