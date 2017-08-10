FROM wherewolfnz/dev
MAINTAINER Stephen Hazleton <stephen@wherewolf.co.nz>

USER root

RUN apt-get update && \
	# needed to build espresso \
	apt-get install -y default-jdk

USER wherewolf

# Espresso
# copy source code from build context
RUN mkdir /home/wherewolf/Espresso
COPY source /home/wherewolf/Espresso/

# fix args
RUN sed -i '/cmdParser.dispatch(args)/iargs.shift();' /home/wherewolf/Espresso/bin/espresso.js

USER root

CMD su - wherewolf -c \
		"/home/wherewolf/code/helperscripts/start_container.sh && \
		trap : TERM INT; sleep infinity & wait"

EXPOSE 8000 8001
