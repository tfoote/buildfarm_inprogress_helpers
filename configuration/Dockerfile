FROM ubuntu:trusty
MAINTAINER Tully Foote <tfoote@osrfoundation.org>

RUN apt-get update && apt-get install -y python3 python3-all python3-pip
RUN apt-get update && apt-get install -y curl git
RUN mkdir /tmp/deploy_ros_buildfarm
WORKDIR /tmp/deploy_ros_buildfarm
RUN pyvenv-3.4 --without-pip venv
RUN . venv/bin/activate && curl https://bootstrap.pypa.io/get-pip.py | python3

RUN . venv/bin/activate && pip3 install empy
RUN . venv/bin/activate && pip3 install git+git://github.com/dirk-thomas/jenkinsapi.git@feature/config_view
RUN . venv/bin/activate && pip3 install git+git://github.com/ros-infrastructure/rosdistro.git

RUN mkdir -p /root/.buildfarm
ADD jenkins.ini /root/.buildfarm/jenkins.ini

RUN git  clone https://github.com/ros-infrastructure/ros_buildfarm.git


CMD . venv/bin/activate && bash
