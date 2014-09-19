FROM marxin/gcc-docker
MAINTAINER Martin Liška

WORKDIR /abuild/gimp-2.8.8
ENV CFLAGS -flto=4
ENV CXXFLAGS -flto=4
ENV LDFLAGS -flto=4

RUN ./configure && make -j$(nproc) V=1
