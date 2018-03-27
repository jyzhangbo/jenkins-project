FROM reg.enncloud.cn/ennwifi-public/base-service:1.0.0
MAINTAINER zhangboad <zhangboad@enn.cn>

# Install service software
ADD docker/root /
RUN chmod 755 /opt/se-api/bin/*.sh
RUN chmod 755 /etc/periodic/daily/*

EXPOSE 8082