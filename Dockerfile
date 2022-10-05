FROM ubuntu

RUN apt upgrade -y && apt update -y

RUN apt-get install ansible -y


COPY alias ./alias
COPY bin ./bin
COPY local.yml .
COPY nvim ./nvim
COPY setup ./setup
COPY tasks ./tasks
COPY tmux ./tmux
COPY zsh ./zsh

RUN ls tasks

RUN ansible-playbook local.yml

