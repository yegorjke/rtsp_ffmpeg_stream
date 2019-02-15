#!/bin/bash

python main.py | \
    ffmpeg \
        -re \
        -f rawvideo \
        -pixel_format bgr24 \
        -video_size 640x480 \
        -r 25 \
        -i - \
        -f flv rtmp://0.0.0.0/live/mystream