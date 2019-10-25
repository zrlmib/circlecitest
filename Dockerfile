From ubuntu:18.04

MAINTAINER MIB (mib@zurich.ibm.com)

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get upgrade -y

RUN useradd -ms /bin/bash hades
ADD README.md /home/hades/README.md
RUN chown hades.hades /home/hades/README.md
USER hades
WORKDIR /home/hades
CMD ["/bin/bash"]
