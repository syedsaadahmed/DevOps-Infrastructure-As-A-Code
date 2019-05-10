# DevOps-Homework

## INTRODUCTION

DevOps Homework by 3yourmind for testing purposes. Contains all the Dockerfile(s) for Front-end, Back-end, Reverse Proxy. Moreover it also contains Ansible playbook for configuration and deployment of VM, and docker-compose.yml file for the deployment of docker infrastructure containing front-end, backend and reverse proxy as a load balancer.

## FRONT END

Front end folder in the repositry contains the docker file to create a docker image consisting of Vue.js real world example deployed in the image, once the container will be started, it will server front-end at certain port. This image is being setup using ubuntu:16.04 official docker image from dockerhub.

```
localhost:8080/
```

## BACK END

Back end folder in the repositry contains the docker file to create a docker image consisting of Django real world example deployed in the image, once the container will be started, it will server back-end at certain port. This image is being setup using ubuntu:16.04 official docker image from dockerhub.

```
localhost:8000/
```

## ANSIBLE PLAYBOOK

Anisble playbook contains two roles, one is initial-server-setup and the other is vm-setup, first of all, to setup the base server on which KVM is to be installed is setup, dependencies and other packages are being installed and configured.
Secondly the role vm-setup is executed, using which the centos 7 KVM machine is deployed on the base server, which contains all the neccessary packages and dependecies to run docker, docker-compose and other things.
To execute the playbook one must have ansible installed.

```
ansible-playbook DevOps-Homework/ansible-playbook/infra-setup.yml --extra-vars "host=XYZ KVMHostname=centos_7_machine baseServerIP=192.168.0.1"
```

## DOCKER INFRA-STRUCTURE

Docker-compose.yml, contains all the steps to setup front-end, back-end, reverse proxy using nginx, and postgre DB.
once the docker-compose file is up, it completely setup the whole infrastructure.

```
docker-compose up -d --build
```

## USER JOURNEY

1) First of all ansible playbook is to be executed to setup a VM on base server.

2) Secondly docker-compose will be executed using the playbook inside the KVM machine that is being setup.