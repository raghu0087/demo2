
FROM tomcat:7.0
COPY target/gamutkart.war /usr/local/tomcat/webapps
RUN useradd -m -d /home/gamut gamut -s /bin/bash
WORKDIR home/gamut
USER gamut
ENV JAVA_HOME /home/gamut/jdk1.8.0_191/bin/java
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
