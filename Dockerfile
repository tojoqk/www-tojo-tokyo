FROM amazonlinux:latest

RUN yum -y update \
    && yum install -y tar gzip \
    && curl -o install.sh https://www.cs.utah.edu/plt/installers/7.4/racket-7.4-x86_64-linux.sh \
    && yes yes | sh install.sh --unix-style --dest /usr
