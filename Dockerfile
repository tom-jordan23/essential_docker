FROM openjdk:8-jdk

RUN apt-get update && apt-get install -y wget unzip && apt-get clean

COPY standalone_essential.zip /usr/local/

WORKDIR /usr/local

EXPOSE 8080

RUN unzip standalone_essential.zip

WORKDIR /usr/local/standalone_essential_v61910
CMD ["tomcat/bin/catalina.sh", "run"]