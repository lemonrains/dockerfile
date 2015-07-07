mysql
#docker官网提供#
###dockerimage地址###
https://registry.hub.docker.com/_/mysql/
###官网使用说明###
https://github.com/docker-library/docs/tree/master/mysql
###dockfile内容###
https://github.com/docker-library/mysql/tree/c361883449d1db5a2291c3f8eb54fba60be4d5b5

#环境变量#
##MYSQL_ROOT_PASSWORD##
ROOT用户的密码设置

##MYSQL_DATABASE##
数据库的设置，如果没有会自动创建，如果指定了用户名和密码，会默认给该用户赋予超级权限针对该db

##MYSQL_USER, MYSQL_PASSWORD#
设置自定义用户名和密码


##MYSQL_ALLOW_EMPTY_PASSWORD##
是否允许用户匿名登录
