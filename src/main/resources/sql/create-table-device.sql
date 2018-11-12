drop table if exists idc_isms_base_house;

/*==============================================================*/
/* Table: idc_isms_base_house                                   */
/*==============================================================*/
create table idc_isms_base_house
(
   house_id             varchar(100) not null comment '机房编码',
   house_name           varchar(256) not null comment '机房名称',
   create_time          datetime not null comment '创建时间',
   primary key (house_id)
);

alter table idc_isms_base_house comment '机房信息';


drop table if exists zf_v2_dev_dpi_rec_info;

/*==============================================================*/
/* Table: zf_v2_dev_dpi_rec_info                                */
/*==============================================================*/
create table zf_v2_dev_dpi_rec_info
(
   DPI_ID               int not null auto_increment comment 'DPI设备ID',
   MESSAGE_NO           decimal(10) not null comment '策略号',
   DPI_DEV_NAME         varchar(100) not null comment 'DPI设备名称',
   DPI_IP               varchar(100) not null comment 'DPI设备IP',
   DPI_PORT             int not null comment 'DPI设备端口',
   DPI_SITE_NAME        varchar(100) not null comment '站点',
   PROBE_TYPE           int not null comment '0:DPI  1:EU',
   AREA_CODE            int comment '区域',
   IDC_HOUSE_ID         varchar(100) comment '汇聚机房填NonHouse_Id',
   POLICY_IP            varchar(100) comment '关联的policyIp,手动模式需要设置',
   RADIUS_FLAG          int comment '是否接收radius,0=不接收，1=接收',
   primary key (DPI_ID)
);

alter table zf_v2_dev_dpi_rec_info comment 'DPI接收设备信息';


drop table if exists zf_v2_dev_dpi_rec_house;

/*==============================================================*/
/* Table: zf_v2_dev_dpi_rec_house                               */
/*==============================================================*/
create table zf_v2_dev_dpi_rec_house
(
   DPI_ID               int not null comment 'DPI设备ID',
   HOUSE_ID             varchar(100) not null comment '机房编码'
);

alter table zf_v2_dev_dpi_rec_house comment 'DPI通用设备关联机房';


drop table if exists zf_v2_dev_dpi_upload_info;

/*==============================================================*/
/* Table: zf_v2_dev_dpi_upload_info                             */
/*==============================================================*/
create table zf_v2_dev_dpi_upload_info
(
   dpi_id               int not null auto_increment comment '设备ID',
   start_ip             varchar(100) not null comment '起始IP',
   end_ip               varchar(100) not null comment '结束IP',
   probe_type           int not null comment '设备类型 0:DPI  1:EU',
   area_id              varchar(100) not null comment 'DPI：地市码  EU：机房编码',
   software_provider    varchar(30) not null comment '软件厂家',
   CREATE_OPER          varchar(100) not null comment '创建人',
   MODIFY_OPER          varchar(100) not null comment '修改人',
   CREATE_TIME          datetime not null comment '创建时间',
   MODIFY_TIME          datetime not null comment '修改时间',
   primary key (dpi_id)
);

alter table zf_v2_dev_dpi_upload_info comment 'DPI上报设备信息';


drop table if exists zf_v2_dev_zongfen;

/*==============================================================*/
/* Table: zf_v2_dev_zongfen                                     */
/*==============================================================*/
create table zf_v2_dev_zongfen
(
   ZONGFEN_ID           int not null auto_increment comment '综分设备ID',
   ZONGFEN_IP           varchar(100) not null comment '综分设备IP',
   ISVIRTUALIP          smallint comment '是否虚拟IP,0=否， 1=是',
   ZONGFEN_PORT         int not null comment 'SOCKET端口',
   ZONGFEN_FTP_PORT     int comment 'SFTP端口',
   ZONGFEN_NAME         varchar(100) not null comment '综分设备名称',
   CREATE_OPER          varchar(100) not null,
   CREATE_TIME          datetime not null,
   MODIFY_OPER          varchar(100) not null,
   MODIFY_TIME          datetime not null,
   primary key (ZONGFEN_ID)
);

alter table zf_v2_dev_zongfen comment '综分设备信息';


drop table if exists zf_v2_dev_zongfen_user;

/*==============================================================*/
/* Table: zf_v2_dev_zongfen_user                                */
/*==============================================================*/
create table zf_v2_dev_zongfen_user
(
   ZONGFEN_ID           int comment '综分设备ID',
   PACKET_TYPE          numeric(5,0) not null comment 'UD报文类型,UD2=2, UD3=3,分类库=9',
   PACKET_SUBTYPE       numeric(5,0) not null comment 'Ud 报文子类型，UD2和UD3按规范，分类库=0',
   ZONGFEN_FTP_USER     varchar(100) comment 'SFTP用户名',
   ZONGFEN_FTP_PWD      varchar(50) comment 'SFTP密码'
);

alter table zf_v2_dev_zongfen_user comment '综分设备FTP用户名表';




drop table if exists zf_v2_dev_zongfen_rel;

/*==============================================================*/
/* Table: zf_v2_dev_zongfen_rel                                 */
/*==============================================================*/
create table zf_v2_dev_zongfen_rel
(
   ZONGFEN_ID           int comment '综分设备ID',
   IP                   varchar(100) comment '真实设备IP地址'
);

alter table zf_v2_dev_zongfen_rel comment '综分关联设备';


drop table if exists ZF_V2_DEV_DPI_QUERY;

/*==============================================================*/
/* Table: ZF_V2_DEV_DPI_QUERY                                   */
/*==============================================================*/
create table ZF_V2_DEV_DPI_QUERY
(
   MESSAGE_NO           decimal(10) not null comment '策略号',
   R_TYPE               int not null comment '设备类型,1=静态,2=动态',
   R_FREQ               int not null comment '上报周期',
   primary key (MESSAGE_NO)
);

alter table ZF_V2_DEV_DPI_QUERY comment 'DPI 设备状态查询';



drop table if exists ZF_V2_DEV_DPI_STATIC;

/*==============================================================*/
/* Table: ZF_V2_DEV_DPI_STATIC                                  */
/*==============================================================*/
create table ZF_V2_DEV_DPI_STATIC
(
   DeploySiteName       varchar(100) not null comment '部署站点名',
   SoftwareVersion      int not null comment 'DPI 软件版本号',
   Probe_Type           numeric(5,0) not null comment 'DPI采集类型',
   IDC_HouseID          varchar(100) not null comment '部署机房',
   Deploy_Mode          numeric(5,0) not null comment '部署模式',
   Total_Capability     int not null comment 'DPI设备总分析能力( 以Gbps为单位)，单向',
   SlotNum              numeric(5,0) not null comment 'DPI设备总槽位数',
   PreProcSlotNum       numeric(5,0) not null comment 'DPI设备预处理模块占用槽位数',
   AnalysisSlotNum      numeric(5,0) not null comment 'DPI设备分析模块占用槽位数',
   GPSlotNum            numeric(5,0) not null comment 'DPI通用(General Purpose)模块占用槽位数',
   MODIFY_TIME          datetime not null comment '上报时间',
   primary key (DeploySiteName)
);

alter table ZF_V2_DEV_DPI_STATIC comment 'DPI 设备状态查询回应-设备静态信息';


drop table if exists ZF_V2_DEV_DPI_STATIC_PORT;

/*==============================================================*/
/* Table: ZF_V2_DEV_DPI_STATIC_PORT                             */
/*==============================================================*/
create table ZF_V2_DEV_DPI_STATIC_PORT
(
   DeploySiteName       varchar(100) not null comment '部署站点名',
   PortNo               numeric(5,0) not null comment '本端口的编号',
   PortType             numeric(5,0) not null comment '本 DPI 设备现有端口类型',
   PortDescription      varchar(200) not null comment '本端口描述信息',
   M_LinkID             numeric(5,0) not null comment '本端口监控链路编号',
   M_LinkDesc           varchar(200) not null comment '监控链路描述信息',
   MODIFY_TIME          datetime not null comment '上报时间',
   primary key (PortNo)
);

alter table ZF_V2_DEV_DPI_STATIC_PORT comment 'DPI 设备状态查询回应(设备静态信息)-端口';



drop table if exists ZF_V2_DEV_DPI_DYNAMIC_PORT;

/*==============================================================*/
/* Table: ZF_V2_DEV_DPI_DYNAMIC_PORT                            */
/*==============================================================*/
create table ZF_V2_DEV_DPI_DYNAMIC_PORT
(
   PortNo               numeric(5,0) not null comment '端口编号',
   PortInfo             varchar(100) not null comment '端口描述信息',
   PortUsage            numeric(5,0) not null comment '本端口利用率',
   CREATE_TIME          datetime not null comment '上报时间'
);

alter table ZF_V2_DEV_DPI_DYNAMIC_PORT comment 'DPI 设备状态查询回应(设备动态信息)-端口';


drop table if exists ZF_V2_DEV_DPI_DYNAMIC_CPU;

/*==============================================================*/
/* Table: ZF_V2_DEV_DPI_DYNAMIC_CPU                             */
/*==============================================================*/
create table ZF_V2_DEV_DPI_DYNAMIC_CPU
(
   CPU_No               numeric(5,0) not null comment 'CPU 编号',
   CPU_Usage            numeric(5,0) not null comment '本 CPU 利用率',
   CREATE_TIME          datetime not null comment '上报时间'
);

alter table ZF_V2_DEV_DPI_DYNAMIC_CPU comment 'DPI 设备状态查询回应(设备动态信息)-CPU ';






