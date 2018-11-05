FROM kiwenlau/hadoop:1.0

MAINTAINER KiwenLau <kiwenlau@gmail.com>

WORKDIR /root

COPY config/* /tmp/

RUN mv /tmp/run-wordcount.sh ~/run-wordcount.sh

RUN chmod +x ~/run-wordcount.sh  

# format namenode

#CMD [ "sh", "-c", "service ssh start; bash"]

