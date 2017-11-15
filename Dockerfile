FROM tensorflow/tensorflow

RUN apt-get update && \
    apt-get -y install git && \
    git clone https://github.com/varunshenoy/not-hotdog.git /not-hotdog && \
    apt-get clean

COPY nothotdog.sh /


CMD ["/nothotdog.sh"]
