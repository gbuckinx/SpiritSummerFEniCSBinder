FROM quay.io/fenicsproject/dev:latest

USER root

RUN apt-get update && apt-get install -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install notebook jupyterlab ipywidgets

USER fenics

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser"]
