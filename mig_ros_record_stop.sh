#!/bin/bash
name=$1
echo "Stoping rosbag..."
rosnode kill /$name
echo "Stoping svo..."
ssh nvidia@192.168.10.199 'bash -s' < zed_stop_record_svo_mig.sh
echo "done!"

