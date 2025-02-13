FROM public.ecr.aws/lts/ubuntu:18.04_stable AS base

USER root

RUN apt-get update && \
    apt-get -y install git build-essential

RUN apt-get -y install python2.7
RUN apt-get -y install libffi-dev

WORKDIR /home/

ADD ./demo_examples /home/demo_examples
ADD ./payloads /home/payloads
ADD ./real_examples /home/real_examples
ADD ./run.sh /home/run.sh
ADD ./tb4_bopc.sh /home/tb4_bopc.sh

RUN git clone https://github.com/sei-eschwartz/BOPC.git /home/BOPC

ARG DEBIAN_FRONTEND=noninteractive

RUN cd /home/BOPC && \
    chmod +x ./setup.sh && \
    ./setup.sh 

RUN pip install numpy

RUN rm -rf /home/BOPC/evaluation
RUN rm -rf /home/BOPC/payloads

FROM base AS final