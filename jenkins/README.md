#说明
该版本继承官网最新的jenkins

#运行命令
    docker run -it -p 8080:8080 -v /media/psf/Home/Downloads/jenkins_home:/var/jenkins_home  -v /media/psf/Home/Documents/repo:/var/jenkins_home/.m2/repository  lemonrains/jenkins

#最新的jenkins下载地址
http://mirrors.jenkins-ci.org/war/latest/jenkins.war

#1 修改jenkins的根目录，默认地在C:\Documents and Settings\AAA\.jenkins 。

.jenkins

├─jobs
│  └─JavaHelloWorld
│      ├─builds
│      │  ├─2011-11-03_16-48-17
│      │  ├─2011-11-03_16-49-05
│      │  ├─2011-11-03_16-49-29
│      │  ├─2011-11-03_17-01-49
│      │  └─2011-11-03_17-11-42
│      └─workspace
│          ├─build
│          │  ├─classes
│          │  │  └─oata
│          │  └─jar
│          └─src
│              └─oata
├─plugins
├─usercontent
├─war

可以通过设置环境变量来修改，例如：

set JENKINS_HOME=C:\jenkins

然后重新启动jenkins。



#2 备份和恢复jenkins

 只需要备份JENKINS_HOME下的所有文件和文件夹，恢复的时候需要先停止jenkins。



#3 移动，删除或修改jobs

对于移动或删除jobs，只需要简单地移动或删除%JENKINS_HOEM%\jobs目录。

对于修改jobs的名字，只需要简单地修改%JENKINS_HOEM%\jobs下对应job的文件夹的名字。

对于不经常使用的job，只需要对%JENKINS_HOEM%\jobs下对应的jobs的目录zip或tar后存储到其他的地方。



#4 可以在jenkins的url中执行一些命令来操作jenkins，如下
http://[jenkins-server]/[command] 命令可以为：

exit shutdown jenkins
restart restart jenkins
reload to reload the configuration
#5 Jenkins 启动时的命令行参数
--httpPort=$HTTP_PORT，用来设置jenkins运行时的web端口。
--httpsPort=$HTTP_PORT，表示使用https协议。
--httpListenAddress=$HTTP_HOST，用来指定jenkins监听的ip范围，默认为所有的ip都可以访问此jenkins server。


#6 修改jenkins的timezone

如果jenkins所在的server的timezone不同于用户的timezone，这时候需要修改jenkins的timezone，需要在jenkins启动的时候增加下列参数-Dorg.apache.commons.jelly.tags.fmt.timeZone=TZ


#7 最好通过一个脚本来启动jenkins，确保jenkins每次都运行在相同的环境下，例如
startjenkins.bat
set JENKINS_HOME=c:\jenkins
cd /d %JENKINS_HOME%
java -jar %JENKINS_HOME%\jenkins.war --httpPort=8000

#8 jenkins在后台运行
如果jenkins是部署在servlet容器中，例如apache，tomcat中。因为servlet容器一般都在后台运行了，所以jenkins也就已经在后台运行了。
对于windows用户需要在jenkins的管理页面中点击insall as windows service来将jenkins部署为service。 但是感觉比较好的方法还是手动将启动jenkins的脚本部署为windows service，从而可以更灵活地设置更多的参数。

#9 jenkins的系统信息

可以在jenkins的管理页面下的系统信息中，查看所有的jenkins的信息，例如jenkins的启动配置，所依赖的系统的环境变量，所安装的plugins。

#10 jenkins内置的环境变量

BUILD_NUMBER， 唯一标识一次build，例如23；
BUILD_ID，基本上等同于BUILD_NUMBER，但是是字符串，例如2011-11-15_16-06-21；
JOB_NAME， job的名字，例如JavaHelloWorld；
BUILD_TAG， 作用同BUILD_ID,BUILD_NUMBER,用来全局地唯一标识一此build，例如jenkins-JavaHelloWorld-23；
EXECUTOR_NUMBER， 例如0；
NODE_NAME，slave的名字，例如MyServer01；
NODE_LABELS，slave的label，标识slave的用处，例如JavaHelloWorld MyServer01；
JAVA_HOME， java的home目录，例如C:\Program Files (x86)\Java\jdk1.7.0_01；
WORKSPACE，job的当前工作目录，例如c:\jenkins\workspace\JavaHelloWorld；
HUDSON_URL = JENKINS_URL， jenkins的url，例如http://localhost:8000/ ；
BUILD_URL，build的url 例如http://localhost:8000/job/JavaHelloWorld/23/；
JOB_URL， job的url，例如http://localhost:8000/job/JavaHelloWorld/；
SVN_REVISION，svn 的revison， 例如4；
