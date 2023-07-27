FROM amazonlinux:2023
RUN ulimit -n 1024 && yum -y update && yum -y install \
    python39 \
    python3-pip \
    zip \
    && yum clean all

RUN python3 -m pip install pip
RUN pip install virtualenv
