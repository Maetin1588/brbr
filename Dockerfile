FROM ubuntu:22.04
RUN apt-get updatw && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo 'root:frepal' | chpasswd

EXPOSE 22

CMD ["/user/bin/shellinabox","-t","-s","/:LOGIN"]
