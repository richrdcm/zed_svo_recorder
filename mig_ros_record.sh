#!/bin/bash
name=$1
#what=$2
#frame_rate=$3
#res=$4
#[[ -z "$name" ]] && { echo "Error: No name given"; exit 1; }
#[[ -z "$what" ]] && { echo "Error: What to save?, options are: all, svo-mig, mig, svo-ros, svo-miny-mig, svo-miny-no-mig"; exit 1; }
#[[ -z "$frame_rate" ]] && { echo "Error: No frame rate given"; exit 1; }
#[[ -z "$res" ]] && { echo "Error: No resolution given"; exit 1; }

echo "Starting scripts to record $name..."
sh -x $(pwd)/zed_record_rosbag_mig.sh $name & sh -x $(pwd)/zed_record_svo_mig.sh $name # && fg
echo "Everything being recorded under: $name..."
