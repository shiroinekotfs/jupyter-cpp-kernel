FROM jupyter/minimal-notebook

USER root

# Install vim and ssh
RUN apt-get update
RUN apt-get install -y vim openssh-client

WORKDIR /tmp

COPY ./ jupyter_cpp_kernel/

RUN pip install --no-cache-dir -e jupyter_cpp_kernel/ > piplog.txt
RUN cd jupyter_cpp_kernel && install_cpp_kernel --user > installlog.txt

WORKDIR /home/$NB_USER/

USER $NB_USER
