FROM docker pull quay.io/fenicsproject/dev:latest

USER root
RUN apt-get update && apt-get install -y wget

RUN pip install notebook jupyterlab

USER jovyan
WORKDIR /home/jovyan
