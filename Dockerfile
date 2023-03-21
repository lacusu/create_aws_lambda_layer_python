FROM amazonlinux:2018.03
RUN ulimit -n 1024 && yum -y update && yum -y install \
    python38 \
    python38-pip \
    python38-devel \
    zip \
    shadow-utils \
    && yum clean all

#RUN adduser -D python_user
#USER python_user
#WORKDIR /home/python_user

RUN python3 -m pip install pip==22.2.2
RUN pip install virtualenv==20.14.1