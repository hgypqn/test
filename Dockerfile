from tomcat
MAINTAINER ies
RUN rm -rf /usr/local/tomcat/webapps/*
COPY demo.war   /usr/local/tomcat/webapps
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
