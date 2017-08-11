FROM wherewolfnz/dev
MAINTAINER Stephen Hazleton <stephen@wherewolf.co.nz>

USER root

# tag containers as espresso
RUN echo "CONTAINER_TYPE=ESPRESSO" >> /etc/environment

RUN apt-get update && \
	# JDK is needed to build espresso \
	apt-get install -y default-jdk && \
	# node is needed to run espresso and to install hooks \
	apt-get install curl && \
	curl -sL https://deb.nodesource.com/setup_7.x | bash - && \
	apt-get install -y nodejs

# copy source code from build context
RUN mkdir /home/wherewolf/Espresso
COPY source /home/wherewolf/Espresso/

# fix args
RUN sed -i '/cmdParser.dispatch(args)/iargs.shift();' /home/wherewolf/Espresso/bin/espresso.js

RUN chown -R wherewolf:wherewolf /home/wherewolf/Espresso

# CMD inherited from DEV

EXPOSE 8000 8001
