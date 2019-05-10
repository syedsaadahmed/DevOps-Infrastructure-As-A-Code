FROM ubuntu:16.04
MAINTAINER Syed Saad Ahmed

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir ~/DJANGO

WORKDIR "~/DJANGO"

## installing dependencies
RUN apt-get update && apt-get install -y curl build-essential git libreadline-dev zlib1g-dev libssl-dev libbz2-dev libsqlite3-dev software-properties-common python3 python3-pip
RUN echo "alias python='python3'" >> ~/.bashrc
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN ln -s /usr/bin/python3 /usr/bin/python

## cloning the real world Django reporsitory
RUN git clone https://github.com/gothinkster/productionready-django-api.git

WORKDIR "productionready-django-api"

ENV DATABASE_NAME=testdb
ENV DATABASE_USER=Jane
ENV DATABASE_PASSWORD=ABC123
ENV DATABASE_HOST=192.168.0.102
ENV DATABASE_PORT=5432

ADD script.sh ~/DJANGO/productionready-django-api/

RUN pip install -r requirements.txt

## To apply patches

RUN script.sh

RUN python manage.py migrate

## serve with hot reload at localhost:8000
EXPOSE 80