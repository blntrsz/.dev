FROM ubuntu

RUN apt upgrade -y && apt update -y
RUN apt-get install ansible -y
COPY . .
RUN ansible-playbook local.yml
