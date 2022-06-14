FROM postgres:14

RUN apt-get -y update \
    && apt-get -y dist-upgrade \
    && apt-get -y install libpq-dev git wget liblzma-dev

RUN wget https://www.python.org/ftp/python/3.7.13/Python-3.7.13.tar.xz \
    && tar -xf Python-3.7.13.tar.xz \
    && mv Python-3.7.13 /opt/

RUN apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev -y

WORKDIR /opt/Python-3.7.13

RUN ./configure --enable-optimizations --enable-shared

RUN make

RUN make altinstall

RUN ldconfig /opt/Python3.7.13
