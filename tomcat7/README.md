#官网提供的版本(有各个版本可以选择)#

##images地址##
https://registry.hub.docker.com/_/tomcat/

##各个版本的dockfile##
https://github.com/docker-library/official-images/blob/355e63c6edddb58eb44e3233c7f30a220d0c3862/library/tomcat

##此为修改版，能够动态生成用户密码##
https://registry.hub.docker.com/u/cloudesire/tomcat/

#版本补充说明#
该版本的image是基于jdk7,tomcat7的版本，tomcat默认自动启动，并且随机生成密码

##可配置参数##
TOMCAT_PASS   设置密码

    docker run -d -p 8080:8080 -e TOMCAT_PASS="mypass" cloudesire/tomcat

