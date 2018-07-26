FROM centos:7
MAINTAINER kyra <magichuihui@gmail.com>

RUN yum install -y bzip2 make gcc-c++ zlib-devel \
    && cd /usr/local/src \
    && curl -LO http://www.xunsearch.com/download/xunsearch-full-latest.tar.bz2 \
    && tar -jxvf xunsearch-full-latest.tar.bz2 \
    && rm -rf xunsearch-full-latest.tar.bz2 \
    && cd xunsearch-full-* \
    && sh setup.sh \
    && cd .. && rm -rf xunsearch* && yum clean all -y

VOLUME ["/usr/local/xunsearch/data"]
EXPOSE 8383
EXPOSE 8384

WORKDIR /usr/local/xunsearch

COPY xs-docker.sh /usr/local/xunsearch/bin/xs-docker.sh

CMD bin/xs-docker.sh
