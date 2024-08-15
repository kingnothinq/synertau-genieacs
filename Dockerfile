# GenieACS v1.2 Dockerfile #
############################

FROM node:18-buster
LABEL maintainer="ird@synertau.com"

RUN apt-get update && apt-get install -y sudo supervisor git iputils-ping
RUN mkdir -p /var/log/supervisor

#RUN npm install -g --unsafe-perm genieacs@1.2.13
WORKDIR /opt
RUN git clone https://github.com/genieacs/genieacs.git -b v1.2.13 --depth 1
WORKDIR /opt/genieacs
RUN npm install
RUN npm i -D tslib
RUN npm run build

RUN useradd --system --no-create-home --user-group genieacs
#RUN mkdir /opt/genieacs
RUN mkdir /opt/genieacs/ext
RUN chown genieacs:genieacs /opt/genieacs/ext

RUN mkdir /var/log/genieacs
RUN chown genieacs:genieacs /var/log/genieacs

ADD genieacs.logrotate /etc/logrotate.d/genieacs

WORKDIR /opt
RUN git clone https://github.com/GeiserX/genieacs-services -b 1.2 --depth 1
RUN cp genieacs-services/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN cp genieacs-services/run_with_env.sh /usr/bin/run_with_env.sh
RUN chmod +x /usr/bin/run_with_env.sh

WORKDIR /var/log/genieacs

CMD ["/usr/bin/supervisord","-c","/etc/supervisor/conf.d/supervisord.conf"]