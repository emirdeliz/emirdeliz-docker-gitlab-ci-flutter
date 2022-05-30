# ---- Flutter app ----
FROM --platform=linux/arm64/v8 debian:latest AS emirdeliz-gitlab-ci-flutter
WORKDIR /home/docker

# Install flutter dependencies
RUN apt-get update 
RUN apt-get install -y curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback python3
RUN apt-get clean

# Clone the flutter repo
RUN cd /home/docker && git clone https://github.com/flutter/flutter.git

# Set flutter path
ENV PATH="/home/docker/flutter/bin:${PATH}"
RUN flutter channel master
RUN flutter --version