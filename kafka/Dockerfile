FROM alpine:latest

RUN set -eux && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories

ARG SCALA_VERSION=2.13
ARG KAFKA_VERSION=2.6.2

ENV PATH $PATH:/kafka/bin
ENV TAR="kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz"


RUN set -eux && \
    apk add --no-cache bash perl openjdk8-jre-base

RUN set -eux && \
    apk add --no-cache tar wget && \
    wget -t 2 --retry-connrefused -O  "$TAR" "https://mirrors.bit.edu.cn/apache/kafka/${KAFKA_VERSION}/${TAR}" && \
    tar zxf "${TAR}" && \
    rm -fv "${TAR}" && \
    ln -sv "kafka_${SCALA_VERSION}-${KAFKA_VERSION}" kafka && \
    apk del tar wget

COPY entrypoint.sh /
COPY config/server.properties /kafka/config/server.properties

EXPOSE 9092

CMD ["/entrypoint.sh"]

