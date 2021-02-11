FROM ubuntu
RUN apt-get update --fix-missing
RUN apt-get update

RUN apt-get install -y clang-8
RUN apt-get install -y make

ADD ./Bin /var/
ADD ./Makefile /var/

# To start the container in the /var directory 
WORKDIR /var/ 
