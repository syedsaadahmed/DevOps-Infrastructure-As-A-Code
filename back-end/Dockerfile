FROM ubuntu:16.04
MAINTAINER Syed Saad Ahmed

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN mkdir ~/DJANGO

WORKDIR "~/DJANGO"

## installing dependencies
RUN apt-get update && apt-get install -y curl build-essential git libreadline-dev zlib1g-dev libssl-dev libbz2-dev libsqlite3-dev software-properties-common python3 python3-pip python-distribute python-dev libpq-dev



#RUN echo "alias python='python3'" >> ~/.bashrc
#RUN ln -s /usr/bin/pip3 /usr/bin/pip
#RUN ln -s /usr/bin/python3 /usr/bin/python

## cloning the real world Django reporsitory
RUN git clone https://github.com/gothinkster/productionready-django-api.git

WORKDIR "productionready-django-api"

#ENV DATABASE_NAME=iotplatform
#ENV DATABASE_USER=iotplatform
#ENV DATABASE_PASSWORD=iotplatform
#ENV DATABASE_HOST=http://postgresql
#ENV DATABASE_PORT=5432


RUN sed -i "88 c\        'ENGINE': 'django.db.backends.postgresql','USER': 'iotplatform','PASSWORD': 'iotplatform','HOST': 'postgresql','PORT': '5432'," ./conduit/settings.py

RUN sed -i "89 c\        'NAME': 'iotplatform'" ./conduit/settings.py  


RUN pip3 install -r requirements.txt

RUN pip3 install psycopg2

RUN pip3 install Django

#RUN easy_install psycopg2

#RUN python3 manage.py migrate

## serve with hot reload at localhost:8000
EXPOSE 80