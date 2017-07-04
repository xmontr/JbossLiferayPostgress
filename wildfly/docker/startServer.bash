#!/bin/bash

now=`date "+%Y-%m-%d.%H%M"`
FILE=/var/log/jbossout.log

if [ -f "${FILE}" ]; then
   mv ${FILE}   ${FILE}-${now}
fi




exec 1> $FILE
exec 2> $FILE 

echo " starting wildfly in standalone mode "
/opt/jboss/wildfly/bin/standalone.sh, -b  0.0.0.0 -bmanagement 0.0.0.0   


