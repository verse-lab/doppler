FROM ubuntu:22.04 as base

USER root

RUN apt-get update && \
    apt-get -y install git build-essential cmake wget

RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|apt-key add - && \
    apt-get -y install clang-13 llvm-13 llvm-13-dev llvm-13-tools

RUN apt-get -y install python3

WORKDIR /home/

RUN git clone https://github.com/Z3Prover/z3.git /home/z3 && \
    cd /home/z3 && \
    mkdir build && \
    cd build && \
    cmake -G "Unix Makefiles" ../ && \
    make -j4 

RUN export CMAKE_PREFIX_PATH="/home/z3/build"

ADD ./DOPPLER /home/DOPPLER
RUN apt-get -y install python3-pip && \
    pip install lit
RUN apt-get -y install sqlite3 libsqlite3-dev

RUN cd /home/DOPPLER/thirdparty/klee && \
    mkdir build && \
    cd build && \
    cmake .. && \
    make -j4

RUN mkdir /home/DOPPLER/build && \
    cd /home/DOPPLER/build && CMAKE_PREFIX_PATH="/home/z3/build" cmake .. && make


FROM base AS final


