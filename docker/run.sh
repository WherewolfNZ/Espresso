docker run \
	--link postgres:postgres \
	--name dev \
	-v $HOME:/host_user:ro \
	-v $WW_CODE_DIR:/home/wherewolf/code \
	-p 8000:8000 \
	-p 8001:8001 \
	-t wherewolfnz/espresso