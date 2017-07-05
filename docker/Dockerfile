FROM       cyberdojofoundation/ubuntu-build-essential:17.04
MAINTAINER Jon Jagger <jon@jaggersoft.com>

RUN apt-get update && apt-get install --yes \
  libsqlite3-dev \
  sqlite3 \
  bzip2 \
  libbz2-dev \
  wget

RUN wget http://www.python.org/ftp/python/3.3.5/Python-3.3.5.tar.xz \
 && tar xJf ./Python-3.3.5.tar.xz \
 && cd ./Python-3.3.5 && ./configure --prefix=/opt/python3.3 \
 && cd ./Python-3.3.5 && make \
 && cd ./Python-3.3.5 && make install \
 && ln -s /opt/python3.3/bin/python3.3 /bin/python
