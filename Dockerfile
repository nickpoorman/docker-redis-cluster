FROM redis

RUN apt-get update && \
    apt-get install -y \
      wget

ADD redis.conf /usr/local/etc/redis/redis.conf

ADD run.sh /run.sh

CMD /run.sh
