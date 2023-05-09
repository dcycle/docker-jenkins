set -e
docker pull jenkins/jenkins:jdk11
docker build -t local-dcycle-jenkins-image .

