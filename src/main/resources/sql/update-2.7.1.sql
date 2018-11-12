drop table if exists zf_v2_monitor_onlineuser_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_onlineuser_detail                       */
/*==============================================================*/
create table zf_v2_monitor_onlineuser_detail
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   server_ip            varchar(100) not null comment '服务器IP',
   stat_type            tinyint not null comment '统计粒度,0=5分钟，1=小时， 2=天',
   onlineusernum        int not null comment '在线用户数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, server_ip, stat_type)
);

alter table zf_v2_monitor_onlineuser_detail comment '在线用户数监控表';


drop table if exists zf_v2_monitor_receivedfile_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_receivedfile_detail                     */
/*==============================================================*/
create table zf_v2_monitor_receivedfile_detail
(
   file_name            varchar(100) not null comment '文件名',
   server_ip            varchar(100) not null comment '服务器IP',
   dpi_ip               varchar(100) not null comment 'DPI服务器IP',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制，例如：httpget=0x0300',
   filecreate_time      bigint not null comment '文件创建时间,UTC格式',
   filereceived_time    bigint not null comment '文件接收时间,UTC格式',
   file_size            bigint not null comment '文件大小,单位KB',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) comment '区域ID',
   software_provider    varchar(30) comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (file_name)
);

alter table zf_v2_monitor_receivedfile_detail comment '接收文件监控详细表';

drop table if exists zf_v2_monitor_receivedfile_min;

/*==============================================================*/
/* Table: zf_v2_monitor_receivedfile_min                        */
/*==============================================================*/
create table zf_v2_monitor_receivedfile_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制，例如：httpget=0x0300',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_receivedfile_min comment '接收文件监控5分钟统计表';


drop table if exists zf_v2_monitor_receivedfile_h;

/*==============================================================*/
/* Table: zf_v2_monitor_receivedfile_h                          */
/*==============================================================*/
create table zf_v2_monitor_receivedfile_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制，例如：httpget=0x0300',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_receivedfile_h comment '接收文件监控小时统计表';


drop table if exists zf_v2_monitor_receivedfile_d;

/*==============================================================*/
/* Table: zf_v2_monitor_receivedfile_d                          */
/*==============================================================*/
create table zf_v2_monitor_receivedfile_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制，例如：httpget=0x0300',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_receivedfile_d comment '接收文件监控天统计表';

drop table if exists zf_v2_monitor_createfile_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_createfile_detail                       */
/*==============================================================*/
create table zf_v2_monitor_createfile_detail
(
   file_name            varchar(100) not null comment '文件名',
   server_ip            varchar(100) not null comment '服务器IP',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息',
   file_time            bigint not null comment '文件时间,UTC格式',
   file_size            bigint not null comment '文件大小,单位KB',
   file_record          bigint not null comment '文件记录数',
   create_time          datetime not null comment '创建时间',
   primary key (file_name)
);

alter table zf_v2_monitor_createfile_detail comment '生成文件监控详细表';


drop table if exists zf_v2_monitor_createfile_min;

/*==============================================================*/
/* Table: zf_v2_monitor_createfile_min                          */
/*==============================================================*/
create table zf_v2_monitor_createfile_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   file_record          bigint not null comment '文件记录数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type)
);

alter table zf_v2_monitor_createfile_min comment '生成文件监控5分钟统计表';

drop table if exists zf_v2_monitor_createfile_h;

/*==============================================================*/
/* Table: zf_v2_monitor_createfile_h                            */
/*==============================================================*/
create table zf_v2_monitor_createfile_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   file_record          bigint not null comment '文件记录数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type)
);

alter table zf_v2_monitor_createfile_h comment '生成文件监控小时统计表';

drop table if exists zf_v2_monitor_createfile_d;

/*==============================================================*/
/* Table: zf_v2_monitor_createfile_d                            */
/*==============================================================*/
create table zf_v2_monitor_createfile_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   file_record          bigint not null comment '文件记录数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type)
);

alter table zf_v2_monitor_createfile_d comment '生成文件监控天统计表';

drop table if exists zf_v2_monitor_uploaddfile_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_uploaddfile_detail                      */
/*==============================================================*/
create table zf_v2_monitor_uploaddfile_detail
(
   file_name            varchar(100) not null comment '文件名',
   server_ip            varchar(100) not null comment '服务器IP',
   received_ip          varchar(100) comment '接收服务器IP',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息,0x0300=HTTPGET文件',
   fileupload_time      bigint not null comment '文件上报时间,UTC格式',
   file_size            bigint not null comment '文件大小,单位KB',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) comment '区域ID',
   software_provider    varchar(30) comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (file_name)
);

alter table zf_v2_monitor_uploaddfile_detail comment '上报文件监控详细表';

drop table if exists zf_v2_monitor_uploaddfile_min;

/*==============================================================*/
/* Table: zf_v2_monitor_uploaddfile_min                         */
/*==============================================================*/
create table zf_v2_monitor_uploaddfile_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息,0x0300=HTTPGET文件',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_uploaddfile_min comment '上报文件监控5分钟统计表';


drop table if exists zf_v2_monitor_uploaddfile_h;

/*==============================================================*/
/* Table: zf_v2_monitor_uploaddfile_h                           */
/*==============================================================*/
create table zf_v2_monitor_uploaddfile_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息,0x0300=HTTPGET文件',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_uploaddfile_h comment '上报文件监控小时统计表';

drop table if exists zf_v2_monitor_uploaddfile_d;

/*==============================================================*/
/* Table: zf_v2_monitor_uploaddfile_d                           */
/*==============================================================*/
create table zf_v2_monitor_uploaddfile_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息,0x0300=HTTPGET文件',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   file_num             int not null comment '文件数',
   file_size            bigint not null comment '文件大小,单位KB',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_uploaddfile_d comment '上报文件监控天统计表';

drop table if exists zf_v2_monitor_socket_save_d;

drop table if exists zf_v2_monitor_socket_save_h;

drop table if exists zf_v2_monitor_savedata_h;

/*==============================================================*/
/* Table: zf_v2_monitor_savedata_h                              */
/*==============================================================*/
create table zf_v2_monitor_savedata_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   packettype           int not null comment '数据类型,根据规范定义',
   packetsubtype        int not null comment '数据子类型,根据规范定义',
   savenum              bigint not null default 0 comment '保存记录数',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, packettype, packetsubtype, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_savedata_h comment '保存数据监控小时统计表';


drop table if exists zf_v2_monitor_savedata_d;

/*==============================================================*/
/* Table: zf_v2_monitor_savedata_d                              */
/*==============================================================*/
create table zf_v2_monitor_savedata_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   packettype           int not null comment '数据类型,根据规范定义',
   packetsubtype        int not null comment '数据子类型,根据规范定义',
   savenum              bigint not null default 0 comment '保存记录数',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, packettype, packetsubtype, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_savedata_d comment '保存数据监控天统计表';



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


drop table if exists ZF_V2_POLICY_FLOWSIGN;

/*==============================================================*/
/* Table: ZF_V2_POLICY_FLOWSIGN                                 */
/*==============================================================*/
create table ZF_V2_POLICY_FLOWSIGN
(
   MESSAGE_NO           decimal(10) not null comment '策略号',
   APPTYPE              numeric(5,0) not null comment '应用类型',
   APPID                numeric(5,0) not null comment '应用编号',
   APPNAME              varchar(100) comment '应用名称,APPID=0有效',
   QOS_LABEL_UP         numeric(5,0) not null comment '针对本应用上行流量的差异化标记值',
   QOS_LABEL_DN         numeric(5,0) not null comment '针对本应用下行流量的差异化标记值',
   primary key (MESSAGE_NO)
);

alter table ZF_V2_POLICY_FLOWSIGN comment '通用流量标记策略';

drop table if exists ZF_V2_POLICY_DDOS;

/*==============================================================*/
/* Table: ZF_V2_POLICY_DDOS                                     */
/*==============================================================*/
create table ZF_V2_POLICY_DDOS
(
   DDOS_ID              int not null auto_increment comment '主键',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   APP_ATTACK_TYPE      numeric(5,0) not null comment '攻击类型',
   ATTACK_THRESHOLD     numeric(10,0) not null comment '判定为攻击的阈值，单位是 PPS(Packet PerSecond)',
   ATTACK_CONTROL       numeric(10,0) not null comment '对攻击进行控制的阈值，单位是 PPS(PacketPer Second)',
   primary key (DDOS_ID)
);

alter table ZF_V2_POLICY_DDOS comment '应用层 DDoS 异常流量管理策略';

drop table if exists ZF_V2_POLICY_WEBPUSH;

/*==============================================================*/
/* Table: ZF_V2_POLICY_WEBPUSH                                  */
/*==============================================================*/
create table ZF_V2_POLICY_WEBPUSH
(
   Adv_ID               int not null auto_increment comment '推送信息编号 唯一键',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   ADV_TYPE             numeric(1,0) not null default 1 comment '推送信息类型 1电信自营应用 2主动推送 3Host触发 4关键字触发',
   ADV_WHITEHOSTLISTID  bigint not null default 0 comment '信息推送网站白名单 0表示没有',
   TRIGGER_HOSTLISTID   varchar(1024) not null comment '触发信息推送的Host列表编号 空表示没有 多个以逗号隔开',
   TRIGGER_KWLISTID     varchar(1024) not null comment '触发关键词列表编号 空表示没有 多个以逗号隔开',
   ADVFRAME_URL         varchar(500) not null comment '信息框架服务器推送的URL',
   ADV_TOKEN            numeric(5,0) not null comment '推送配额 取值1-255',
   ADV_DELAY            numeric(5,0) not null comment '信息推送时间,单位秒, 取值0-255',
   primary key (Adv_ID)
);

alter table ZF_V2_POLICY_WEBPUSH comment 'Web信息推送策略';


drop table if exists ZF_V2_SHARE_MANAGE;

/*==============================================================*/
/* Table: ZF_V2_SHARE_MANAGE                                    */
/*==============================================================*/
create table ZF_V2_SHARE_MANAGE
(
   SHAREID              bigint not null auto_increment comment '1拖N策略ID',
   MESSAGE_NO           decimal(10) comment '策略号',
   MESSAGE_NAME         varchar(50) not null comment '策略名称',
   C_TYPE               numeric(5,0) not null comment '1拖N用户管理策略',
   R_STARTTIME          numeric(10,0) not null comment '生效开始时间，格式UTC',
   R_ENDTIME            numeric(10,0) not null comment '生效结束时间，格式UTC',
   C_TIME               bigint not null comment '管理时间段',
   ADV_URL              varchar(500) not null comment '警示信息URL',
   DROP_PROTOCOL        numeric(5,0) not null comment '待管理的应用类型',
   DROP_RATIO           numeric(5,0) not null comment '非法用户包丢弃比例',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (SHAREID)
);

alter table ZF_V2_SHARE_MANAGE comment '1拖N用户管理策略';



drop table if exists zf_v2_share_manage_usergroup;

/*==============================================================*/
/* Table: zf_v2_share_manage_usergroup                          */
/*==============================================================*/
create table zf_v2_share_manage_usergroup
(
   SHAREID              bigint not null comment '1拖N策略ID',
   USER_TYPE            numeric(5,0) not null comment '用户类型 0-全局策略 1-账号用户 2-静态IP用户 3-用户组',
   USER_GROUP_ID        bigint comment '用户组ID',
   USER_NAME            varchar(100) comment '用户帐号或静态IP地址'
);

alter table zf_v2_share_manage_usergroup comment '1拖N用户管理策略绑定用户组';


drop table if exists ZF_V2_POLICY_COMMON;

/*==============================================================*/
/* Table: ZF_V2_POLICY_COMMON                                   */
/*==============================================================*/
create table ZF_V2_POLICY_COMMON
(
   MESSAGE_NO           decimal(10) not null comment '策略号',
   WEB_HIT_THRESHOLD    numeric(5,0) not null default 0 comment '针对 Web 类流量进行统计的点击阈值',
   KW_THREHOLDS         numeric(5,0) not null default 0 comment '统计关键词的搜索阈值',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (MESSAGE_NO)
);

alter table ZF_V2_POLICY_COMMON comment '通用参数设置';


drop table if exists ZF_V2_POLICY_COMMON_SE;

/*==============================================================*/
/* Table: ZF_V2_POLICY_COMMON_SE                                */
/*==============================================================*/
create table ZF_V2_POLICY_COMMON_SE
(
   SE_ID                int not null auto_increment comment '搜索引擎ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   SENAME               varchar(200) not null comment '搜索引擎名字,比如：www.baidu.com',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (SE_ID)
);

alter table ZF_V2_POLICY_COMMON_SE comment '通用参数设置-搜索引擎';


drop table if exists ZF_V2_POLICY_COMMON_COOKIE;

/*==============================================================*/
/* Table: ZF_V2_POLICY_COMMON_COOKIE                            */
/*==============================================================*/
create table ZF_V2_POLICY_COMMON_COOKIE
(
   COOKIE_ID            int not null auto_increment comment 'cookieID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   COOKIE_HOST_NAME     varchar(200) not null comment '指定上报 Cookie的网站名，比如：www.163.com',
   COOKIE_KEY_VALUE     varchar(200) not null comment '指定 Cookie 的 Key取值',
   OPERATE_TYPE         decimal(1) not null comment '操作类型：1:添加 2:修改 3:删除',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (COOKIE_ID)
);

alter table ZF_V2_POLICY_COMMON_COOKIE comment '通用参数设置-COOKIE';


drop table if exists ZF_V2_POLICY_FLOWMIRROR;

/*==============================================================*/
/* Table: ZF_V2_POLICY_FLOWMIRROR                               */
/*==============================================================*/
create table ZF_V2_POLICY_FLOWMIRROR
(
   POLICY_ID            int not null auto_increment comment '策略ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   MAPPTYPE             numeric(5,0) not null comment '被镜像的应用类型',
   MAPPID               numeric(5,0) not null comment '被镜像的应用编号',
   MAPPNAME             varchar(50) not null comment '被镜像的应用名称',
   M_STARTTIME          numeric(10,0) not null comment '镜像起始时间',
   M_ENDTIME            numeric(10,0) not null comment '镜像终止时间',
   M_GROUPNO            numeric(2,0) not null comment '镜像端口组',
   M_DIRECTION          numeric(1,0) not null comment '镜像方向',
   MFLOWADD             numeric(1,0) not null comment '是否需要转发整条流 0-只镜像符合规则的数据包 1-镜像符合规则的数据包所在的整条流',
   M_CUTLENGTH          numeric(10,0) not null comment '镜像报文截长',
   primary key (POLICY_ID)
);

alter table ZF_V2_POLICY_FLOWMIRROR comment '流量镜像策略';


drop table if exists ZF_V2_POLICY_FLOWMIRROR_IP;

/*==============================================================*/
/* Table: ZF_V2_POLICY_FLOWMIRROR_IP                            */
/*==============================================================*/
create table ZF_V2_POLICY_FLOWMIRROR_IP
(
   POLICY_ID            int not null comment '策略ID',
   IPTYPE               numeric(1,0) not null comment 'ip段类型 0-源IP地址段 1-目的IP地址段',
   IPADDR               varchar(100) not null comment 'IP地址',
   IPPREFIXLEN          numeric(5,0) not null comment 'IP前缀长度'
);

alter table ZF_V2_POLICY_FLOWMIRROR_IP comment '流量镜像源/目的IP段表';


drop table if exists ZF_V2_POLICY_FLOWMIRROR_PORT;

/*==============================================================*/
/* Table: ZF_V2_POLICY_FLOWMIRROR_PORT                          */
/*==============================================================*/
create table ZF_V2_POLICY_FLOWMIRROR_PORT
(
   POLICY_ID            int not null comment '策略ID',
   PORTTYPE             numeric(1,0) not null comment '端口段类型 0-源端口段 1-目的端口段',
   PORTSTART            numeric(5,0) not null comment '起始端口',
   PORTEND              numeric(5,0) not null comment 'j结束端口'
);

alter table ZF_V2_POLICY_FLOWMIRROR_PORT comment '流量镜像源/目的端口表';


drop table if exists ZF_V2_POLICY_FLOWMIRROR_DATA;

/*==============================================================*/
/* Table: ZF_V2_POLICY_FLOWMIRROR_DATA                          */
/*==============================================================*/
create table ZF_V2_POLICY_FLOWMIRROR_DATA
(
   POLICY_ID            int not null comment '策略ID',
   MATCHOFFSET          numeric(5,0) not null comment '特征字偏移量',
   MATCHCONTENT         varchar(500) not null comment '匹配字符串'
);

alter table ZF_V2_POLICY_FLOWMIRROR_DATA comment '流量镜像的特征字段表';


drop table if exists ZF_V2_POLICY_APPDEFINED;

/*==============================================================*/
/* Table: ZF_V2_POLICY_APPDEFINED                               */
/*==============================================================*/
create table ZF_V2_POLICY_APPDEFINED
(
   DEFINED_ID           int not null auto_increment comment '自定义ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   APPTYPE              numeric(5,0) not null comment '自定义应用所属应用类型',
   APPID                numeric(5,0) not null comment '自定义的应用编号',
   APPNAME              varchar(200) not null comment '自定义应用名称',
   primary key (DEFINED_ID)
);

alter table ZF_V2_POLICY_APPDEFINED comment '应用特征自定义策略';


drop table if exists ZF_V2_POLICY_APPDEFINED_QUINTET;

/*==============================================================*/
/* Table: ZF_V2_POLICY_APPDEFINED_QUINTET                       */
/*==============================================================*/
create table ZF_V2_POLICY_APPDEFINED_QUINTET
(
   QUINTET_ID           int not null auto_increment comment '五元组ID',
   DEFINED_ID           int not null comment '自定义ID',
   U_PROTOCOL           numeric(2,0) not null comment '本应用所采用协议类型 6 TCP 17UDP   0x06 TCP 0x11 UDP',
   U_SOURCEIP           varchar(100) not null comment '标识本应用的源IP地址',
   U_SOURCEPORT         numeric(5,0) not null comment '标识本应用的源端口(TCP/UDP)',
   U_DESTIP             varchar(100) not null comment '标识本应用目的IP地址',
   U_DESTPORT           numeric(5,0) not null comment '标识本应用目的端口(TCP/UDP)',
   primary key (QUINTET_ID)
);

alter table ZF_V2_POLICY_APPDEFINED_QUINTET comment '应用特征自定义策略-五元组信息';


drop table if exists ZF_V2_POLICY_APPDEFINED_KEY;

/*==============================================================*/
/* Table: ZF_V2_POLICY_APPDEFINED_KEY                           */
/*==============================================================*/
create table ZF_V2_POLICY_APPDEFINED_KEY
(
   QUINTET_ID           int not null comment '五元组ID',
   U_OFFSETBASE         numeric(1,0) not null comment '标识本应用的关键字段偏移起始位置 0从头起算 1从尾巴起算',
   U_OFFSET             numeric(5,0) not null comment '标识本应用的关键字段偏移',
   U_KWVALUE            varchar(500) not null comment '标识本应用的关键字段取值'
);

alter table ZF_V2_POLICY_APPDEFINED_KEY comment '应用特征自定义策略-关键字';

