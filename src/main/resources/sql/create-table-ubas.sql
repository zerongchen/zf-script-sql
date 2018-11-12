drop table if exists zf_v2_ubas_appflow_h;

/*==============================================================*/
/* Table: zf_v2_ubas_appflow_h                                  */
/*==============================================================*/
create table zf_v2_ubas_appflow_h
(
   stat_time            bigint not null comment '统计时间,格式2018030109',
   usergroupno          bigint not null comment '用户组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   appusernum           bigint not null comment '应用的用户数',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   apppacketsnum        bigint not null comment '报文数',
   appsessionsnum       bigint not null comment '并发Session数',
   appnewsessionnum     bigint not null comment '新建Session数',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_appflow_h comment '全业务流量统计小时表';


drop table if exists zf_v2_ubas_appflow_d;

/*==============================================================*/
/* Table: zf_v2_ubas_appflow_d                                  */
/*==============================================================*/
create table zf_v2_ubas_appflow_d
(
   stat_time            bigint not null comment '统计时间,格式20180301',
   usergroupno          bigint not null comment '用户组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   appusernum           bigint not null comment '应用的用户数',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   apppacketsnum        bigint not null comment '报文数',
   appsessionsnum       bigint not null comment '并发Session数',
   appnewsessionnum     bigint not null comment '新建Session数',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_appflow_d comment '全业务流量统计天表';


drop table if exists zf_v2_ubas_appflow_w;

/*==============================================================*/
/* Table: zf_v2_ubas_appflow_w                                  */
/*==============================================================*/
create table zf_v2_ubas_appflow_w
(
   stat_time            bigint not null comment '统计时间,周一,格式20180326',
   usergroupno          bigint not null comment '用户组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   appusernum           bigint not null comment '应用的用户数',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   apppacketsnum        bigint not null comment '报文数',
   appsessionsnum       bigint not null comment '并发Session数',
   appnewsessionnum     bigint not null comment '新建Session数',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_appflow_w comment '全业务流量统计周表';


drop table if exists zf_v2_ubas_appflow_m;

/*==============================================================*/
/* Table: zf_v2_ubas_appflow_m                                  */
/*==============================================================*/
create table zf_v2_ubas_appflow_m
(
   stat_time            bigint not null comment '统计时间,格式201803',
   usergroupno          bigint not null comment '用户组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   appusernum           bigint not null comment '应用的用户数',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   apppacketsnum        bigint not null comment '报文数',
   appsessionsnum       bigint not null comment '并发Session数',
   appnewsessionnum     bigint not null comment '新建Session数',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_appflow_m comment '全业务流量统计月表';



drop table if exists zf_v2_ubas_traffic_h;

/*==============================================================*/
/* Table: zf_v2_ubas_traffic_h                                  */
/*==============================================================*/
create table zf_v2_ubas_traffic_h
(
   stat_time            bigint not null comment '统计时间,格式2018030109',
   srcgroup_id          bigint not null comment '源区域组ID',
   dstgroup_id          bigint not null comment '目的区域组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   src_areasubid1       varchar(20) not null comment '源数据类别',
   src_areasubid2       varchar(20) not null comment '源区域类别/运营商ID',
   src_areasubid3       varchar(20) not null comment '源省份ID/大洲ID',
   src_areasubid4       varchar(20) not null comment '源城域网ID/国家ID',
   dst_areasubid1       varchar(20) not null comment '目的数据类别',
   dst_areasubid2       varchar(20) not null comment '目的区域类别/运营商ID',
   dst_areasubid3       varchar(20) not null comment '目的省份ID/大洲ID',
   dst_areasubid4       varchar(20) not null comment '目的城域网ID/国家ID',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_traffic_h comment '流量流向统计小时表';


drop table if exists zf_v2_ubas_traffic_d;

/*==============================================================*/
/* Table: zf_v2_ubas_traffic_d                                  */
/*==============================================================*/
create table zf_v2_ubas_traffic_d
(
   stat_time            bigint not null comment '统计时间,格式20180301',
   srcgroup_id          bigint not null comment '源区域组ID',
   dstgroup_id          bigint not null comment '目的区域组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   src_areasubid1       varchar(20) not null comment '源数据类别',
   src_areasubid2       varchar(20) not null comment '源区域类别/运营商ID',
   src_areasubid3       varchar(20) not null comment '源省份ID/大洲ID',
   src_areasubid4       varchar(20) not null comment '源城域网ID/国家ID',
   dst_areasubid1       varchar(20) not null comment '目的数据类别',
   dst_areasubid2       varchar(20) not null comment '目的区域类别/运营商ID',
   dst_areasubid3       varchar(20) not null comment '目的省份ID/大洲ID',
   dst_areasubid4       varchar(20) not null comment '目的城域网ID/国家ID',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_traffic_d comment '流量流向统计天表';


drop table if exists zf_v2_ubas_traffic_w;

/*==============================================================*/
/* Table: zf_v2_ubas_traffic_w                                  */
/*==============================================================*/
create table zf_v2_ubas_traffic_w
(
   stat_time            bigint not null comment '统计时间,周一,格式20180326',
   srcgroup_id          bigint not null comment '源区域组ID',
   dstgroup_id          bigint not null comment '目的区域组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   src_areasubid1       varchar(20) not null comment '源数据类别',
   src_areasubid2       varchar(20) not null comment '源区域类别/运营商ID',
   src_areasubid3       varchar(20) not null comment '源省份ID/大洲ID',
   src_areasubid4       varchar(20) not null comment '源城域网ID/国家ID',
   dst_areasubid1       varchar(20) not null comment '目的数据类别',
   dst_areasubid2       varchar(20) not null comment '目的区域类别/运营商ID',
   dst_areasubid3       varchar(20) not null comment '目的省份ID/大洲ID',
   dst_areasubid4       varchar(20) not null comment '目的城域网ID/国家ID',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_traffic_w comment '流量流向统计周表';


drop table if exists zf_v2_ubas_traffic_m;

/*==============================================================*/
/* Table: zf_v2_ubas_traffic_m                                  */
/*==============================================================*/
create table zf_v2_ubas_traffic_m
(
   stat_time            bigint not null comment '统计时间,格式201803',
   srcgroup_id          bigint not null comment '源区域组ID',
   dstgroup_id          bigint not null comment '目的区域组ID',
   apptype              int not null comment '应用类型',
   appid                int not null comment '应用ID',
   appname              varchar(100) comment '应用名称',
   apptraffic_up        bigint not null comment '上行流量,单位K Bytes',
   apptraffic_dn        bigint not null comment '下行流量,单位K Bytes',
   probe_type           int not null comment '设备类型,0=DPI,1=EU',
   area_id              varchar(100) comment '区域,DPI：区域, EU：机房',
   src_areasubid1       varchar(20) not null comment '源数据类别',
   src_areasubid2       varchar(20) not null comment '源区域类别/运营商ID',
   src_areasubid3       varchar(20) not null comment '源省份ID/大洲ID',
   src_areasubid4       varchar(20) not null comment '源城域网ID/国家ID',
   dst_areasubid1       varchar(20) not null comment '目的数据类别',
   dst_areasubid2       varchar(20) not null comment '目的区域类别/运营商ID',
   dst_areasubid3       varchar(20) not null comment '目的省份ID/大洲ID',
   dst_areasubid4       varchar(20) not null comment '目的城域网ID/国家ID',
   key AK_Key_1 (stat_time)
);

alter table zf_v2_ubas_traffic_m comment '流量流向统计月表';
