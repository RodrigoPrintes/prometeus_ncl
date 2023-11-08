# Use the official Ubuntu 22.04 LTS as the base image
FROM ubuntu:22.04

# Update the package repository and install necessary packages
RUN apt-get update && apt-get install -y \
    cmake \
    ninja-build \
    pkg-config \
    dpkg-dev \
    dh-autoreconf \
    libltdl-dev \
    liblua5.3-dev \
    libglib2.0-dev \
    libpango1.0-dev \
    librsvg2-dev \
    libsoup2.4-dev \
    libgstreamer1.0-dev \
    libgstreamer-plugins-base1.0-dev \
    libfontconfig1-dev \
    libgtk-3-dev \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-libav \
    libgssdp-1.2-dev \
    libjsoncpp-dev


# Set the working directory
WORKDIR /app
COPY ./ /app/
# Uncomment these lines if you want to create and use a non-root user
#RUN groupadd -r app && useradd -r -g app app
#USER app

# Define the default command to run when the container starts
CMD ["/bin/bash"]
