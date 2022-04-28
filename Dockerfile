FROM ubuntu

USER 0

RUN apt-get update 

RUN apt-get install -y python3 && apt-get install -y python3-pip

RUN pip3 install pytest
