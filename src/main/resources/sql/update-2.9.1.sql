alter table zf_dict_system_config modify config_value varchar(500) comment '参数值';


insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius.customer.threadnum', '3', 'Radius数据处理线程数', 0, null, 1, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('system.deploy.province.area', '440000', '系统部署省份(行政区域)', 0, null, 1, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('system.deploy.province.iparea', '00100', '系统部署省份(IP地址区域)', 0, null, 1, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('system.deploy.province.shortname', 'GD', '系统部署省份简称', 0, null, 1, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('system.deploy.province.provider', 'CTSI', '省汇聚厂家代码', 0, null, 1, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('ubas.td.export.path', '/home/at_dev/td_upload', 'TD文件生成路径', 0, null, 1, 'admin', 'admin', now(), now());

delete from zf_dict_system_config where config_key='upload_file';
delete from zf_dict_system_config where config_key='policy.auto.switch';
delete from zf_dict_system_config where config_key='ubas.appflow.export.path';
delete from zf_dict_system_config where config_key='ubas.traffic.export.path';


-----------

insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.run_mode', '0', '运行模式', 3, '0,kafka\n1,udt', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.local_listen_port', '1850', '本机监听端口', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.thread_pool_size', '6', '发送线程池的大小', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.thread_queue_size', '500000', '发送线程队列大小', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.dispatch_queue_size', '200000', '分发队列大小', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.system_log_name', 'system', '日志文件名称', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.system_log_level', 'INFO', '日志过滤关键字', 2, 'ERROR,ERROR\nWARNING,WARNING\nINFO,INFO\nDEBUG,DEBUG', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.upload_log_name', 'uploadlog', '上报日志过滤关键字', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.upload_log_level', 'INFO', '上报日志的过滤关键字', 2, 'ERROR,ERROR\nWARNING,WARNING\nINFO,INFO\nDEBUG,DEBUG', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.zookeeper_switch', '1', 'zookeeper开关', 3, '0,关闭\n1,打开', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.zookeeper_root_dir', '/radius_relay', 'zookeeper中程序配置目录', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.virtual_node_count', '32', 'zookeeper负载均衡算法节点数', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.redis_subscribe_channel', 'channel_radius_relay', '监听通道', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.transfer_methed', '1', '收包模式', 3, '0,SOCK_DGRAM\n1,SOCK_stream', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.kafka_switch', '1', 'kafka开关', 3, '0,关闭\n1,打开', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.kksink_configfile', '/home/at_dev/zf_home/config/kksink.conf', 'kafka配置文件路径', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.monitor_topic_name', 'zfmessagequeue', '监控信息topic', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.radius_topic_name', 'zfradiusqueue', 'radius日志topic', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.online_user_mod', '7', '在线用户存储hash表数量', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.monitor_dir', '/home/at_dev/zf_home/monitor', '监控信息输出目录', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.monitor_interval', '300', '监控信息输出间隔时间(秒)', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.bill_switch', '0', '清单文件开关', 3, '0,关闭\n1,打开', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.BillPath', '../bill', '清单文件总目录', 0, null, 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.online_switch', '1', '在线用户存储开关', 3, '0,关闭\n1,打开', 3, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('radius_relay.RadiusRecvType', '0', 'radius用户信息接收方式', 2, '0,radius和redis采集\n1,radius采集\n2,redis采集', 3, 'admin', 'admin', now(), now());

----------
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SystemFlag', '0', '部署系统', 3, '0,省汇聚\n1,CU系统', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.is4G', '0', '是否只转发4G信令包', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.LocalLnDPIPort', '50000', '服务端监听DPI端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.LocalLnIDCPort', '60000', '服务端监听IDC端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.enableZookeeper', '0', 'zookeeper开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.zookeeper_root_dir', '/center_policy', 'zookeeper中注册目录', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.virtualNodeCount', '32', 'zookeeper负载均衡算法节点数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.redis_subscribe_channel', 'StrategySendChannel', '接收策略频道', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.redis_publish_channel', 'EquipmentStatusQueryChannel', '发布策略频道', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.policy_hash_name_pre', 'Strategy', '策略hash容器名称前缀', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.kafkawitch', '1', 'kafka开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.KksinkConfigfile', '/home/at_dev/zf_home/config/kksink.conf', 'kafka配置文件路径', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UDTopicName', 'zfud1logqueue', 'ud1消息topic', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.StatUDTopicName', 'zfmessagequeue', '监控信息topic', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SysLog_Path', '/home/at_dev/zf_home/logs/center-policy', '系统日志的路径', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SysLog_Level', 'INFO', '系统日志级别', 2, 'ERROR,ERROR\nWARNING,WARNING\nINFO,INFO\nDEBUG,DEBUG', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SysLog_KeeyDay', '10', '日志最大保存天数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SysLog_Debug', '0', 'Debug日志开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.ScanDPIInfoInterval', '10', '扫描DPI信息表时间间隔表(秒)', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.AAASendSwitch', '1', 'radius包转送开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.ThreadPoolNum', '20', '线程池中的线程数量', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.ThreadQeueueSize', '100000', '线程池中每个线程队列大小', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.MonitorDir', '/home/at_dev/zf_home/monitor', '监控信息输出目录', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.Monitor_inteval', '300', '监控信息输出间隔时间', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.Syn_OnOff', '1', '策略同步开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.DPISynFlag', '0', 'DPI同步策略标识', 3, '0,全量同步\n1,增量同步', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.IDCSynFlag', '0', 'IDC同步策略标识', 3, '0,全量同步\n1,增量同步', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SyncPolicyNum', '60000', '同步策略一次发送的个数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.DealSynReqThreadNum', '1', '处理同步请求线程数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SendPolicyThreadNum', '1', '发送策略的线程数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SendPolicyPKQueueSize', '100000', '策略发送队列的大小', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RecvPolicyPKQueueSize', '20000', 'DPI请求包队列大小', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RecvAAAPKQueueSize', '500000', 'AAA信息接收队列大小', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.SendAAAPKQueueSize', '100000', 'AAA信息发送队列大小 ', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UserNameToLower', '1', '用户名转换成小写', 3, '0,不转\n1,转换', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UserNameTail', '@163.gd', '用户名加上后缀', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RecvDataType', '0', '接收数据类型', 3, '0,标准接口AAA上下线信息\n1,原始radius信息', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.AAAStaticInfoPort', '50001', 'AAA静态用户信息接收端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.AAAOnOffInfoPort', '1813', 'AAA上下线用户信息接收端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RadiusACKLnPort', '1890', 'radius信息ACK接收端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RadiusACKOnOff', '0', 'radius信息ACK开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RadiusWriteLogTime', '300', 'AAA写日志分文件时长(秒)', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.WayOfCommunication', '2', '接收AAA方式', 2, '0,udp通信方式 \n1,udt通信方式 \n2,kafka方式', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.TransferMethed', '1', '收包模式', 3, '0,SOCK_DGRAM\n1,SOCK_STREAM', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.consumer_topic', 'zfradiusqueue', 'radius日志topic', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.group_id', '1', 'radius队列消费组ID', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.kafka_time_outs', '300000', 'kafka消费超时时间(ms)', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.AAASynSwitch', '0', 'AAA同步开关', 3, '0,redis方式\n1,旧内存方式', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UseDeamon', '0', '使用精灵进程开关', 3, '0,关闭\n1,打开', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.MaxUbasUsers', '3000000', '支持最大用户数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RadiusLogKeeyDay', '10', 'Radius日志保存天数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RadiusSavePerFile', '5000000', 'radius文件切换数量', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.BillPath', '../bill', '清单主目录', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.BatchPolicyAckFlag', '0', '批量发送是否需要接收ACK', 3, '0,需要\n1,不需要', 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.DPIUDThreadNum', '1', 'DPI类型UD数据的线程数据', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.IDCUDThreadNum', '1', 'IDC类型UD数据的线程数据', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.StatsFilePort', '50001', 'DPI类型UD数据接收端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.ISMSUDLnPort', '60001', 'IDC类型UD数据接收端口', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.RecordsPerDataFile', '200000', 'UD文件切换记录数', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UDReceiverTimeout', '30', 'UD数据接收超时时间(秒)', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UDFileTimeout', '180', 'UD文件切换超时时间(秒)', 0, null, 4, 'admin', 'admin', now(), now());
insert into zf_dict_system_config(config_key,config_value,config_desc,input_type,input_items,model_type,CREATE_OPER,MODIFY_OPER,CREATE_TIME,MODIFY_TIME)
values('center_policy.UDFileDirCollect', '/home/bsmp/bill', '数据文件存放目录', 0, null, 4, 'admin', 'admin', now(), now());


commit;