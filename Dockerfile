FROM debian:stable-slim

RUN apt-get update
RUN apt-get install -y curl unzip less jq
WORKDIR /root
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
