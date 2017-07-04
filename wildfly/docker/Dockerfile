FROM jboss/wildfly
user root
RUN ln -sf /dev/stdout /var/log/jbossout.log 
RUN ln -sf /dev/stderr /var/log/jbosserr.log
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
 ADD wildfly-helloworld-jdg.war  /opt/jboss/wildfly/standalone/deployments/
 CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0" ]

