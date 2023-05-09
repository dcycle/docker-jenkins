FROM jenkins/jenkins:alpine

COPY docker-resources /docker-resources
RUN cd /docker-resources && ./build.sh && rm -rf /docker-resources
