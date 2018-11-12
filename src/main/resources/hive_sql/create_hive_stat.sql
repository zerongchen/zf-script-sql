drop table job_ubas_appflow_h;
create external table job_ubas_appflow_h
(
   stat_time INT,
   usergroupno bigint,
   apptype int,
   appid int,
   appname String,
   appusernum bigint,
   apptraffic_up bigint,
   apptraffic_dn bigint,
   apppacketsnum bigint,
   appsessionsnum bigint,
   appnewsessionnum  bigint,
   probe_type INT,
   area_id STRING   
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_appflow_d;
create external table job_ubas_appflow_d
(
   stat_time INT,
   usergroupno bigint,
   apptype int,
   appid int,
   appname String,
   appusernum bigint,
   apptraffic_up bigint,
   apptraffic_dn bigint,
   apppacketsnum bigint,
   appsessionsnum bigint,
   appnewsessionnum  bigint,
   probe_type INT,
   area_id STRING   
)
PARTITIONED BY (dt STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_appflow_w;
create external table job_ubas_appflow_w
(
   stat_time INT,
   usergroupno bigint,
   apptype int,
   appid int,
   appname String,
   appusernum bigint,
   apptraffic_up bigint,
   apptraffic_dn bigint,
   apppacketsnum bigint,
   appsessionsnum bigint,
   appnewsessionnum  bigint,
   probe_type INT,
   area_id STRING   
)
PARTITIONED BY (dt STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_appflow_m;
create external table job_ubas_appflow_m
(
   stat_time INT,
   usergroupno bigint,
   apptype int,
   appid int,
   appname String,
   appusernum bigint,
   apptraffic_up bigint,
   apptraffic_dn bigint,
   apppacketsnum bigint,
   appsessionsnum bigint,
   appnewsessionnum  bigint,
   probe_type INT,
   area_id STRING   
)
PARTITIONED BY (dt STRING)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_traffic_h;
CREATE external TABLE job_ubas_traffic_h
(
  stat_time INT,
  srcgroup_id INT,
  dstgroup_id INT,
  apptype INT,
  appid INT,
  appname STRING,
  apptraffic_up BIGINT,
  apptraffic_dn BIGINT,
  probe_type INT,
  area_id STRING,
  src_areasubid1 STRING,
  src_areasubid2 STRING,
  src_areasubid3 STRING,
  src_areasubid4 STRING,
  dst_areasubid1 STRING,
  dst_areasubid2 STRING,
  dst_areasubid3 STRING,
  dst_areasubid4 STRING
)
PARTITIONED BY (dt BIGINT, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_traffic_d;
CREATE external TABLE job_ubas_traffic_d
(
  stat_time INT,
  srcgroup_id INT,
  dstgroup_id INT,
  apptype INT,
  appid INT,
  appname STRING,
  apptraffic_up BIGINT,
  apptraffic_dn BIGINT,
  probe_type INT,
  area_id STRING,
  src_areasubid1 STRING,
  src_areasubid2 STRING,
  src_areasubid3 STRING,
  src_areasubid4 STRING,
  dst_areasubid1 STRING,
  dst_areasubid2 STRING,
  dst_areasubid3 STRING,
  dst_areasubid4 STRING
)
PARTITIONED BY (dt BIGINT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_traffic_w;
CREATE external TABLE job_ubas_traffic_w
(
  stat_time INT,
  srcgroup_id INT,
  dstgroup_id INT,
  apptype INT,
  appid INT,
  appname STRING,
  apptraffic_up BIGINT,
  apptraffic_dn BIGINT,
  probe_type INT,
  area_id STRING,
  src_areasubid1 STRING,
  src_areasubid2 STRING,
  src_areasubid3 STRING,
  src_areasubid4 STRING,
  dst_areasubid1 STRING,
  dst_areasubid2 STRING,
  dst_areasubid3 STRING,
  dst_areasubid4 STRING
)
PARTITIONED BY (dt BIGINT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_traffic_m;
CREATE external TABLE job_ubas_traffic_m
(
  stat_time INT,
  srcgroup_id INT,
  dstgroup_id INT,
  apptype INT,
  appid INT,
  appname STRING,
  apptraffic_up BIGINT,
  apptraffic_dn BIGINT,
  probe_type INT,
  area_id STRING,
  src_areasubid1 STRING,
  src_areasubid2 STRING,
  src_areasubid3 STRING,
  src_areasubid4 STRING,
  dst_areasubid1 STRING,
  dst_areasubid2 STRING,
  dst_areasubid3 STRING,
  dst_areasubid4 STRING
)
PARTITIONED BY (dt BIGINT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;