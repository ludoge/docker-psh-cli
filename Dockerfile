FROM php:7-cli

RUN apt-get update

# Install Git and SSH CLI clients as well as python3.5
RUN apt-get install --no-install-recommends -y git ssh-client python3-pip

# Install the Platform.sh CLI
ADD install-cli.sh .
RUN bash ./install-cli.sh

# Install essential Python stuff

RUN pip3 install -U setuptools
RUN pip3 install -U wheel