FROM mcr.microsoft.com/devcontainers/cpp:1-debian-11

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
        build-essential \
        cmake \
        gdb \
        ninja-build \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*