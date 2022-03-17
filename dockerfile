FROM ubuntu
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install openssh-server -y
ADD apache-tomcat-9.0.60.tar.gz /root
COPY target/flipkart-1.0-SNAPSHOT.jar /root/apache-tomcat-9.0.60/webapps
CMD service ssh start && /root/apache-tomcat-9.0.60/bin/startup.sh && /bin/bash
