#启动tomcat#
docker run -d -p 80:8080 -e TOMCAT_PASS="mypass" --link mysql:mysql --name=tomcat lemonrains/tomcat7

+ -d 后台运行
+ -p 端口映射
+ -e 设置环境变量，TOMCAT_PASS：自定义admin密码
+ --name 指定容器名字
+ --link 连接外部容器    如mysql

#启动mysql服务#
docker run -it -e MYSQL_DATABASE=ssat -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 --name mysql lemonrains/mysql
+ -d 后台运行
+ -p 端口映射
+ --name 指定容器名字
+ -e 设置环境变量，MYSQL_DATABASE:数据库名   MYSQL_ROOT_PASSWORD:自定义root密码

#启动jenkins
docker run -it -p 8080:8080 -v /media/psf/Home/Downloads/jenkins_home:/var/jenkins_home  -v /media/psf/Home/Documents/repo:/var/jenkins_home/.m2/repository   --link mysql:mysql --name jenkins lemonrains/jenkins
+ -p 端口映射
+ --name 指定容器名字
+ --link 连接外部容器    如mysql
+ -v 设置磁盘映射
	/var/jenkins_home/.m2/repository 	maven的仓库路径
	/var/jenkins_home					jenkins的home路径，为了跟容器脱离

#下面是官网的镜像
+ dockerimage
    https://registry.hub.docker.com/repos/library/

+ docker documnet
    https://github.com/docker-library/official-images

+ dockerfile的Github
    https://github.com/docker-library