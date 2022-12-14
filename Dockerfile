FROM ubuntu

RUN apt upgrade -y && apt update -y

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get install ansible git -y

RUN mkdir /root/.dev
WORKDIR /root/.dev

COPY alias ./alias
COPY bin ./bin
COPY local.yml .
COPY nvim ./nvim
COPY tasks ./tasks
COPY tmux ./tmux
COPY zsh ./zsh

RUN ansible-playbook local.yml

