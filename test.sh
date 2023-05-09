set -e
docker pull jenkins/jenkins:alpine
docker build -t local-dcycle-jenkins-image .

