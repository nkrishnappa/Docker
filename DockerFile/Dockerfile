# Create image based on official ubuntu image from docker hub
FROM ubuntu

# Set the Author field
LABEL maintainer="Nandisha Krishnappa nkrishnappa@rbbn.com"

#create a  Directory and set to WORKDIR
RUN mkdir -p /root/Demo
WORKDIR /root/Demo

# update to latest
RUN apt-get update

# install package
RUN apt-get -y install vim 

# Copy File to directory
COPY Dockerfile /root/Demo

# Expose the port
Expose 21 

# print Hellow World
CMD ["echo" , "Hello World!! This is my first Docker File"]

