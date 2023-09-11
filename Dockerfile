FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp
EXPOSE 8080
CMD ["catalina.sh", "run"]
