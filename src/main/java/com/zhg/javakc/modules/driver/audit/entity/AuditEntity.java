package com.zhg.javakc.modules.driver.audit.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class AuditEntity extends BaseEntity<AuditEntity> {

    //'稽查表主键';
    private String inspection_id;
    //'驾驶员主键';
    private String driver_id;
    //'稽查机构名称';
    private String inspection_org_name;
    //'稽查时间';
    private Date inspection_time;
    //'处罚金额';
    private String inspection_money;
    //'稽查地点';
    private String inspection_adress;
    //'稽查内容';
    private String inspection_contnet;
    //'整改情况';
    private String inspection_rectify;
    //'扣分情况';
    private String inspection_points;
    //'稽查结果';
    private String inspection_result;

    private BasicEntity basicEntity;
}
