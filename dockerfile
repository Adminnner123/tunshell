FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl tmate -y
RUN curl -sSf https://sshx.io/get | sh
RUN sshx
