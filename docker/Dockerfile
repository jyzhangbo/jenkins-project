FROM reg.enncloud.cn/enncloud/centos_jdk:1.8.0_131
MAINTAINER zhangboad <zhangboad@enn.cn>

# Install service software
ADD bin /enn/bin
RUN chmod 755 /enn/bin/*.sh

EXPOSE 8082

CMD /enn/bin/restart.sh