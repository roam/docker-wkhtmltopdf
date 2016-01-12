# Dockerized Wkhtmltopdf

Provides [wkhtmltopdf](http://wkhtmltopdf.org/) (version 0.12.2.1) on top of Ubuntu 12.04.

Usage:

    docker run --rm -m="500m" -v /opt/extra/fonts/:/usr/share/fonts/truetype/pdf -v `pwd`:/data roam/wkhtmltopdf:12.04-0.12.2.1 --print-media-type http://docker.com /data/docker.com.pdf
