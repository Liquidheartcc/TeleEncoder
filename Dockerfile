# Base Image 
FROM ubuntu:latest

# Setup home directory, non interactive shell and timezone
RUN mkdir /bot /tgenc && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Africa/Lagos
ENV TERM=xterm

# Install Dependencies
RUN apt-get update && apt-get install -y git aria2 bash xz-utils wget curl pv jq python3-pip handbrake-cli mediainfo psmisc procps mkvtoolnix && python3 -m pip install --upgrade pip setuptools

# Install latest ffmpeg
RUN wget https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz && tar -xvf *xz && cp */bin/* /usr/bin && rm -rf *xz && rm -rf *gpl

# Copy files from repo to home directory
COPY . .

# Install python3 requirements
RUN pip3 install -r requirements.txt

# Start bot
CMD ["bash","run.sh"]
