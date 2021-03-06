FROM circleci/golang:1.7

RUN sudo apt-get update
RUN sudo apt-get -y install python-pip
RUN sudo curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN sudo python get-pip.py
RUN sudo pip install awscli
RUN sudo apt-get install -y python2.7 python2.7-dev python3 python3-dev libffi-dev libssl-dev
RUN sudo pip2.7 install virtualenv

RUN sudo mkdir -p /opt/orion
RUN sudo chown circleci /opt/orion
