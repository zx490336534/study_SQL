SELECT FOUND_ROWS();
SELECT COUNT(1) FROM TmpVideo;

#开启数据库日志
set GLOBAL general_log = 1;
#数据库日志保存到数据库里，默认表在mysql.general_log
set GLOBAL log_output = 'TABLE';
#查登陆失败日志的语句
SELECT * FROM mysql.general_log where command_type='Connect'
