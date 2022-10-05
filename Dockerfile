FROM ubuntu

RUN apt upgrade -y && apt update -y

RUN apt-get install ansible -y

RUN mkdir /root/.dev
WORKDIR /root/.dev

COPY alias ./alias
COPY bin ./bin
COPY local.yml .
COPY nvim ./nvim
COPY setup ./setup
COPY tasks ./tasks
COPY tmux ./tmux
COPY zsh ./zsh

RUN ansible-playbook local.yml

