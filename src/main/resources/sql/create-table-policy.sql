drop table if exists ZF_V2_POLICY_MESSAGENO;

/*==============================================================*/
/* Table: ZF_V2_POLICY_MESSAGENO                                */
/*==============================================================*/
create table ZF_V2_POLICY_MESSAGENO
(
   MESSAGE_TYPE         numeric(10,0) not null comment '策略类型',
   MESSAGE_NO           decimal(10) not null comment '对应策略类型的策略号',
   MESSAGE_NAME         varchar(100) not null comment '策略组名称',
   MESSAGE_SEQUENCENO   decimal(10) not null comment '策略序列号',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (MESSAGE_TYPE, MESSAGE_NO)
);

alter table ZF_V2_POLICY_MESSAGENO comment '策略组表';



drop table if exists ZF_V2_POLICY_STATUS;

/*==============================================================*/
/* Table: ZF_V2_POLICY_STATUS                                   */
/*==============================================================*/
create table ZF_V2_POLICY_STATUS
(
   MESSAGE_TYPE         numeric(10,0) not null comment '策略类型',
   MESSAGE_NO           decimal(10) not null comment '对应策略类型的策略号',
   DPI_IP               varchar(100) not null comment 'DPI设备IP',
   STATUS               numeric(5,0) not null comment '下发状态， 0=下发失败,1=下发成功  2=连接失败',
   CREATE_TIME          datetime not null comment '创建时间',
   primary key (MESSAGE_TYPE, MESSAGE_NO, DPI_IP)
);

alter table ZF_V2_POLICY_STATUS comment '策略下发状态表';


