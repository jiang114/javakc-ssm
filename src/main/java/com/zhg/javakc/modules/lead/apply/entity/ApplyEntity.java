package com.zhg.javakc.modules.lead.apply.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
/**
 * @author liudong
 * @version 1.0
 * @date 2019/8/23 15:58
 */

@Getter
@Setter
public class ApplyEntity extends BaseEntity<ApplyEntity> {
    private String apply_id;
    private String TBL_order_id;
    private String apply_number;
    private String apply_name;
    private Date apply_date;
    private int apply_count;
    private int apply_way;
    private int apply_type;
    private int apply_state;
    private int apply_state2;
    private String apply_phone;
    private int apply_inside;
    private String apply_coding;
    private String apply_site;
    private String apply_unit;

}
