# What's in this repo

Right now there are several tools not yet released, but are staged in branches. For convenience this will get those tools and put them into an environment for you. 

# Configuring the buildfarm from the ros_buildfarm_config

## Setup ane enter the environment

```
docker build -ti configuration configuration/
docker run -ti configuration
```

## Run the buildfarm scripts parameterized on your ros_buildfarm_config. 

```
cd ros_buildfarm
export PYTHONPATH=`pwd`:$PYTHONPATH

./scripts/generate_all_jobs.py https://raw.githubusercontent.com/YOUR_FORK/ros_buildfarm_config/master/YOUR_BUILD_INDEX_FILE.yaml
```




# To make a release

Since REP 143 has not been landed yet. To make a release you need special branches of bloom and a few other tools 

## Setup ane enter the environment

```
docker build -ti bloomenv bloomenv/
docker run -ti bloomenv 
```

## Execute Bloom

You will need to setup bloom to point to your rosdistro. Currently it only supports releasing into the last distribution file in the list. 

```
export ROSDISTRO_INDEX_URL=https://raw.githubusercontent.com/YOUR_FORK/rosdistro/YOUR_BRANCH/index.yaml

git config --global user.email "you@example.com"
git config --global user.name "Your Name"

bloom-release -t indigo -r indigo YOUR_REPOSITORY_NAME --edit
