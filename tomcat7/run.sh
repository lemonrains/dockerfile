#!/bin/bash

if [ ! -f /root/.tomcat_admin_created ]; then
   /root/create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run
