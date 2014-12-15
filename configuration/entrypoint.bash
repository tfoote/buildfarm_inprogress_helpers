#!/bin/bash

set -o errexit

echo "Running generate all jobs for $1"
. venv/bin/activate
export PYTHONPATH=/tmp/deploy_ros_buildfarm/ros_buildfarm:$PYHTONPATH
/tmp/deploy_ros_buildfarm/ros_buildfarm/scripts/generate_all_jobs.py $1
