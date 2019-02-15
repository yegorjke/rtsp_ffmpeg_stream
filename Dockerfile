FROM tiangolo/nginx-rtmp

COPY ./nginx.conf /etc/nginx/nginx.conf

# COPY . /usr/src/app/

# WORKDIR /usr/src/app/

# RUN apt-get update --fix-missing -y && apt-get upgrade -y
# RUN apt-get install -y nano ffmpeg libav-tools x264 x265
