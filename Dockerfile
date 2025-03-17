FROM ubuntu:22.04 AS base

USER root

# uncomment this line if you are using ARM machine and getting 404 error while running apt-get
# RUN rm -f /etc/apt/sources.list.d/archive_uri-*

RUN apt-get update && \
    apt-get -y install git build-essential cmake wget

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|apt-key add - && \
    apt-get -y install clang-13 llvm-13 llvm-13-dev llvm-13-tools

RUN apt-get -y install python3 python3-pip

RUN pip install --upgrade pip && pip install lit
RUN apt-get -y install sqlite3 libsqlite3-dev

WORKDIR /home/

RUN git clone https://github.com/Z3Prover/z3.git /home/z3 && \
    cd /home/z3 && \
    mkdir build && \
    cd build && \
    cmake -G "Unix Makefiles" ../ && \
    make -j4 

RUN export CMAKE_PREFIX_PATH="/home/z3/build"

ADD ./DOPPLER /home/DOPPLER

RUN cd /home/DOPPLER/thirdparty/klee && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j4

RUN mkdir /home/DOPPLER/build && \
    cd /home/DOPPLER/build && CMAKE_PREFIX_PATH="/home/z3/build" cmake .. && make

ADD ./DOPPLER_evaluation /home/DOPPLER_evaluation

FROM base AS final


