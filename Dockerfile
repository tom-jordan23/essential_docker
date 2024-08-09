FROM openjdk:8-jdk

RUN apt-get update && apt-get install -y wget unzip && apt-get clean

COPY standalone_essential.zip /usr/local/

WORKDIR /usr/local

RUN unzip standalone_essential.zip

WORKDIR /usr/local/standalone_essential_v61910
CMD ["sh", "tomcat/bin/startup.sh"]