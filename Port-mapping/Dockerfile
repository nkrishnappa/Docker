# Create image based on official ubuntu image from docker hub
FROM ubuntu

# Set the Author field
LABEL maintainer="Nandisha Krishnappa nkrishnappa@rbbn.com"

# print Hellow World
# CMD ["echo" , "Hello World!! This is my first Docker File"]
EXPOSE 8888

CMD while true; do echo 'hello world' | nc -l -p 8888; done

