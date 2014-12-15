# What's in this repo

Right now there are several tools not yet released, but are staged in branches. For convenience this will get those tools and put them into an environment for you.

# Configuring the buildfarm from the ros_buildfarm_config

## Setup and enter the environment

```
docker build -ti configuration configuration/
docker run -ti configuration -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro https://MYTOKEN@raw.githubusercontent.com/MY_FORK/ros_buildfarm_config/master/MY_FILE.yaml
```

# You are expected to have the permissions inside jenkins.ini of the current user, which will be passed inside to the docker environment.

You can use a shortcut to download this image from dockerhub.

```
docker run -ti -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro tfoote/buildfarm_helpers_config https://MYTOKEN@raw.githubusercontent.com/MY_FORK/ros_buildfarm_config/master/MYFILE.yaml
```

For example: 
```
docker run -ti -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro tfoote/buildfarm_helpers_config https://raw.githubusercontent.com/tfoote/ros_buildfarm_config/master/localhost.yaml
```
