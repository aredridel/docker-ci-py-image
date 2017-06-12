FROM circleci/golang:1.7

RUN sudo apt-get update
RUN sudo apt-get -y install python-pip
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN sudo python get-pip.py
RUN sudo pip install awscli
RUN sudo mkdir -p /opt/orion
RUN sudo chown circleci /opt/orion
