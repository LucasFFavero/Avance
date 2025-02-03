FROM ubuntu:18.04
RUN apt-get update&& apt-get install -y \
    libfbclient2
RUN ln -s /usr/lib/x86_64-linux-gnu/libfbclient.so.2 /usr/lib/x86_64-linux-gnu/libfbclient.so
COPY ./Linux64/Debug/apiServer ./apiServer
ENTRYPOINT ./apiServer


