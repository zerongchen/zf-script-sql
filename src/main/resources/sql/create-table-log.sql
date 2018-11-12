drop table if exists zf_v2_operation_log;

/*==============================================================*/
/* Table: zf_v2_operation_log                                   */
/*==============================================================*/
create table zf_v2_operation_log
(
   id                   bigint not null auto_increment comment 'id',
   oper_time            datetime not null comment '操作时间',
   oper_user            varchar(100) not null comment '操作人',
   oper_model           int not null comment '操作模块',
   oper_type            int not null comment '操作类型',
   client_ip            varchar(100) not null comment '客户端IP',
   client_port          int not null comment '客户端PORT',
   server_name          varchar(100) not null comment '服务器名',
   data_json            blob comment '操作数据',
   input_param          mediumtext comment '输入参数',
   output_param         mediumtext comment '输出参数',
   primary key (id)
);

alter table zf_v2_operation_log comment '操作日志';
