FROM quay.io/fenicsproject/dev:latest

ENTRYPOINT ["jupyter", "notebook", \
            "--ip=0.0.0.0", \
            "--port=8888", \
            "--no-browser", \
            "--allow-root"]
