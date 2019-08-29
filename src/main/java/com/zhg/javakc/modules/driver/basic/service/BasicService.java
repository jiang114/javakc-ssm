package com.zhg.javakc.modules.driver.basic.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.driver.basic.dao.BasicDao;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BasicService extends BaseService<BasicDao, BasicEntity> {

    @Autowired
    private BasicDao basicDao;

    public Page<BasicEntity> queryAll(BasicEntity basicEntity, Page<BasicEntity> page){
        basicEntity.setPage(page);
        Page<BasicEntity> page1 = page.setList(basicDao.findList(basicEntity));
        return page1;
    }
}
