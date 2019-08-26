package com.zhg.javakc.modules.lead.order.dao;
import com.zhg.javakc.base.dao.BaseDao;
import com.zhg.javakc.base.dao.MyBatisDao;
import com.zhg.javakc.modules.lead.order.entity.OrderEntity;

import java.util.List;

/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:52
 */
@MyBatisDao
public interface OrderDao extends BaseDao<OrderEntity> {
    public int updateById(OrderEntity orderEntity);

    public int updateState(OrderEntity entity);

    public List<OrderEntity> findList2(OrderEntity entity);
}
