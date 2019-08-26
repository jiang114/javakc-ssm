package com.zhg.javakc.modules.lead.order.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.lead.apply.entity.ApplyEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:58
 */

@Getter
@Setter
public class OrderEntity extends BaseEntity<OrderEntity> {
    private String order_id;
    private String order_number;
    private String order_name;
    private String order_describe;
    private Date order_date;
    private int order_count;
    private int order_state;
    private List<ApplyEntity> applyEntities;

}
