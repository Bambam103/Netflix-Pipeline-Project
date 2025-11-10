# Step 1: Use official Tomcat image
FROM tomcat:9.0-jdk17

# Step 2: Remove default ROOT app from Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Step 3: Copy your WAR file from Jenkins build folder to Tomcat webapps
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose port 8080 for web access
EXPOSE 8080

# Step 5: Start Tomcat automatically when container runs
CMD ["catalina.sh", "run"]
