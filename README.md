# What's in this repo

Right now there are several tools not yet released, but are staged in branches. For convenience this will get those tools and put them into an environment for you.

# Configuring the buildfarm from the ros_buildfarm_config

This docker image will setup all the tools you need in the right env.
You are expected to have the permissions inside jenkins.ini of the current user, which will be passed inside to the docker environment using a volume mount.


## Deploying via DockerHub image

You can use a shortcut to download this image from dockerhub and execute it. 

```
docker run -ti -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro tfoote/buildfarm_helpers_config https://MYTOKEN@raw.githubusercontent.com/MY_FORK/ros_buildfarm_config/master/MYFILE.yaml
```

For example:
```
docker run -ti -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro tfoote/buildfarm_helpers_config https://raw.githubusercontent.com/tfoote/ros_buildfarm_config/master/localhost.yaml
```



## Building it yourself.

If you want to tweak this docker image you can build it yourself and run it like below.
This is an alternative to the above method.

```
docker build -t configuration configuration/
docker run -ti configuration -v ~/.buildfarm/jenkins.ini:/root/.buildfarm/jenkins.ini:ro https://MYTOKEN@raw.githubusercontent.com/MY_FORK/ros_buildfarm_config/master/MY_FILE.yaml
```


### Jumping into the image avoiding the entrypoint.

This dockerfile users an entrypoint to get right into the script. But that's not always what you want to do. If you want to get into an interactive shell add the option `--entrypoint=/bin/bash`.
And instead of running entrypoint.bash you will go into a shell.
