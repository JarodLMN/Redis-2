#Dockerfile
FROM daocloud.io/geyijun/basic_image:v0.01
MAINTAINER geyijun<geyijun@xiongmaitech.com>

RUN set -x \
	&& cd /root \
  && wget http://download.redis.io/releases/redis-2.8.3.tar.gz \
  && tar -xzf redis-2.8.3.tar.gz \
  && pwd && ls -l \
  && make -C ./redis-2.8.3 \
  && make -C ./redis-2.8.3 install \
  && rm -rf -R ./redis-2.8.3  \
  && rm ./redis-2.8.3.tar.gz


