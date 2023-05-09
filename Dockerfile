FROM jenkins/jenkins:jdk11

COPY docker-resources /docker-resources
RUN cd /docker-resources && ./build.sh && rm -rf /docker-resources
