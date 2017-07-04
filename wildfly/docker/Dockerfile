FROM jboss/wildfly

RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
 ADD wildfly-helloworld-jdg.war  /opt/jboss/wildfly/standalone/deployments/
  ADD startServer.bash  /opt/jboss/wildfly/bin/
 
 CMD ["/opt/jboss/wildfly/bin/startServer.bash" ]

