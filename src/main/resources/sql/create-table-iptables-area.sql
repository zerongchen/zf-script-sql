/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/3/1 10:10:11                            */
/*==============================================================*/


drop table if exists ZF_V2_GEN_IP_AREA;

/*==============================================================*/
/* Table: ZF_V2_GEN_IP_AREA                                     */
/*==============================================================*/
create table ZF_V2_GEN_IP_AREA
(
   AREA_ID              int not null comment '主键AREA_ID:二进制转成十进制',
   P_AREA_ID            int not null default 0 comment '父类AREA_ID:二进制转成十进制(0=该节点为父类)',
   AREA_NAME            varchar(128) not null comment '区域名称',
   IS_PARENT            tinyint(1) not null default 0 comment '是否为父类:0=否，1=是',
   primary key (AREA_ID)
);

alter table ZF_V2_GEN_IP_AREA comment '省市区域码和IP的对应表';

