#!/usr/bin/env bash
sudo NV_GPU=1 nvidia-docker run \
 -it \
 --rm \
 -v "/home/hslee1/spine:/tmp/spine" \
 -v "/home/Alexandrite/hslee:/workspace" \
 --name "debug" \
 --shm-size "32G" \
 hslee:geometry \
 /bin/bash -c 'cd /tmp/spine &&
  python -m ModelNet.Train --config_path=/tmp/spine/config/ModelNet.yaml'