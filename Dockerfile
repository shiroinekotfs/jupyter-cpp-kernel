FROM jupyter/minimal-notebook
MAINTAINER Tsuki Takineko <systakineko.tfs@gmail.com>

USER root

WORKDIR /tmp

COPY ./ jupyter_cpp_kernel/

RUN pip install jupyter_cpp_kernel

WORKDIR /home/$NB_USER/

USER $NB_USER
