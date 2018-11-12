drop table if exists zf_dict_system_config;

/*==============================================================*/
/* Table: zf_dict_system_config                                 */
/*==============================================================*/
create table zf_dict_system_config
(
   config_id            int not null auto_increment comment '配置ID',
   config_key           varchar(60) not null comment '参数KEY',
   config_value         varchar(500) comment '参数值',
   config_desc          varchar(200) not null comment '参数描述',
   input_type           int not null comment '输入类型, 0-文本框,1-密码框,2-下拉框,3-单选框,4-多选框',
   input_items          blob comment '参数选项',
   model_type           int not null default 1 comment '模块分类',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (config_id),
   unique key AK_Key_2 (config_key)
);

alter table zf_dict_system_config comment '系统参数配置表';



drop table if exists zf_dict_chinaarea;

/*==============================================================*/
/* Table: zf_dict_chinaarea                                     */
/*==============================================================*/
create table zf_dict_chinaarea
(
   area_code            numeric(10,0) not null comment '地区码',
   area_name            varchar(30) not null comment '地区名称',
   parent               numeric(10,0) not null comment '父级地区，如果AreaCode=Parent，则地区为省或直辖市',
   area_type            varchar(30) not null comment '地区类型',
   area_short           varchar(30) not null comment '地区简写',
   primary key (area_code)
);

alter table zf_dict_chinaarea comment '国家标准地区码';


drop table if exists zf_dict_software_provider;

/*==============================================================*/
/* Table: zf_dict_software_provider                             */
/*==============================================================*/
create table zf_dict_software_provider
(
   software_provider    varchar(30) not null comment '软件厂家编号',
   software_provider_name varchar(30) not null comment '软件厂家名称',
   primary key (software_provider)
);

alter table zf_dict_software_provider comment '软件厂家字典表';


drop table if exists zf_dict_apptype;

/*==============================================================*/
/* Table: zf_dict_apptype                                       */
/*==============================================================*/
create table zf_dict_apptype
(
   APP_TYPE             numeric(5,0) not null comment '应用类型',
   APP_TYPE_NAME        varchar(100) not null comment '应用类型名称',
   primary key (APP_TYPE)
);

alter table zf_dict_apptype comment '应用类型表';


drop table if exists zf_dict_webtype;

/*==============================================================*/
/* Table: zf_dict_webtype                                       */
/*==============================================================*/
create table zf_dict_webtype
(
   WEB_TYPE             numeric(5,0) not null comment 'web分类',
   WEB_NAME             varchar(100) not null comment 'web分类名称',
   primary key (WEB_TYPE)
);

alter table zf_dict_webtype comment 'WEB分类表';


drop table if exists ZF_DICT_PACKETTYPE;

/*==============================================================*/
/* Table: ZF_DICT_PACKETTYPE                                    */
/*==============================================================*/
create table ZF_DICT_PACKETTYPE
(
   PACKET_TYPE          numeric(5,0) not null comment 'UD报文类型',
   PACKET_SUB_TYPE      numeric(5,0) not null comment 'UD报文子类型',
   PACKET_TYPE_NAME     varchar(100) not null comment '报文类型名称',
   METHOD               numeric(5,0) not null comment '上报方式，1=SOCKET, 2=文件方式',
   primary key (PACKET_TYPE, PACKET_SUB_TYPE)
);

alter table ZF_DICT_PACKETTYPE comment 'UD数据类型表';


drop table if exists ZF_DICT_MESSAGETYPE;

/*==============================================================*/
/* Table: ZF_DICT_MESSAGETYPE                                   */
/*==============================================================*/
create table ZF_DICT_MESSAGETYPE
(
   MESSAGE_TYPE         numeric(10,0) not null comment '策略类型',
   MESSAGE_TITLE        varchar(120) not null comment '策略类型名称',
   FLAG                 numeric(5,0) not null comment '类型，0=不显示，1=显示',
   primary key (MESSAGE_TYPE)
);

alter table ZF_DICT_MESSAGETYPE comment '策略类型字典表';


