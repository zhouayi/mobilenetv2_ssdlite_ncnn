#!/bin/bash

export LD_LIBRARY_PATH=/opencv-4.7.0/build-aarch64-linux-gnu/install/lib:$LD_LIBRARY_PATH

./ssdlite models/mbv2_ssdlite images/bicycle.jpg
