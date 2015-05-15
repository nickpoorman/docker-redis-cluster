FROM redis

RUN apt-get update && \
    apt-get install -y \
      wget

ADD run.sh /run.sh

CMD /run.sh
