FROM lemonrains/tomcat7

MAINTAINER lemon <lemonrains@163.com>

WORKDIR /root/

RUN mkdir /root/jenkins && mkdir /root/jenkins/jenkins_home

ADD http://mirrors.jenkins-ci.org/war/latest/jenkins.war /root/jenkins/jenkins.war
ADD run_jenkins.sh /root/run/run_jenkins.sh

ENV JENKINS_HOME /root/jenkins/jenkins_home

RUN chmod +x /root/run/*.sh

CMD ["/root/run/run_jenkins.sh"]
