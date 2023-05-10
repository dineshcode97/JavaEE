FROM jboss/wildfly

# Set environment variables
ENV JAVA_OPTS="-Xms512m -Xmx1024m -Djava.net.preferIPv4Stack=true"

# Add your application WAR or EAR to the deployments directory
COPY JavaEEPractice.war /opt/jboss/wildfly/standalone/deployments/

# Expose the ports needed by your application
EXPOSE 8080 9990

# Set the default command to start Wildfly
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
