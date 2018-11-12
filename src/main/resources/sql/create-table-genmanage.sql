drop table if exists ZF_V2_GEN_CLASS_INFO;

/*==============================================================*/
/* Table: ZF_V2_GEN_CLASS_INFO                                  */
/*==============================================================*/
create table ZF_V2_GEN_CLASS_INFO
(
   MESSAGE_TYPE         numeric(10,0) not null comment '策略类型',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   ZONGFEN_ID           int not null comment '综分设备ID',
   primary key (MESSAGE_TYPE, MESSAGE_NO)
);

alter table ZF_V2_GEN_CLASS_INFO comment '分类库下发策略';


drop table if exists ZF_V2_GEN_CLASS_FILENAME;

/*==============================================================*/
/* Table: ZF_V2_GEN_CLASS_FILENAME                              */
/*==============================================================*/
create table ZF_V2_GEN_CLASS_FILENAME
(
   MESSAGE_TYPE         numeric(10,0) not null comment '策略类型',
   FILE_TYPE            smallint not null comment '分类库文件类型,定义见详细设计',
   CLASS_FILE_NAME      varchar(100) not null comment '文件名称',
   VERSION_NO           decimal(10) not null comment '版本号',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (MESSAGE_TYPE, FILE_TYPE)
);

alter table ZF_V2_GEN_CLASS_FILENAME comment '分类库生成文件名表';



drop table if exists ZF_V2_GEN_IPADDRESS;

/*==============================================================*/
/* Table: ZF_V2_GEN_IPADDRESS                                   */
/*==============================================================*/
create table ZF_V2_GEN_IPADDRESS
(
   IP_ID                bigint not null auto_increment comment '主键ID',
   IP_TYPE              varchar(10) not null comment 'IP地址协议：0X04,0X06',
   START_IP             varchar(100) not null comment '起始IP',
   END_IP               varchar(100) not null comment '结束IP',
   AREA_NAME            varchar(100) not null comment '区域名称',
   AREA_ID              varchar(100) comment '区域ID',
   PROVINCE_NAME        varchar(100) comment '省份名称',
   UPDATE_TIME          datetime not null comment '更新时间',
   primary key (IP_ID)
);

alter table ZF_V2_GEN_IPADDRESS comment 'IP地址库';

drop table if exists ZF_V2_GEN_IP_AREA;

/*==============================================================*/
/* Table: ZF_V2_GEN_IP_AREA                                     */
/*==============================================================*/
create table ZF_V2_GEN_IP_AREA
(
   AREA_TYPE            tinyint not null comment '区域类别:1=省份，2=地市，3=IDC，4=国内运营商，5=国际运营商,6=大洲，7=国家',
   AREA_ID              varchar(50) not null comment '区域ID,截取对应的二进制',
   P_AREA_ID            varchar(50) not null default '0' comment '父类ID',
   AREA_NAME            varchar(200) not null comment '区域名称',
   IS_PARENT            tinyint(1) not null default 0 comment '是否为父类:0=否，1=是',
   primary key (AREA_TYPE, AREA_ID)
);

alter table ZF_V2_GEN_IP_AREA comment '区域码和IP的对应表';


drop table if exists ZF_V2_GEN_IP_IMPORTTASK;

/*==============================================================*/
/* Table: ZF_V2_GEN_IP_IMPORTTASK                               */
/*==============================================================*/
create table ZF_V2_GEN_IP_IMPORTTASK
(
   task_id              int not null auto_increment comment '任务ID',
   filename             varchar(200) not null comment '导入文件名',
   import_type          int not null comment '导入类型，0=全量，1=增量',
   status               int not null comment '状态, 0=正在导入，1=导入成功，2=导入异常',
   result_file          varchar(200) comment '结果文件名，导入异常有效',
   userid               int not null comment '操作用户ID',
   create_time          datetime not null comment '创建时间',
   finish_time          datetime comment '完成时间',
   server_ip            varchar(100) comment '处理服务器',
   primary key (task_id)
);

alter table ZF_V2_GEN_IP_IMPORTTASK comment 'IP地址库导入任务表';




drop table if exists ZF_V2_GEN_URL;

/*==============================================================*/
/* Table: ZF_V2_GEN_URL                                         */
/*==============================================================*/
create table ZF_V2_GEN_URL
(
   URL_ID               bigint not null auto_increment comment '主键ID',
   HOST_NAME            varchar(1024) not null comment '网站名称',
   WEB_TYPE             numeric(5,0) not null comment 'web分类',
   UPDATE_TIME          datetime not null comment '更新时间',
   primary key (URL_ID)
);

alter table ZF_V2_GEN_URL comment 'URL分类库';



drop table if exists ZF_V2_GEN_APP;

/*==============================================================*/
/* Table: ZF_V2_GEN_APP                                         */
/*==============================================================*/
create table ZF_V2_GEN_APP
(
   APP_ID               int not null comment '应用ID',
   APP_ZH_NAME          varchar(512) not null comment '应用中文名称',
   APP_EN_NAME          varchar(512) comment '应用英文文名称',
   APP_TYPE             numeric(5,0) not null comment '应用类型',
   IS_MAIN_APP          smallint not null comment '是否为主流应用，0=不是，1=是',
   REMARK               varchar(512) comment '备注',
   UPDATE_TIME          datetime not null comment '更新时间',
   primary key (APP_ID, APP_TYPE)
);

alter table ZF_V2_GEN_APP comment '应用分类库';




drop table if exists ZF_V2_GEN_HTTPGET_BW;

/*==============================================================*/
/* Table: ZF_V2_GEN_HTTPGET_BW                                  */
/*==============================================================*/
create table ZF_V2_GEN_HTTPGET_BW
(
   ID                   bigint not null auto_increment comment '自增ID',
   TYPE                 smallint not null comment '数据类型：0=白名单，1=黑名单,2=URL黑名单（domain存的url值）',
   DOMAIN               varchar(1024) not null comment '域名/URL',
   UPDATE_TIME          datetime not null comment '更新时间',
   primary key (ID)
);

alter table ZF_V2_GEN_HTTPGET_BW comment 'HTTP GET黑白名单';



drop table if exists ZF_V2_GEN_TRIGGER_HOST;

/*==============================================================*/
/* Table: ZF_V2_GEN_TRIGGER_HOST                                */
/*==============================================================*/
create table ZF_V2_GEN_TRIGGER_HOST
(
   TRIGGER_HOST_LISTID  int not null auto_increment comment '触发网站列表ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   TRIGGER_HOST_LISTNAME varchar(100) not null comment '触发网站列表名称',
   HOST_LISTTYPE        numeric(1,0) not null default 1 comment '网站列表类型（1触发网站列表 2白名单网站）',
   HOST_NUM             numeric(10,0) not null default 0 comment '网站个数',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (TRIGGER_HOST_LISTID)
);

alter table ZF_V2_GEN_TRIGGER_HOST comment '信息推送触发网站(白名单从里面选)';



drop table if exists ZF_V2_GEN_TRIGGER_HOST_LIST;

/*==============================================================*/
/* Table: ZF_V2_GEN_TRIGGER_HOST_LIST                           */
/*==============================================================*/
create table ZF_V2_GEN_TRIGGER_HOST_LIST
(
   HOST_ID              bigint not null auto_increment comment '网站ID',
   TRIGGER_HOST_LISTID  int not null comment '触发网站列表ID',
   HOST_NAME            varchar(1024) not null comment '网站名称',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (HOST_ID)
);

alter table ZF_V2_GEN_TRIGGER_HOST_LIST comment '信息推送触发网站列表(白名单从里面选)';



drop table if exists ZF_V2_GEN_TRIGGER_KW;

/*==============================================================*/
/* Table: ZF_V2_GEN_TRIGGER_KW                                  */
/*==============================================================*/
create table ZF_V2_GEN_TRIGGER_KW
(
   TRIGGER_KW_LISTID    int not null auto_increment comment '触发关键字列表ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   TRIGGER_KW_LISTNAME  varchar(100) not null comment '触发关键字列表名称',
   KW_NUM               numeric(10,0) not null default 0 comment '关键字个数',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (TRIGGER_KW_LISTID)
);

alter table ZF_V2_GEN_TRIGGER_KW comment '信息推送触发关键字';


drop table if exists ZF_V2_GEN_TRIGGER_KW_LIST;

/*==============================================================*/
/* Table: ZF_V2_GEN_TRIGGER_KW_LIST                             */
/*==============================================================*/
create table ZF_V2_GEN_TRIGGER_KW_LIST
(
   KW_ID                bigint not null auto_increment comment '关键字ID',
   TRIGGER_KW_LISTID    int not null comment '触发关键字列表ID',
   KW_NAME              varchar(500) not null comment '关键字',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (KW_ID)
);

alter table ZF_V2_GEN_TRIGGER_KW_LIST comment '信息推送触发关键字列表';


drop table if exists ZF_V2_GEN_BRAS;

/*==============================================================*/
/* Table: ZF_V2_GEN_BRAS                                        */
/*==============================================================*/
create table ZF_V2_GEN_BRAS
(
   BRAS_IP              varchar(100) not null comment 'BRASIP',
   BRAS_NAME            varchar(256) not null comment 'BRAS名称',
   FIRST_TIME           datetime not null comment '首次发现时间',
   LAST_TIME            datetime not null comment '最后发现时间',
   primary key (BRAS_IP)
);

alter table ZF_V2_GEN_BRAS comment 'BRAS信息';

