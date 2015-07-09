FROM jenkins

MAINTAINER lemon <lemonrains@163.com>

USER root

RUN  \
           wget  http://archive.apache.org/dist/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz \
           && tar xvf apache-maven-3.2.2-bin.tar.gz \
           && mv apache-maven-3.2.2 maven \
           && mv maven /usr/local/ \
           && rm apache-maven-3.2.2-bin.tar.gz

ENV M2_HOME /usr/local/maven
ENV PATH $M2_HOME/bin:$PATH

USER jenkins
