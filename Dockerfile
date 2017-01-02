FROM jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y openjdk-7-jdk openjdk-8-jdk
#USER jenkins # drop back to the regular jenkins user - good practice
update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
