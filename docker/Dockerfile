FROM  cyberdojofoundation/gcc:7.1
LABEL maintainer=jon@jaggersoft.com

RUN apt-get update \
 && apt-get -y install wget unzip cmake

RUN wget https://github.com/cgreen-devs/cgreen/archive/master.zip \
 && unzip master.zip

RUN cd cgreen-master \
 && mkdir build \
 && cd build \
 && cmake .. \
 && make \
 && make install

COPY red_amber_green.rb /usr/local/bin
