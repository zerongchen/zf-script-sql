drop table if exists zf_v2_monitor_task_alarm;

/*==============================================================*/
/* Table: zf_v2_monitor_task_alarm                              */
/*==============================================================*/
create table zf_v2_monitor_task_alarm
(
   ALARM_ID             int not null auto_increment comment '告警id',
   MONITOR_TASK_ID      bigint not null comment '监控项任务ID',
   TASK_ID              bigint not null comment '子任务ID',
   TASK_TYPE            int not null comment '任务类型,定义见设计',
   TASK_SUBTYPE         int not null comment '任务子类型,定义见设计',
   ALARM_CONTENT        varchar(500) not null comment '告警信息',
   ALARM_PARAMS         varchar(500) comment '告警项参数',
   ALARM_TIME           datetime not null comment '告警时间',
   DEAL_STATUS          smallint not null default 0 comment '处理状态,0=未处理，1=已处理',
   DEAL_SOLUTION        varchar(500) comment '处理方案',
   DEAL_USER            varchar(100) comment '处理人',
   DEAL_TIME            datetime comment '处理时间',
   primary key (ALARM_ID),
   key AK_Key_2 (TASK_SUBTYPE)
);

alter table zf_v2_monitor_task_alarm comment '任务监控告警表';


drop table if exists zf_v2_monitor_task_info;

/*==============================================================*/
/* Table: zf_v2_monitor_task_info                               */
/*==============================================================*/
create table zf_v2_monitor_task_info
(
   MONITOR_TASK_ID      bigint not null comment '监控项任务ID',
   MONITOR_NAME         varchar(200) not null comment '监控项名称',
   MONITOR_PARAMS       varchar(500) comment '监控项参数',
   TASK_TYPE            int not null comment '任务类型',
   TASK_SUBTYPE         int not null comment '任务子类型',
   TASK_PARAMS          blob comment '任务参数',
   STATUS               smallint not null comment '处理状态,0=正常，1=异常',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '最后更新时间',
   primary key (MONITOR_TASK_ID)
);

alter table zf_v2_monitor_task_info comment '任务监控信息表';


drop table if exists zf_v2_monitor_task_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_task_detail                             */
/*==============================================================*/
create table zf_v2_monitor_task_detail
(
   TASK_ID              bigint not null comment '子任务ID',
   MONITOR_TASK_ID      bigint not null comment '监控项任务ID',
   TASK_NAME            varchar(200) not null comment '子任务名称',
   MONITOR_PARAMS       varchar(500) comment '监控项参数',
   TASK_PARAMS          blob comment '任务参数',
   DATA_ID              bigint comment '任务对应表主键',
   TASK_TYPE            int not null comment '任务类型',
   TASK_SUBTYPE         int not null comment '任务子类型',
   STATUS               smallint not null comment '处理状态,3=失败，4=成功，5=超时',
   CREATETIME           datetime not null comment '任务创建时间',
   COMPLETETIME         datetime not null comment '任务完成时间',
   primary key (TASK_ID),
   key AK_Key_2 (MONITOR_TASK_ID)
);

alter table zf_v2_monitor_task_detail comment '任务监控详细表';



drop table if exists zf_v2_monitor_task_file;

/*==============================================================*/
/* Table: zf_v2_monitor_task_file                               */
/*==============================================================*/
create table zf_v2_monitor_task_file
(
   FILE_ID              bigint not null auto_increment comment '文件ID',
   MONITOR_TASK_ID      bigint not null comment '监控项任务ID',
   TASK_ID              bigint not null comment '任务ID',
   RECORD_NUM1          int comment '文件记录数1',
   RECORD_NUM2          int comment '文件记录数2',
   RECORD_NUM3          int comment '文件记录数3',
   RECORD_NUM4          int comment '文件记录数4',
   SERVER_IP            varchar(100) not null comment '文件所在服务器IP',
   FILE_NAME            varchar(200) not null comment '文件名',
   STATUS               smallint comment '文件状态：0=生成文件，1=上报失败，2=上报成功',
   TIMEOUT_FLAG         smallint comment '超时标记：0-未超时，1-超时',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '最后修改时间',
   TIMEOUT_TIME         datetime comment '超时更新时间',
   primary key (FILE_ID),
   key AK_Key_2 (MONITOR_TASK_ID)
);

alter table zf_v2_monitor_task_file comment '任务监控文件表';


drop table if exists zf_v2_push_message;

/*==============================================================*/
/* Table: zf_v2_push_message                                    */
/*==============================================================*/
create table zf_v2_push_message
(
   pushid               bigint not null auto_increment comment '推送ID',
   push_type            int not null comment '推送类型，1-邮件、2-短信、3-微信',
   subject_type         int not null comment '主题类型，1=系统，2=拨测',
   alarm_message        blob not null comment '告警消息',
   mail_subject         varchar(500) comment '邮件主题',
   push_content         blob not null comment '推送内容',
   push_status          int not null default 0 comment '推送状态，0-未推送、1-推送中、2-推送成功、3-推送失败''',
   repush_times         int not null default 0 comment '重发次数',
   server_ip            varchar(100) not null comment '调用服务器',
   create_time          datetime not null comment '创建时间',
   update_time          datetime not null comment '更新时间',
   primary key (pushid)
);

alter table zf_v2_push_message comment '告警推送信息表';



drop table if exists zf_v2_monitor_createfile_d;

drop table if exists zf_v2_monitor_createfile_detail;

drop table if exists zf_v2_monitor_createfile_h;

drop table if exists zf_v2_monitor_createfile_min;

drop table if exists zf_v2_monitor_radius_pcap_d;

drop table if exists zf_v2_monitor_radius_pcap_detail;

drop table if exists zf_v2_monitor_radius_pcap_h;

drop table if exists zf_v2_monitor_radius_pcap_min;

drop table if exists zf_v2_monitor_radius_policy_d;

drop table if exists zf_v2_monitor_radius_policy_detail;

drop table if exists zf_v2_monitor_radius_policy_h;

drop table if exists zf_v2_monitor_radius_policy_min;

drop table if exists zf_v2_monitor_radius_relay_d;

drop table if exists zf_v2_monitor_radius_relay_detail;

drop table if exists zf_v2_monitor_radius_relay_h;

drop table if exists zf_v2_monitor_radius_relay_min;

drop table if exists zf_v2_monitor_receivedfile_d;

drop table if exists zf_v2_monitor_receivedfile_detail;

drop table if exists zf_v2_monitor_receivedfile_h;

drop table if exists zf_v2_monitor_receivedfile_min;

drop table if exists zf_v2_monitor_socket_received_d;

drop table if exists zf_v2_monitor_socket_received_detail;

drop table if exists zf_v2_monitor_socket_received_h;

drop table if exists zf_v2_monitor_savedata_d;

drop table if exists zf_v2_monitor_savedata_h;

drop table if exists zf_v2_monitor_uploaddfile_d;

drop table if exists zf_v2_monitor_uploaddfile_detail;

drop table if exists zf_v2_monitor_uploaddfile_h;


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

/*==============================================================*/
/* Table: zf_v2_monitor_radius_pcap_d                           */
/*==============================================================*/
create table zf_v2_monitor_radius_pcap_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   capturepacketnum     bigint not null comment '采集包数',
   validpacketnum       bigint not null comment '有效包数',
   invalidpacketnum     bigint not null comment '无效包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_pcap_d comment 'Radius数据采集监控天统计表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_pcap_detail                      */
/*==============================================================*/
create table zf_v2_monitor_radius_pcap_detail
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   server_ip            varchar(100) not null comment '采集服务器IP',
   capturepacketnum     bigint not null comment '采集包数',
   validpacketnum       bigint not null comment '有效包数',
   invalidpacketnum     bigint not null comment '无效包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, server_ip)
);

alter table zf_v2_monitor_radius_pcap_detail comment 'Radius数据采集监控详细表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_pcap_h                           */
/*==============================================================*/
create table zf_v2_monitor_radius_pcap_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   capturepacketnum     bigint not null comment '采集包数',
   validpacketnum       bigint not null comment '有效包数',
   invalidpacketnum     bigint not null comment '无效包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_pcap_h comment 'Radius数据采集监控小时统计表';

/*==============================================================*/
/* Table: zf_v2_monitor_radius_pcap_min                         */
/*==============================================================*/
create table zf_v2_monitor_radius_pcap_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   capturepacketnum     bigint not null comment '采集包数',
   validpacketnum       bigint not null comment '有效包数',
   invalidpacketnum     bigint not null comment '无效包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_pcap_min comment 'Radius数据采集监控5分钟统计表';

/*==============================================================*/
/* Table: zf_v2_monitor_radius_policy_d                         */
/*==============================================================*/
create table zf_v2_monitor_radius_policy_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_policy_d comment 'Radius数据policy下发监控天统计表';

/*==============================================================*/
/* Table: zf_v2_monitor_radius_policy_detail                    */
/*==============================================================*/
create table zf_v2_monitor_radius_policy_detail
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   src_ip               varchar(100) not null comment '采集服务器IP',
   dst_ip               varchar(100) not null comment '目地服务器IP',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, src_ip, dst_ip)
);

alter table zf_v2_monitor_radius_policy_detail comment 'Radius数据policy下发监控详细表';

/*==============================================================*/
/* Table: zf_v2_monitor_radius_policy_h                         */
/*==============================================================*/
create table zf_v2_monitor_radius_policy_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_policy_h comment 'Radius数据policy下发监控小时统计表';

/*==============================================================*/
/* Table: zf_v2_monitor_radius_policy_min                       */
/*==============================================================*/
create table zf_v2_monitor_radius_policy_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_policy_min comment 'Radius数据policy下发监控5分钟统计表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_relay_d                          */
/*==============================================================*/
create table zf_v2_monitor_radius_relay_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   receivednum          bigint not null comment '接收包数',
   parsesuccessnum      bigint not null comment '解析成功包数',
   parsefailednum       bigint not null comment '解析失败包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_relay_d comment 'Radius数据中转监控天统计表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_relay_detail                     */
/*==============================================================*/
create table zf_v2_monitor_radius_relay_detail
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   src_ip               varchar(100) not null comment '源服务器IP',
   dst_ip               varchar(100) not null comment '目地服务器IP,写kafka时，该字段为“KAFKA”',
   receivednum          bigint not null comment '接收包数',
   parsesuccessnum      bigint not null comment '解析成功包数',
   parsefailednum       bigint not null comment '解析失败包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, src_ip, dst_ip)
);

alter table zf_v2_monitor_radius_relay_detail comment 'Radius数据中转监控详细表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_relay_h                          */
/*==============================================================*/
create table zf_v2_monitor_radius_relay_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   receivednum          bigint not null comment '接收包数',
   parsesuccessnum      bigint not null comment '解析成功包数',
   parsefailednum       bigint not null comment '解析失败包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_relay_h comment 'Radius数据中转监控小时统计表';


/*==============================================================*/
/* Table: zf_v2_monitor_radius_relay_min                        */
/*==============================================================*/
create table zf_v2_monitor_radius_relay_min
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   receivednum          bigint not null comment '接收包数',
   parsesuccessnum      bigint not null comment '解析成功包数',
   parsefailednum       bigint not null comment '解析失败包数',
   sendnum              bigint not null comment '发送包数',
   sendsuccessnum       bigint not null comment '发送成功的包数',
   sendfailednum        bigint not null comment '发送失败的包数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time)
);

alter table zf_v2_monitor_radius_relay_min comment 'Radius数据中转监控5分钟统计表';


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

/*==============================================================*/
/* Table: zf_v2_monitor_socket_received_d                       */
/*==============================================================*/
create table zf_v2_monitor_socket_received_d
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   packetsubtype        int not null comment '数据类型,根据规范定义',
   receivednum          bigint not null comment '接收记录数',
   validrecordernum     bigint not null comment '有效记录数',
   invalidrecordernum   bigint not null comment '无效记录数',
   writerkafkanum       bigint not null comment '写入kafka记录数',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, packetsubtype, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_socket_received_d comment 'Socket接收数据监控天统计表';


/*==============================================================*/
/* Table: zf_v2_monitor_socket_received_detail                  */
/*==============================================================*/
create table zf_v2_monitor_socket_received_detail
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   policy_ip            varchar(100) not null comment '接收服务器IP',
   dpi_ip               varchar(100) not null comment 'DPI服务器IP',
   packetsubtype        int not null comment '数据类型,根据规范定义',
   receivednum          bigint not null comment '接收记录数',
   validrecordernum     bigint not null comment '有效记录数',
   invalidrecordernum   bigint not null comment '无效记录数',
   writerkafkanum       bigint not null comment '写入kafka记录数',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) comment '区域ID',
   software_provider    varchar(30) comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, policy_ip, dpi_ip, packetsubtype)
);

alter table zf_v2_monitor_socket_received_detail comment 'Socket接收数据监控详细表';

/*==============================================================*/
/* Table: zf_v2_monitor_socket_received_h                       */
/*==============================================================*/
create table zf_v2_monitor_socket_received_h
(
   stat_time            bigint not null comment '统计时间,UTC格式',
   packetsubtype        int not null comment '数据类型,根据规范定义',
   receivednum          bigint not null comment '接收记录数',
   validrecordernum     bigint not null comment '有效记录数',
   invalidrecordernum   bigint not null comment '无效记录数',
   writerkafkanum       bigint not null comment '写入kafka记录数',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) not null comment '区域ID',
   software_provider    varchar(30) not null comment '软件厂家编号',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, packetsubtype, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_socket_received_h comment 'Socket接收数据监控小时统计表';


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
   warn_file_num        int not null default 0 comment '异常文件数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_uploaddfile_d comment '上报文件监控天统计表';



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
   warn_file_num        int not null default 0 comment '异常文件数',
   create_time          datetime not null comment '创建时间',
   primary key (stat_time, file_type, probe_type, area_id, software_provider)
);

alter table zf_v2_monitor_uploaddfile_h comment '上报文件监控小时统计表';


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


drop table if exists zf_v2_monitor_uploaddfile_warn_detail;

/*==============================================================*/
/* Table: zf_v2_monitor_uploaddfile_warn_detail                 */
/*==============================================================*/
create table zf_v2_monitor_uploaddfile_warn_detail
(
   file_name            varchar(100) not null comment '文件名',
   server_ip            varchar(100) not null comment '服务器IP',
   received_ip          varchar(100) comment '接收服务器IP',
   file_type            int not null comment '文件类型。按照U接口定义packettype的十进制,例如0x03ff=AAA生成文件信息,0x0102=全业务流量生成文件信息,0x01c4=业务流量流向生成文件信息,0x0300=HTTPGET文件',
   fileupload_time      bigint not null comment '文件上报时间,UTC格式',
   probe_type           tinyint not null comment '设备类型',
   area_id              varchar(100) comment '区域ID',
   software_provider    varchar(30) comment '软件厂家编号',
   warn_type            int not null comment '异常类型,0=稽核反馈异常，1=文件接收延时，2=文件上报延时，3=文件大小不一致',
   warn_desc            varchar(512) comment '描述',
   create_time          datetime not null comment '创建时间',
   primary key (file_name)
);

alter table zf_v2_monitor_uploaddfile_warn_detail comment '上报异常文件监控详细表';




