FROM python:3.8.1

ARG VERSION

RUN groupadd --gid=6767 bazarr && \
    useradd --create-home --home-dir=/home/bazarr --gid=6767 --shell /bin/bash --uid 6767 bazarr && \
    mkdir /config /movies /opt/bazarr /series && \
    curl --location --output /tmp/bazarr.tar.gz --silent "https://github.com/morpheus65535/bazarr/archive/${VERSION}.tar.gz" && \
    tar xvzf /tmp/bazarr.tar.gz --directory=/opt/bazarr --strip-components=1 && \
    chown --recursive 6767:6767 /config /movies /opt/bazarr /series

USER 6767
VOLUME /config /downloads /movies
WORKDIR /home/bazarr

EXPOSE 6767
ENTRYPOINT ["python", "/opt/bazarr/bazarr.py", "--config=/config"]