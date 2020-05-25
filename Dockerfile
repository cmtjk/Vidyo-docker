FROM debian

COPY ./opt /opt
COPY ./usr /usr

RUN apt-get update && apt-get install -y \
        libidn11 \
        libasound2 \
        libxv1 \
        libgl1 \
        libglu1 \
        libxrandr2 \
        libxss1 \
        libqtwebkit4

ENTRYPOINT ["VidyoDesktop"]

