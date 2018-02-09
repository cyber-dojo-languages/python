FROM  cyberdojofoundation/ubuntu-build-essential:18.04
LABEL maintainer=jon@jaggersoft.com

RUN apt-get install --yes software-properties-common python-software-properties \
 && apt-get update \
 && apt-get install --yes python3.6 curl \
 && curl https://bootstrap.pypa.io/get-pip.py | python3.6

RUN pip3 install --upgrade numpy scipy panda datetime pep8

RUN rm /usr/bin/python && ln -s /usr/bin/python3.6 /usr/bin/python
