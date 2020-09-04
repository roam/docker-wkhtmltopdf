# Dockerized Wkhtmltopdf

Provides [wkhtmltopdf](http://wkhtmltopdf.org/) (version 0.12.6.1) on top of Ubuntu 20.04.

Usage:

    docker run --rm -m="500m" -v /opt/extra/fonts/:/usr/share/fonts/truetype/pdf -v `pwd`:/data roam/wkhtmltopdf:20.04-0.12.6.1 --print-media-type http://docker.com /data/docker.com.pdf
