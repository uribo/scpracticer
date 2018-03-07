##########
# To build
#   docker build -t uribo/scpracticer .
#
# To run
#   docker run -v $HOME/Documents/projects2018/scpracticer:/home/rstudio/scpracticer --rm -p 8787:8787 uribo/scpracticer
###########
FROM rocker/tidyverse:latest
MAINTAINER Shinya Uryu "suika1127@gmail.com"

RUN apt-get update

RUN install2.r \
  servr \
  bookdown
