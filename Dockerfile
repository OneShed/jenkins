# jenkins base image
FROM jenkins:latest

#install system-level dependencies
#RUN apt-get update && apt-get autoremove -y && apt-get install -y --force-yes libqtwebkit-dev mongodb

# install gems from /tmp such that bundling is CACHED
WORKDIR /var/jenkins_home
ADD <someconfigfiles>
ADD <jobs>

# port where application is served
EXPOSE 8081:8081
EXPOSE 50001:50001
