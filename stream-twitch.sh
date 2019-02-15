#!/bin/bash

python main.py | \
    ffmpeg \
        -re \
        -f rawvideo \
        -pixel_format bgr24 \
        -video_size 640x480 \
        -r 25 \
        -i - \
        -f flv rtmp://live.twitch.tv/app/live_255862529_1D5Ox5DxETBOk9rZ7lMlkGHJ53IqrV?bandwidthtest=true
