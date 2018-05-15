FROM ubuntu:latest

RUN apt-get update && apt-get install -y git build-essential unzip cmake automake libtool libtool-bin pkg-config curl mercurial autoconf build-essential libass-dev libfreetype6-dev libsdl2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev libxcb-xfixes0-dev texinfo wget zlib1g-dev

RUN git clone https://github.com/heroku/sffmpeg.git

WORKDIR /sffmpeg

VOLUME /ffmpeg-bin

CMD git pull && make && cp /sffmpeg/build/bin/ffmpeg /sffmpeg/build/bin/ffprobe /ffmpeg-bin
