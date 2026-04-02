FROM nginx


WORKDIR /app
RUN apt-get update
RUN apt-get install git -y
RUN git clone https://github.com/sergythbe/DockerTest.git .
WORKDIR /usr/share/nginx/html
RUN rm *
RUN cp -r /app/src/* .
 
