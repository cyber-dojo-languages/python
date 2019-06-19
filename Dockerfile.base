FROM python
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update
RUN pip3 install --upgrade numpy scipy panda datetime pep8

COPY usercustomize.py /usr/local/lib/python3.6/site-packages
