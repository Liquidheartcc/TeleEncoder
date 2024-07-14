FROM python:3.10-slim-buster

# Setup home directory, non interactive shell and timezone
RUN mkdir /bot /tgenc && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Africa/Lagos
ENV TERM=xterm

# Install Dependencies
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git aria2 bash wget curl pv jq python3-pip mkvtoolnix mediainfo handbrake-cli psmisc -y && python3 -m pip install --upgrade pip setuptools

# Install latest ffmpeg
COPY --from=mwader/static-ffmpeg:7.0.1 /ffmpeg /usr/local/bin/
COPY --from=mwader/static-ffmpeg:7.0.1 /ffprobe /usr/local/bin/

# Copy files from repo to home directory
COPY . .

# Install python3 requirements
RUN pip3 install -r requirements.txt

# Start bot
CMD ["bash","run.sh"]
