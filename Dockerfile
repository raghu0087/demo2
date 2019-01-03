
FROM tomcat:7.0
COPY target/gamutkart.war /usr/local/tomcat/webapps
RUN useradd -m -d /home/hp hp -s /bin/bash
WORKDIR home/hp
USER hp
ENV JAVA_HOME /home/gamut/jdk1.8.0_191
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
