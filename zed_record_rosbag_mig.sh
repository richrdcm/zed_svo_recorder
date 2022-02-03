#!/bin/bash
name=$1
echo "Starting rosbag record..."
rosbag record -O $(pwd)/$name.bag -e \
/sensors/applanix/gps_odom \
/sensors/canbus_\w*/can_message_out \
/sensors/broadrreachcam_\w*/image_compressed/compressed \
/sensors/applanix/raw_data \
/tf \
__name:=$name \
echo "Recording rosbag $name"
 

