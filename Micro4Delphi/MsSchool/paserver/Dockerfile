# Docwiki
# https://docwiki.embarcadero.com/RADStudio/Sydney/en/Linux_Application_Development

FROM ubuntu:18.04
RUN apt update -y && apt upgrade -y && apt dist-upgrade -y
RUN apt install -y joe wget p7zip-full curl openssh-server build-essential zlib1g-dev libcurl4-gnutls-dev libncurses5
COPY ./LinuxPAServer21.0.tar.gz ./
RUN tar -xvf ./LinuxPAServer21.0.tar.gz
ENTRYPOINT ./PAServer-21.0/paserver -password=

# To create a docker image
# docker build -t micro4delphi/paserver .

# To create a container
# docker run -p 64211:64211 -d micro4delphi/paserver