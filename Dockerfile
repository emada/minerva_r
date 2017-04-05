FROM docker/whalesay:latest
RUN apt-get -y update && apt-get install -y r-base

# Since the default user is root, $HOME is actually / at this point
ADD .Renviron /.Renviron
ADD .Rprofile /.Rprofile
ADD r-config.R /tmp/r-config.R

RUN cat /tmp/r-config.R | R --no-save

