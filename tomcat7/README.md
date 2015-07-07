1：tomcat（均包含了jdk，并且可以自由选择版本）
#标准版（提供各个版本）
https://registry.hub.docker.com/_/tomcat/
#相应各个版本的dockfile
https://github.com/docker-library/official-images/blob/355e63c6edddb58eb44e3233c7f30a220d0c3862/library/tomcat


#此为修改版，可以参考做法，动态生成用户密码
https://registry.hub.docker.com/u/cloudesire/tomcat/

#tomcat可配置参数
TOMCAT_PASS   设置密码

docker run -d -p 8080:8080 -e TOMCAT_PASS="mypass" cloudesire/tomcat

