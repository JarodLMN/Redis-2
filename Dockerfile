#Dockerfile
FROM daocloud.io/geyijun/basic_image
MAINTAINER geyijun<geyijun@xiongmaitech.com>

COPY redis_bin/ /xm_workspace/xmcloud3.0/redis_bin/
RUN set -x \
  && wget http://download.redis.io/releases/redis-2.8.3.tar.gz \
  && tar -xzf redis-2.8.3.tar.gz -C /usr/src/redis --strip-components=1 \
  && rm redis-2.8.3.tar.gz \
  && make -C /usr/src/redis \
  && make -C /usr/src/redis install \
  && rm -rf -R /usr/src/redis 
EXPOSE 6379
