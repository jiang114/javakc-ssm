package com.zhg.javakc.modules.lead.apply.dao;

import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.lead.apply.entity.ApplyEntity;

/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:52
 */

@MyBatisDao
public interface ApplyDao extends BaseDao<ApplyEntity> {

public int count(String [] ids);

public int updateById(ApplyEntity applyEntity);

}
