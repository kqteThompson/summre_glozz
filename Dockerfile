FROM centos:7

RUN yum -y update
RUN yum -y remove java
RUN yum install -y \
       java-1.8.0-openjdk \
       java-1.8.0-openjdk-devel

RUN yum install libXtst

COPY . . 

CMD ["java", "-jar", "glozz-platform.jar"]
