#!/bin/bash
name=$1
echo "Transmiting svo recording command..."
ssh nvidia@192.168.10.199 'bash -s' < zed_record_svo_service.sh $name
#rosservice call /zed/start_svo_recording "svo_filename: '/home/nvidia/catkin_ws/rosbags/$name.svo'"

