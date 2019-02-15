#!/bin/bash

# docker run --rm -v $(pwd):/usr/src/app/ -it my_nginx_rtmp /bin/bash
docker run --rm -d -h 0.0.0.0 -p 1935:1935 tiangolo/nginx-rtmp:latest