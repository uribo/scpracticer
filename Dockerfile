FROM rocker/tidyverse:3.5.3

RUN set -x && \
  apt-get update && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

ARG GITHUB_PAT

RUN set -x && \
  echo "GITHUB_PAT=$GITHUB_PAT" >> /usr/local/lib/R/etc/Renviron

RUN install2.r \
  servr \
  bookdown
