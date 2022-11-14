#!/usr/bin/env bash

echo "Starting streaming..." & \

FPS=15
HLS_PATH=/tmp/hls
libcamera-vid -n -t 0 --width 1920 --height 1080 --framerate "${FPS}" --profile high --bitrate 1048576 --intra "${FPS}" --inline -o - | \
gst-launch-1.0 \
  hlssink2 name=hls target-duration=1 playlist-location="${HLS_PATH}/stream.m3u8" location="${HLS_PATH}/segment_%05d.ts" playlist-root=http://example.com:8080/hls \
  fdsrc fd=0 ! h264parse ! hls.video \
  alsasrc device="hw:1,0" ! queue ! voaacenc ! aacparse ! hls.audio | \
tee /var/log/gstreamer.log
