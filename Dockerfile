FROM ubuntu:latest

RUN apt update -y && apt-get install -y software-properties-common python-software-properties \
    && apt-add-repository ppa:kwant-project/ppa \
    && apt-get update -y && apt-get install -y python3-kwant  python-kwant-doc python3-pip \
    && pip3 install nose \
    && python3 -c 'import kwant; kwant.test()'
CMD ["/bin/bash"]
