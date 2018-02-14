FROM phusion/baseimage:latest
LABEL maintainer="<t.hannan93@gmail.com>"

RUN apt-get update && \
apt-get install -y curl 

RUN useradd -ms /bin/bash rust-build
USER rust-build

RUN curl https://sh.rustup.rs -sSf > /tmp/rustup-init.sh && \
    chmod +x /tmp/rustup-init.sh && \
    ./tmp/rustup-init.sh -y

ENV PATH $HOME/.cargo/bin:$PATH 

