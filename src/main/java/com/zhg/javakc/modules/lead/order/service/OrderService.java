package com.zhg.javakc.modules.lead.order.service;

import com.zhg.javakc.base.page.Page;
import com.zhg.javakc.base.service.BaseService;
import com.zhg.javakc.base.util.CommonUtil;
import com.zhg.javakc.modules.lead.apply.dao.ApplyDao;
import com.zhg.javakc.modules.lead.apply.entity.ApplyEntity;
import com.zhg.javakc.modules.lead.order.dao.OrderDao;
import com.zhg.javakc.modules.lead.order.entity.OrderEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 14:08
 */
@Service
public class OrderService extends BaseService<OrderDao, OrderEntity> {
    @Autowired
    private OrderDao orderDao;
 @Autowired
    private ApplyDao applyDao;

    public Page<OrderEntity> queryAll(OrderEntity orderEntity, Page<OrderEntity> page){
        orderEntity.setPage(page);
        Page<OrderEntity> page1 = page.setList(orderDao.findList(orderEntity));
        return page1;
    }
    public Page<OrderEntity> queryAll2(OrderEntity orderEntity, Page<OrderEntity> page){
        orderEntity.setPage(page);
        Page<OrderEntity> page1 = page.setList(orderDao.findList2(orderEntity));
        return page1;
    }
    @Transactional(readOnly = false)
    public void save2(String[] ids, OrderEntity orderEntity) {

//        ApplyEntity entity =new ApplyEntity();
//        List<ApplyEntity> list=new ArrayList<>();
//        for (int i=0;i<ids.length;i++ ){
//            entity.setApply_id(ids[i]);
//            list.add(entity);
//        }
//        //获取订单数
//        int count = applyDao.count(ids);
//        orderEntity.setOrder_count(count);
//        orderEntity.setApplyEntities(list);
//        orderEntity.setOrder_id(CommonUtil.uuid());
//        orderDao.insert(orderEntity);
//       orderDao.updateById(orderEntity);

        String uuid = CommonUtil.uuid();
        //获取订单数
        int count = applyDao.count(ids);
        orderEntity.setOrder_count(count);
        orderEntity.setOrder_id(uuid);
        orderDao.insert(orderEntity);
        for (int i=0;i<ids.length;i++ ){
            ApplyEntity entity =new ApplyEntity();
            entity.setTBL_order_id(uuid);
            entity.setApply_id(ids[i]);
            applyDao.updateById(entity);
        }
    }

    @Transactional(readOnly = false)
    public void updateState(String [] ids) {
        for (int i=0;i<ids.length;i++ ){
        OrderEntity entity=new OrderEntity();
            entity.setOrder_id(ids[i]);
            entity.setOrder_state(1);
        orderDao.updateState(entity);
        }
    }



}
