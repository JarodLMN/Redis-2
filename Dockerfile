#Dockerfile
FROM daocloud.io/geyijun/basic_image
MAINTAINER geyijun<geyijun@xiongmaitech.com>

COPY redis_bin/ /xm_workspace/xmcloud3.0/redis_bin/
RUN set -x \
	&& cd /root \
  && wget http://download.redis.io/releases/redis-2.8.3.tar.gz \
  && tar -xzf redis-2.8.3.tar.gz --strip-components=1 \
  && pwd && ls -l \
  && rm redis-2.8.3.tar.gz \
  && make -C ./redis \
  && make -C ./redis install \
  && rm -rf -R ./redis 
EXPOSE 6379

