drop table if exists ZF_V2_POLICY_USERPOLICY_BIND;

/*==============================================================*/
/* Table: ZF_V2_POLICY_USERPOLICY_BIND                          */
/*==============================================================*/
create table ZF_V2_POLICY_USERPOLICY_BIND
(
   BIND_ID              bigint not null auto_increment comment '主键',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   USER_TYPE            numeric(5,0) not null comment '用户类型 0-全局策略 1-账号用户 2-静态IP用户 3-用户组',
   USER_GROUP_ID        bigint comment '用户组ID',
   USER_NAME            varchar(100) comment '用户帐号或静态IP地址',
   BIND_MESSAGE_TYPE    numeric(10,0) not null comment '被绑定的策略类型',
   BIND_MESSAGE_NO      decimal(10) not null comment '被绑定的策略号',
   MESSAGE_SEQUENCENO   decimal(10) not null comment '策略序列号',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (BIND_ID)
);

alter table ZF_V2_POLICY_USERPOLICY_BIND comment '用户/应用策略绑定';


drop table if exists ZF_V2_POLICY_IPUSER;

/*==============================================================*/
/* Table: ZF_V2_POLICY_IPUSER                                   */
/*==============================================================*/
create table ZF_V2_POLICY_IPUSER
(
   MESSAGE_NO           decimal(10) not null comment '策略号',
   USER_ID              bigint not null auto_increment comment '用户ID',
   USER_NAME            varchar(50) not null comment '用户名',
   primary key (USER_ID)
);

alter table ZF_V2_POLICY_IPUSER comment ' IP 地址用户信息';


drop table if exists ZF_V2_POLICY_IPUSER_IP;

/*==============================================================*/
/* Table: ZF_V2_POLICY_IPUSER_IP                                */
/*==============================================================*/
create table ZF_V2_POLICY_IPUSER_IP
(
   IP_ID                bigint not null auto_increment comment '递增ID',
   USER_ID              bigint not null comment '用户ID',
   USERIP               varchar(50) not null comment '用户IP地址',
   USERIP_PREFIX        numeric(5,0) not null comment 'IP地址前缀',
   MESSAGE_SEQUENCENO   decimal(10) not null comment '策略序列号',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加, 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (IP_ID)
);

alter table ZF_V2_POLICY_IPUSER_IP comment 'IP地址段用户信息_IP';

