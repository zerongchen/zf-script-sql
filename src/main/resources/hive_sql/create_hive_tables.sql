drop table job_ubas_appflow;
create external table job_ubas_appflow
(
   r_starttime bigint,
   r_endtime bigint,
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
   area_id STRING,
   receivedtime BIGINT,
   receivedip STRING,
   sendip STRING,
   software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
  

drop table job_ubas_traffic;
CREATE external TABLE job_ubas_traffic
(
  r_starttime bigint,
  r_endtime bigint,  
  srcgroup_id INT,
  dstgroup_id INT,
  apptype INT,
  appid INT,
  appname STRING,
  apptraffic_up BIGINT,
  apptraffic_dn BIGINT,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt BIGINT, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_webflow;
create external table job_ubas_webflow
(
  r_starttime bigint,
  r_endtime bigint,
  usergroupno bigint,  
  sitename  STRING,
  sitetype  INT,
  sitehitfreq  BIGINT,
  sitetraffic_up  BIGINT,
  sitetraffic_dn  BIGINT,
  packetsubtype   INT,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_userapp;
create external table job_ubas_userapp
(
  r_starttime bigint,
  r_endtime bigint,
  apptype int,
  appid   int,
  appname string,
  usertype        int,
  useraccount     string,
  usagecount      bigint,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_ddos;
CREATE external TABLE job_ubas_ddos
(
  attack_starttime bigint,
  attack_endtime bigint, 
  pusergrougno int,	
  appattacktype int,
  appattacktraffic bigint,
  appattackrate  bigint,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;

drop table job_ubas_ddos_area;
CREATE external TABLE job_ubas_ddos_area
(
  attack_starttime bigint,
  attack_endtime bigint, 
  pusergrougno int,
  appattacktype int,  
  attackareaname string,
  attacknum int,
  attacktraffic bigint,
  sourceip_num int,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_illegalroutes;
CREATE external TABLE job_ubas_illegalroutes
(
  r_starttime     bigint,
  r_endtime       bigint,
  nodeip          string,
  nodeintraffic   bigint,
  nodeouttraffic  bigint,
  cp              string,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_webpush;
CREATE external TABLE job_ubas_webpush
(
  usertype   int,
  username   STRING,
  adv_id     int,
  adv_time   bigint,
  insert_url  STRING,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_share_kw;
CREATE external TABLE job_ubas_share_kw
(
  r_starttime     bigint,
  r_endtime       bigint,
  useraccount     STRING,
  userip          STRING,
  qqids           STRING,
  natips          STRING,
  cookies         STRING,
  devnames        STRING,
  osnames         STRING,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_share_result;
CREATE external TABLE job_ubas_share_result
(
  r_starttime     bigint,
  r_endtime       bigint,
  useraccount     STRING,
  userip          STRING,  
  hostnum         int,
  probe_type INT,
  area_id STRING,
  receivedtime BIGINT,
  receivedip STRING,
  sendip STRING,
  software_provider STRING
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_ubas_cpsp;
CREATE external TABLE job_ubas_cpsp
(
  r_starttime     bigint,
  r_endtime       bigint,
  destinationip string,
  protocoltype int,
  port int,
  apptraffic_up bigint,
  apptraffic_dn bigint,
  hitfreq bigint,
  apptype int,
  appid int,
  appname string,
  probe_type int,
  area_id string,
  receivedtime bigint,
  receivedip string,
  sendip string,
  software_provider string
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;


drop table job_radius_log;
CREATE external TABLE job_radius_log
(
  Create_Time	 bigint,
  Create_Ip      String,
  User_Name      String,
  NAS_IP_Address String,
  NAS_Port       String,
  Framed_IP_Address String,
  Filter_Id         String,
  Vendor_Specific   String,
  NAS_Identifier    String,
  Acct_Status_Type  int,
  Acct_Input_Octets bigint,
  Acct_Output_Octets  bigint,
  Acct_Session_Id     String,
  Acct_Session_Time   bigint,
  Acct_Input_Packets  bigint,
  Acct_Output_Packets bigint,
  Acct_Terminate_Cause  int,
  Event_Timestamp  bigint,
  Framed_Interface_Id    String,
  Framed_IPv6_Prefix     String,
  Delegated_IPv6_Prefix  String,
  Nat_Framed_IP_Address  String,
  Start_Port             String,
  End_Port               String
)
PARTITIONED BY (dt STRING, hour INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|' STORED AS TEXTFILE;
