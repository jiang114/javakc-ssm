/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2019/8/26 9:51:30                            */
/*==============================================================*/


alter table TBL_APPLY_SEAL
   drop constraint FK_TBL_APPL_REFERENCE_TBL_SEAL;

alter table TBL_INDENT_SEAL
   drop constraint FK_TBL_INDE_REFERENCE_TBL_SEAL;

alter table TBL_SEALNUM
   drop constraint FK_TBL_SEAL_REFERENCE_TBL_INDE;

alter table TBL_SEALNUM
   drop constraint FK_TBL_SEAL_REFERENCE_TBL_SEAL;

alter table TBL_STOCK_SEAL
   drop constraint FK_TBL_STOC_REFERENCE_TBL_SEAL;

drop table TBL_APPLY_SEAL cascade constraints;

drop table TBL_INDENT_SEAL cascade constraints;

drop table TBL_SEALNUM cascade constraints;

drop table TBL_SEAL_ORDER cascade constraints;

drop table TBL_SEAL_RELEASE cascade constraints;

drop table TBL_STOCK_SEAL cascade constraints;

/*==============================================================*/
/* Table: TBL_APPLY_SEAL                                        */
/*==============================================================*/
create table TBL_APPLY_SEAL 
(
   apply_id             VARCHAR2(32 CHAR)    not null,
   TBL_order_id         VARCHAR2(32 CHAR),
   apply_number         VARCHAR2(20),
   apply_name           VARCHAR2(20),
   apply_date           DATE,
   apply_count          number,
   apply_way            number,
   apply_type           number,
   apply_state          number,
   apply_phone          VARCHAR2(20),
   apply_inside         number,
   "apply_ coding"      VARCHAR2(20),
   apply_site           VARCHAR2(20),
   apply_unit           VARCHAR2(20),
   apply_state2         VARCHAR2(20),
   createDate           DATE,
   constraint PK_TBL_APPLY_SEAL primary key (apply_id)
);

comment on table TBL_APPLY_SEAL is
'铅封采购表';

comment on column TBL_APPLY_SEAL.apply_id is
'主键ID';

comment on column TBL_APPLY_SEAL.TBL_order_id is
'订单表外键';

comment on column TBL_APPLY_SEAL.apply_number is
'申请号';

comment on column TBL_APPLY_SEAL.apply_name is
'申请人';

comment on column TBL_APPLY_SEAL.apply_date is
'申请日期';

comment on column TBL_APPLY_SEAL.apply_count is
'申请数量';

comment on column TBL_APPLY_SEAL.apply_way is
'铅封方式';

comment on column TBL_APPLY_SEAL.apply_type is
'铅封类型';

comment on column TBL_APPLY_SEAL.apply_state is
'申请状态';

comment on column TBL_APPLY_SEAL.apply_phone is
'申请人手机';

comment on column TBL_APPLY_SEAL.apply_inside is
'内部/外部';

comment on column TBL_APPLY_SEAL."apply_ coding" is
'邮政编码';

comment on column TBL_APPLY_SEAL.apply_site is
'邮寄地主';

comment on column TBL_APPLY_SEAL.apply_unit is
'申请单位';

comment on column TBL_APPLY_SEAL.apply_state2 is
'申请诉求';

/*==============================================================*/
/* Table: TBL_INDENT_SEAL                                       */
/*==============================================================*/
create table TBL_INDENT_SEAL 
(
   indent_id            VARCHAR2(32 CHAR)    not null,
   TBL_order_id         VARCHAR2(32 CHAR),
   indent_count         number,
   indent_start_number  VARCHAR2(20),
   indent_end_number    VARCHAR2(20),
   indent_stale_dated   number,
   indent_date          DATE,
   constraint PK_TBL_INDENT_SEAL primary key (indent_id)
);

comment on table TBL_INDENT_SEAL is
'铅封收货表';

comment on column TBL_INDENT_SEAL.indent_id is
'主键ID';

comment on column TBL_INDENT_SEAL.TBL_order_id is
'订单表外键';

comment on column TBL_INDENT_SEAL.indent_count is
'订单数量';

comment on column TBL_INDENT_SEAL.indent_start_number is
'起始编号';

comment on column TBL_INDENT_SEAL.indent_end_number is
'终止编号';

comment on column TBL_INDENT_SEAL.indent_stale_dated is
'是否过期';

comment on column TBL_INDENT_SEAL.indent_date is
'收货日期';

/*==============================================================*/
/* Table: TBL_SEALNUM                                           */
/*==============================================================*/
create table TBL_SEALNUM 
(
   roughly_id           VARCHAR2(32 CHAR)    not null,
   TBL_indent_id        VARCHAR2(32 CHAR),
   TBL_grant_id         VARCHAR2(32 CHAR),
   roughly_number       VARCHAR2(20),
   constraint PK_TBL_SEALNUM primary key (roughly_id)
);

comment on table TBL_SEALNUM is
'号段表';

comment on column TBL_SEALNUM.roughly_id is
'主键ID';

comment on column TBL_SEALNUM.TBL_indent_id is
'收货表外键';

comment on column TBL_SEALNUM.TBL_grant_id is
'发放表外键';

comment on column TBL_SEALNUM.roughly_number is
'号段编号';

/*==============================================================*/
/* Table: TBL_SEAL_ORDER                                        */
/*==============================================================*/
create table TBL_SEAL_ORDER 
(
   order_id             VARCHAR2(32 CHAR)    not null,
   order_number         VARCHAR2(32),
   order_name           VARCHAR2(20),
   order_describe       VARCHAR2(200),
   order_date           DATE,
   order_count          number,
   order_state          number,
   constraint PK_TBL_SEAL_ORDER primary key (order_id)
);

comment on table TBL_SEAL_ORDER is
'铅封订单表';

comment on column TBL_SEAL_ORDER.order_id is
'主键ID';

comment on column TBL_SEAL_ORDER.order_number is
'订单批次号';

comment on column TBL_SEAL_ORDER.order_name is
'生产厂家名称';

comment on column TBL_SEAL_ORDER.order_describe is
'生产厂家描述';

comment on column TBL_SEAL_ORDER.order_date is
'订单日期';

comment on column TBL_SEAL_ORDER.order_count is
'订单数量';

comment on column TBL_SEAL_ORDER.order_state is
'申请状态';

/*==============================================================*/
/* Table: TBL_SEAL_RELEASE                                      */
/*==============================================================*/
create table TBL_SEAL_RELEASE 
(
   grant_id             VARCHAR2(32 CHAR)    not null,
   grant_number         VARCHAR2(20),
   grant_date           DATE,
   constraint PK_TBL_SEAL_RELEASE primary key (grant_id)
);

comment on table TBL_SEAL_RELEASE is
'发放表';

comment on column TBL_SEAL_RELEASE.grant_id is
'主键ID';

comment on column TBL_SEAL_RELEASE.grant_number is
'号段编号';

comment on column TBL_SEAL_RELEASE.grant_date is
'发放日期';

/*==============================================================*/
/* Table: TBL_STOCK_SEAL                                        */
/*==============================================================*/
create table TBL_STOCK_SEAL 
(
   stock_id             VARCHAR2(32 CHAR)    not null,
   TBL_roughly_id       VARCHAR2(32 CHAR),
   stock_number         VARCHAR2(20),
   stock_state          number,
   motorcade_id         VARCHAR2(32),
   delivery_id          VARCHAR2(32),
   stock_site           VARCHAR2(20),
   stock_unit           VARCHAR2(20),
   stock_seal_unit      VARCHAR2(20),
   stock_state2         number,
   stock_remark         VARCHAR2(100),
   constraint PK_TBL_STOCK_SEAL primary key (stock_id)
);

comment on table TBL_STOCK_SEAL is
'库存表';

comment on column TBL_STOCK_SEAL.stock_id is
'主键ID';

comment on column TBL_STOCK_SEAL.TBL_roughly_id is
'号段表ID';

comment on column TBL_STOCK_SEAL.stock_number is
'库存编号';

comment on column TBL_STOCK_SEAL.stock_state is
'使用状态';

comment on column TBL_STOCK_SEAL.motorcade_id is
'车队ID';

comment on column TBL_STOCK_SEAL.delivery_id is
'配送ID';

comment on column TBL_STOCK_SEAL.stock_site is
'实施铅封位置';

comment on column TBL_STOCK_SEAL.stock_unit is
'实施铅封单位';

comment on column TBL_STOCK_SEAL.stock_seal_unit is
'拆封单位';

comment on column TBL_STOCK_SEAL.stock_state2 is
'状态';

comment on column TBL_STOCK_SEAL.stock_remark is
'备注';

alter table TBL_APPLY_SEAL
   add constraint FK_TBL_APPL_REFERENCE_TBL_SEAL foreign key (TBL_order_id)
      references TBL_SEAL_ORDER (order_id);

alter table TBL_INDENT_SEAL
   add constraint FK_TBL_INDE_REFERENCE_TBL_SEAL foreign key (TBL_order_id)
      references TBL_SEAL_ORDER (order_id);

alter table TBL_SEALNUM
   add constraint FK_TBL_SEAL_REFERENCE_TBL_INDE foreign key (TBL_indent_id)
      references TBL_INDENT_SEAL (indent_id);

alter table TBL_SEALNUM
   add constraint FK_TBL_SEAL_REFERENCE_TBL_SEAL foreign key (TBL_grant_id)
      references TBL_SEAL_RELEASE (grant_id);

alter table TBL_STOCK_SEAL
   add constraint FK_TBL_STOC_REFERENCE_TBL_SEAL foreign key (TBL_roughly_id)
      references TBL_SEALNUM (roughly_id);

