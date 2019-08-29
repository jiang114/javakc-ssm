package com.zhg.javakc.modules.driver.train.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import com.zhg.javakc.modules.driver.train.entity.TrainEntity;

import java.util.List;

@MyBatisDao
public interface TrainDao extends BaseDao<TrainEntity> {

    public List<TrainEntity> query1(TrainEntity trainEntity);
    public List<TrainEntity> query2();
    public TrainEntity query3(BasicEntity basicEntity);

}
