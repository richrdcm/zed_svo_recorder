#!/bin/bash
name=$1
source /opt/ros/kinetic/setup.bash
source /home/nvidia/catkin_ws/devel/setup.bash
export ROS_MASTER_URI=http://192.168.10.199:11311
export ROS_IP=192.168.10.199
export ROS_HOSTNAME=192.168.10.199
rosservice call /zed/stop_svo_recording
