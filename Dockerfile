FROM jenkins
# if we want to install via apt
USER root
RUN apt-get update && apt-get install -y openjdk-6-jdk openjdk-7-jdk openjdk-8-jdk
USER jenkins # drop back to the regular jenkins user - good practice
