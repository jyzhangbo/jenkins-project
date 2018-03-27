FROM reg.enncloud.cn/ennwifi-public/base-service:1.0.0
MAINTAINER zhangboad <zhangboad@enn.cn>

# Install service software
ADD bin /enn/bin
RUN chmod 755 /enn/bin/*.sh

ENTRYPOINT ["java" ,"-jar","/enn/bin/jenkins-project-0.0.1-SNAPSHOT.jar"]
EXPOSE 8082