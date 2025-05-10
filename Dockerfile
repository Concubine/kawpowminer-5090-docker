FROM nvidia/cuda:12.9.0-runtime-ubuntu22.04

# Install Boost runtime libraries
RUN apt-get update && \
    apt-get install -y libboost-thread1.74.0 libboost-system1.74.0 libboost-filesystem1.74.0 && \
    rm -rf /var/lib/apt/lists/*

# Copy the precompiled binary
COPY kawpowminer /usr/local/bin/kawpowminer
RUN chmod +x /usr/local/bin/kawpowminer

ENTRYPOINT ["kawpowminer"]
