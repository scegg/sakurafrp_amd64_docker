FROM ubuntu:18.04
MAINTAINER Allen Tsui <allen_st_clair@msn.com>

ENV su username_here
ENV sp password_here
ENV sid server_id_number_here

RUN \
apt-get update && \
apt-get install -y supervisor ca-certificates && \
rm -rf /var/lib/apt/lists/* && \
sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf

COPY sakurafrp.conf /etc/supervisor/conf.d/sakurafrp.conf
COPY Sakura_frpc_linux_amd64 /Sakura_frpc_linux_amd64

CMD ["/usr/bin/supervisord"]
