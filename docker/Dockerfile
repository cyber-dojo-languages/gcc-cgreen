FROM  cyberdojofoundation/gcc:7.1
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install unzip
RUN apt-get -y install cmake

RUN wget https://github.com/cgreen-devs/cgreen/archive/master.zip
RUN unzip master.zip

RUN cd cgreen-master \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make \
 && make install

COPY red_amber_green.rb /usr/local/bin
