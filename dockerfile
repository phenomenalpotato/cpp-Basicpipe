FROM ubuntu
RUN apt-get update --fix-missing
RUN apt-get update

RUN apt-get install -y clang-8
RUN apt-get install -y make

ADD ./Bin /var/Bin
ADD ./Makefile /var/
ADD ./Report-File /var/Report-File

# To start the container in the /var directory 
WORKDIR /var/ 

#RUN pwd
#RUN ls -lha