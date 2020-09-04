# Use Ubuntu because of its better font hinting defaults
FROM ubuntu:20.04
MAINTAINER Kevin Wetzels <kevin@roam.be>
# Add a local copy (because Sourceforge)
ADD wkhtmltox_0.12.6-1.focal_amd64.deb .
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Brussels
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Install prerequisites and common fonts
RUN echo 'deb http://us.archive.ubuntu.com/ubuntu/ focal multiverse' >> /etc/apt/sources.list && \
    echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ focal multiverse' >> /etc/apt/sources.list && \
    $(echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections) && \
    apt-get update && \
    apt-get install -y xorg libssl-dev libxrender-dev libjpeg8-dev libjpeg8 fontconfig ttf-mscorefonts-installer xfonts-75dpi time && \
    dpkg -i wkhtmltox_0.12.6-1.focal_amd64.deb
ENTRYPOINT ["/usr/local/bin/wkhtmltopdf"]
CMD ["-h"]
