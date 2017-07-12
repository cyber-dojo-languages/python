FROM  cyberdojofoundation/ubuntu-build-essential:17.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update && apt-get install --yes \
  libsqlite3-dev \
  sqlite3 \
  bzip2 \
  libbz2-dev \
  wget

ARG BASE_VERSION=3.5
ARG VERSION=${BASE_VERSION}.3

RUN wget http://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tar.xz \
  && tar xJf ./Python-${VERSION}.tar.xz \
  && cd ./Python-${VERSION} \
  && ./configure --prefix=/opt/python${BASE_VERSION} \
  && make \
  && make install \
  && ln -s /opt/python${BASE_VERSION}/bin/python${BASE_VERSION} /bin/python3

RUN apt-get install -y python3-pip

RUN pip3 install -U numpy scipy panda datetime
