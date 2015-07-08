#!/bin/bash

if [ ! -f /root/run/.tomcat_admin_created ]; then
   /root/run/create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run

