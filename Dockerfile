# Use the upstream texecom2mqtt image as base and install libatomic
# This image simply adds the missing libatomic.so.1 dependency
FROM dchesterton/texecom2mqtt:latest

# Install libatomic for Debian-based runtime images
USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends libatomic1 \
 && rm -rf /var/lib/apt/lists/*
