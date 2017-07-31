# Name: rpi-python3
# Version: 3.5.3

# Pull base image
FROM resin/rpi-raspbian:stretch
MAINTAINER Gerard Hickey <hickey@kinetic-compute.com>

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-virtualenv \
    --no-install-recommends && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    rm -rf /var/lib/apt/lists/*

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
