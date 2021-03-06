FROM ubuntu:16.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y gawk wget git-core diffstat unzip texinfo gcc-multilib \
        build-essential chrpath socat cpio python python3 python3-pip python3-pexpect \
        xz-utils debianutils iputils-ping libsdl1.2-dev xterm xsltproc \
        docbook-utils dblatex xmlto xutils-dev patchutils nfs-common sudo locales

RUN locale-gen --purge en_US.UTF-8
RUN echo -e 'LANG="en_US.UTF-8"\nLANGUAGE="en_US:en"\n' > /etc/default/locale

CMD ["/bin/bash"]
