package com.zhg.javakc.modules.driver.basic.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BasicEntity extends BaseEntity<BasicEntity> {

    //驾驶员主键
    private String driver_id;
    //驾驶员编号
    private String driver_card;
    //驾驶员姓名
    private String driver_name;
    //'照片
    private String driver_picture;
    //'性别';
    private String driver_sex;
    //'在职状态';
    private String driver_type;
    //'驾驶证号';
    private String driver_license;
    //'技术等级';
    private String driver_industrial;
    //'家庭住址';
    private String driver_address;
    //'籍贯';
    private String driver_birthplace;
}
