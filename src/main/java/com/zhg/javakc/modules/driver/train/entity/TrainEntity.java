package com.zhg.javakc.modules.driver.train.entity;

import com.zhg.javakc.base.entity.BaseEntity;
import com.zhg.javakc.modules.driver.basic.entity.BasicEntity;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
public class TrainEntity extends BaseEntity<TrainEntity> {
    //'培训表主键';
   private String train_id ;
   //'驾驶员主键';
   private String driver_id ;
   //'培训名称';
   private String train_org_name;
   //'培训机构名称';
   private String train_content_name;
   //'地点';
   private String train_address;
   //'培训开始时间';
   private Date train_start_time;
   //'结束时间';
   private Date train_end_time;
   //'类型';
   private String train_type;
   //'讲师';
   private String train_teacher;
   //'内容';
   private String train_content;
   //'结果';
   private int train_result;

   private BasicEntity basicEntity;

}
