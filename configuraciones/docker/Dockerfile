FROM centos

MAINTAINER jorge.yanez@desinseg.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat10
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.24/src/apache-tomcat-10.1.24-src.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-10.1.24-src/* /opt/tomcat/.

RUN mkdir /usr/java/
WORKDIR /usr/java 
RUN curl -O https://download.oracle.com/java/22/latest/jdk-22_linux-x64_bin.tar.gz
RUN tar xvfz jdk-22_linux*.tar.gz
RUN chmod a+x jdk-22.0.1/*

RUN echo "$(whereis java)"

#RUN apt-get install -y openjdk-17-jdk
#RUN java --version


WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/jorge2009/proyectoDevsu/tree/main/War/proyectoDevsu.war

EXPOSE 8090

WORKDIR /opt/tomcat/bin/
RUN chmod +x catalina.sh
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
