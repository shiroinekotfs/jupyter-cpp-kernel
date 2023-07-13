FROM jupyter/minimal-notebook
MAINTAINER Tsuki Takineko <systakineko.tfs@gmail.com>

USER root

WORKDIR /tmp

COPY ./ jupyter_cpp_kernel/

RUN pip install --no-cache-dir jupyter_cpp_kernel/
RUN cd jupyter_cpp_kernel && install_cpp_kernel --user

WORKDIR /home/$NB_USER/

USER $NB_USER
