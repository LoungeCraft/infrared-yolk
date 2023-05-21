FROM        alpine:latest
RUN         apk add --update --no-cache ca-certificates tzdata curl \
				&& adduser -D -h /home/container container \
                && cd /home/container \
                && curl -LO https://github.com/haveachin/infrared/releases/download/v2.0.0-alpha.13/infrared_Linux_x86_64.tar.gz \
                && tar -xzf infrared_Linux_x86_64.tar.gz

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]