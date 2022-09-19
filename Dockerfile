FROM ubuntu:20.04

RUN apt -qq update

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Kolkata
RUN apt-get update
RUN apt -qq install -y build-essential git aria2 wget curl busybox unzip unrar tar tmate tmux 

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt install -y nodejs
RUN npm set user root

RUN git clone https://github.com/artemisfowl004/shell-bot-1 && cd shell-bot-1

WORKDIR /app/shell-bot-1


RUN npm install

CMD node server
