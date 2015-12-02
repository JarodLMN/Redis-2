#Dockerfile
FROM daocloud.io/geyijun/basic_image
MAINTAINER geyijun<geyijun@xiongmaitech.com>

COPY redis_bin/ /xm_workspace/xmcloud3.0/redis_bin/
RUN set -x \
  && wget http://download.redis.io/releases/redis-2.8.3.tar.gz \
  && tar -xzf redis-2.8.3.tar.gz --strip-components=1 \
  && rm redis-2.8.3.tar.gz \
  && make -C /redis-2.8.3 \
  && make -C /redis-2.8.3 install \
  && cp /usr/src/redis/redis.conf /etc/redis.conf \
  && rm -r /redis-2.8.3
EXPOSE 6379
