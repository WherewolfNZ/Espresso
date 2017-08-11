FROM wherewolfnz/dev
MAINTAINER Stephen Hazleton <stephen@wherewolf.co.nz>

USER root

# tag containers as espresso
RUN echo "CONTAINER_TYPE=ESPRESSO" >> /etc/environment

RUN apt-get update && \
	# needed to build espresso \
	apt-get install -y default-jdk

# copy source code from build context
RUN mkdir /home/wherewolf/Espresso
COPY source /home/wherewolf/Espresso/

# fix args
RUN sed -i '/cmdParser.dispatch(args)/iargs.shift();' /home/wherewolf/Espresso/bin/espresso.js

RUN chown -R wherewolf:wherewolf /home/wherewolf/Espresso

# CMD inherited from DEV

EXPOSE 8000 8001
