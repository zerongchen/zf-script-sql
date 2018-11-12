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