package com.zhg.javakc.modules.driver.train.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import com.zhg.javakc.modules.driver.train.dao.TrainDao;
import com.zhg.javakc.modules.driver.train.entity.TrainEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TrainService extends BaseService<TrainDao, TrainEntity> {
    @Autowired
    private TrainDao trainDao;

    public Page<TrainEntity> queryAll(TrainEntity trainEntity, Page<TrainEntity> page){
        trainEntity.setPage(page);
        Page<TrainEntity> page1 = page.setList(trainDao.query1(trainEntity));
        return page1;
    }

//    public List<TrainEntity> query1(){
//        return trainDao.query1();
//    }
    public List<TrainEntity> query2(){
        return trainDao.query2();
    }

}
