# transmission container
# VERSION               0.1.1
FROM angelrr7702/docker-ubuntu-14.04-sshd
MAINTAINER Angel Rodriguez  "angelrr7702@gmail.com"
RUN echo "deb http://archive.ubuntu.com/ubuntu trusty-backports main restricted universe" >> /etc/apt/sources.list
ENV USER_T guest
ENV PASSWD_T guest
RUN (DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get upgrade -y -q && DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y -q )
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q transmission-daemon supervisor
ADD settings.json /var/lib/transmission-daemon/info/settings.json
ADD foreground.sh /etc/transmission-daemon/foreground.sh
RUN chmod 755 /etc/transmission-daemon/foreground.sh
ADD start.sh /start.sh
RUN chmod 755 /start.sh
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 9091 22
CMD ["/bin/bash", "-e", "/start.sh"]
