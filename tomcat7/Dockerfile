FROM tomcat:7

MAINTAINER lemon

WORKDIR /root/

RUN apt-get update && \
    apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD create_tomcat_admin_user.sh /root/create_tomcat_admin_user.sh
ADD run.sh /root/run.sh

RUN chmod +x /root/*.sh

CMD ["/root/run.sh"]
