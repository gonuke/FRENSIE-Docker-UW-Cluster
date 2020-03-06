#!/bin/bash

UW_CLUSTER_USER_NAME=
UW_CLUSTER_USER_DIR=
UW_CLUSTER_FRENSIE_GROUP_SOFTWARE_DIR=/home/group/frensie/software
FRENSIE_BRANCH=master

source ~/.bashrc
cmake --version

cmake \
    -D UW_CLUSTER_USER_NAME:STRING=$UW_CLUSTER_USER_NAME \
    -D UW_CLUSTER_USER_DIR:STRING=$UW_CLUSTER_USER_DIR \
    -D UW_CLUSTER_FRENSIE_GROUP_SOFTWARE_DIR:STRING=$UW_CLUSTER_FRENSIE_GROUP_SOFTWARE_DIR \
    -D FRENSIE_BRANCH:STRING=$FRENSIE_BRANCH \
    -D CMAKE_VERBOSE_MAKEFILE:BOOL=ON \
    -D CMAKE_BUILD_TYPE:STRING=RELEASE \
    -D FRENSIE_ENABLE_DBC:BOOL=ON \
    $@
