FROM ubuntu:trusty
MAINTAINER Tully Foote <tfoote@osrfoundation.org>

RUN apt-get update && apt-get install -y python python-pip python-virtualenv
RUN apt-get update && apt-get install -y curl git python-empy
RUN mkdir /tmp/deploy_ros_buildfarm
WORKDIR /tmp/deploy_ros_buildfarm
RUN virtualenv venv

RUN . venv/bin/activate && pip install git+git://github.com/ros-infrastructure/rosdistro.git@rep143
RUN .  venv/bin/activate && pip install git+git://github.com/ros-infrastructure/rosdep.git@wjw_rep143
# custom bloom needed for multi distro file support
RUN .  venv/bin/activate && pip install git+git://github.com/ros-infrastructure/bloom.git@rep143_followup
RUN . venv/bin/activate && rosdep init

CMD . venv/bin/activate && bash
