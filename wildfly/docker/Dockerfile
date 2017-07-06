FROM jboss/wildfly

VOLUME ["/var/log/"]
EXPOSE 8080 9990
RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#70365 --silent
 ADD wildfly-helloworld-jdg.war  /opt/jboss/wildfly/standalone/deployments/
  ADD startServer.bash  /opt/jboss/wildfly/bin/
  user root 
  RUN chown jboss "/opt/jboss/wildfly/bin/startServer.bash"
  RUN chmod +x "/opt/jboss/wildfly/bin/startServer.bash"
 user jboss
 CMD ["/opt/jboss/wildfly/bin/startServer.bash" ]

