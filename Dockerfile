FROM mono

RUN mkdir /build

RUN apt update
RUN apt install -y vim
RUN apt install -y p7zip-full

