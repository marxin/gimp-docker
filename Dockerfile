FROM marxin/gcc-docker
MAINTAINER Martin Liška

WORKDIR /abuild/gimp
ENV CFLAGS -flto=4
ENV CXXFLAGS -flto=4
ENV LDFLAGS -flto=4

RUN echo "CPUs: `nproc`"
RUN echo "MEMORY: " `cat /proc/meminfo | grep MemTotal`

RUN ./configure && make -j$(nproc) V=1
