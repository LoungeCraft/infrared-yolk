FROM        ubuntu:latest

ENV         DEBIAN_FRONTEND noninteractive

RUN         adduser -D -h /home/container container 
RUN         apt update && apt upgrade -y
RUN          apt install -y git wget curl tar zip unzip binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat telnet libatomic1 libsdl1.2debian libsdl2-2.0-0 
        # libfontconfig icu-devtools libunwind8 sqlite3 libsqlite3-dev libzip4 locales apt-transport-https init-system-helpers \
        # libcurl3-gnutls liblua5.1-0 libluajit-5.1-2 libsqlite3-0 bzip2 zlib1g libevent-dev libmariadb-dev-compat libmariadb-dev libssl-dev \
		# libfluidsynth-dev libmariadb-dev libicu-dev libssl3 libduktape207 libjsoncpp-dev libleveldb1d libncurses5 libncursesw5


WORKDIR     /home/container

COPY        entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]