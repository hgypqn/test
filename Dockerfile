from tomcat
MAINTAINER ies
RUN rm -rf /usr/local/tomcat/webapps/*
ADD demo.tar /usr/local/tomcat/webapps/

ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
