FROM wherewolfnz/dev
MAINTAINER Stephen Hazleton <stephen@wherewolf.co.nz>

WORKDIR /home/wherewolf/Espresso

USER root

# install source code
COPY . .

# tag containers as espresso
RUN echo "CONTAINER_TYPE=ESPRESSO" >> /etc/environment && \
\
# install deps \
apt-get update && \
	# JDK is needed to build espresso \
	apt-get install -y --no-install-recommends default-jdk && \
	# node is needed to run espresso and to install hooks \
	apt-get install -y --no-install-recommends curl && \
	curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
	apt-get install -y --no-install-recommends nodejs && \
	# JSHint \
	npm install -g jshint && \
\
# take ownership \
chown -R wherewolf:wherewolf /home/wherewolf/Espresso && \
\
# cleanup \
rm -rf /var/lib/apt/lists/*

# CMD inherited from DEV

EXPOSE 8000 8001
