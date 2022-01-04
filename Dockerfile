# I thought I copied this from https://github.com/bpicode/github-action-fpm,
# but that looks different....
FROM ubuntu:focal

RUN echo "===> Installing tools..."  && \
    apt-get -y update && \
    apt-get -y install ruby ruby-dev rubygems build-essential autoconf libtool binutils && \
    \
    echo "===> Installing fpm..." && \
    gem install fpm && \
    \
    echo "===> Cleaning the system..." && \
    apt-get -f -y --auto-remove remove build-essential autoconf libtool && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# We mount the current directory as /data.
WORKDIR	/data
