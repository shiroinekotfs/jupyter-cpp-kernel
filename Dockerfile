FROM jupyter/minimal-notebook
MAINTAINER shiroinekotfs <shiroineko.tfs@gmail.com>

USER root

WORKDIR /tmp

COPY ./ jupyter-cpp-kernel/

RUN pip install jupyter-cpp-kernel

WORKDIR /home/$NB_USER/

USER $NB_USER
