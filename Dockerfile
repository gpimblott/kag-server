FROM centos:latest
MAINTAINER Gordon Pimblott "gordon@pimblott.com"

# Update the system
RUN yum update -y

# Install screen 
RUN yum install glibc.i686 -y
RUN yum install libstdc++.i686 -y
RUN yum install screen -y
RUN yum install wget -y


# Download and unzip the server
RUN 	mkdir /usr/local/kagserver && \
	cd /usr/local/kagserver && \
	wget http://dl.kag2d.com/kagclassic-linux32-dedicated-latest.tar.gz && \ 
	tar -zxf kagclassic-linux32-dedicated-latest.tar.gz && \
	chmod +x KAGdedi

WORKDIR /usr/local/kagserver

EXPOSE	50301
EXPOSE	50301/udp

# Execute the server
CMD 	cd /usr/local/kagserver && \
	./KAGdedi

