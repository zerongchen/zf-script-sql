drop table if exists ZF_V2_USERGROUP;

/*==============================================================*/
/* Table: ZF_V2_USERGROUP                                       */
/*==============================================================*/
create table ZF_V2_USERGROUP
(
   MESSAGE_NO           decimal(10) not null comment '策略号',
   USER_GROUP_ID        bigint not null auto_increment comment '用户组ID',
   USER_GROUP_NAME      varchar(200) not null comment '用户组名称',
   USER_GROUP_DESC      varchar(100) comment '用户组描述',
   primary key (USER_GROUP_ID),
   unique key AK_Key_2 (USER_GROUP_NAME)
);

alter table ZF_V2_USERGROUP comment '用户组表';


drop table if exists ZF_V2_USER;

/*==============================================================*/
/* Table: ZF_V2_USER                                            */
/*==============================================================*/
create table ZF_V2_USER
(
   USER_GROUP_ID        bigint not null comment '用户组ID',
   USER_TYPE            numeric(5,0) not null comment '用户类型：1=帐号用户，2=,IP地址段用户，3=DPI监控链路来设置组，4=BRAS IP地址(NAS_IP_Address)来设置组',
   USER_NAME            varchar(50) not null comment '用户名',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加, 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间'
);

alter table ZF_V2_USER comment '用户组用户表';


