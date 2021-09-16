#!/usr/bin/env bash

# Setting up ros for the auto start process

source /opt/ros/melodic/setup.bash 
source /home/sammy-ros/catkin_ws/devel/setup.bash 

#Changing the path to the folder having launch file
cd /path/to/launch/file/folder
#/home/sammy-ros/catkin_ws/src/astra/launch

# Running Roslaunch
roslaunch <launch_file_name>.launch
#roslaunch astra.launch
