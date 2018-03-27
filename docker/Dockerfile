FROM reg.enncloud.cn/ennwifi-public/base-service:1.0.0
MAINTAINER zhangboad <zhangboad@enn.cn>

# Install service software
ADD bin /enn/bin
RUN chmod 755 /enn/bin/*.sh

CMD /enn/bin/start.sh

EXPOSE 8082