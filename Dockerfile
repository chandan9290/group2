# Use an official Tomcat runtime as the base image
FROM tomcat:9.0-jre11

# Set environment variables for Tomcat (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_BASE /usr/local/tomcat

# Copy your JSP files and any necessary assets to the webapps directory
COPY your-web-app.war $CATALINA_HOME/webapps/

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]

