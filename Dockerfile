# Base Image 
FROM fedora:37

# Setup home directory, non interactive shell and timezone
RUN mkdir /bot /tgenc && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Africa/Lagos
ENV TERM=xterm

# Install Dependencies
RUN dnf -qq -y update && dnf -qq -y install git aria2 bash xz wget curl pv jq python3-pip mediainfo psmisc procps-ng qbittorrent-nox && python3 -m pip install --upgrade pip setuptools

# Install FFmpeg from Fedora repositories
RUN dnf -qq -y install ffmpeg

# Copy files from repo to home directory
COPY . .

# Install python3 requirements
RUN pip3 install -r requirements.txt

# Start bot
CMD ["bash","run.sh"]
