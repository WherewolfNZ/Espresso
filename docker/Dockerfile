FROM wherewolfnz/dev
MAINTAINER Stephen Hazleton <stephen@wherewolf.co.nz>

RUN apt-get update && \
	# needed to build espresso \
	apt-get install -y default-jdk && \

USER wherewolf

# Espresso
RUN cd /home/wherewolf && \
	git clone git@github.com:WherewolfNZ/Espresso && \
	sed -i '/cmdParser.dispatch(args)/iargs.shift();' Espresso/bin/espresso.js

EXPOSE 8000 8001
