FROM ubuntu
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install openssh-server -y
RUN apt-get install vim -y
ADD apache-tomcat-9.0.60.tar.gz /root
ENV PATH=$PATH:/root/apache-tomcat-9.0.60/bin
COPY target/flipkart.war /root/apache-tomcat-9.0.60/webapps
CMD service ssh start && startup.sh && /bin/bash
