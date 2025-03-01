FROM alpine:latest
LABEL MAINTAINER="https://github.com/globalcodingjunction/g_c_j_phisher.git
WORKDIR /g_c_j_phisher/
ADD . /g_c_j_phisher
RUN apk add --no-cache bash ncurses curl unzip wget php 
CMD "./g_c_j_phisher.sh"
