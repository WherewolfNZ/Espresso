docker run \
	--link postgres:postgres \
	--link backend:backend \
	--name espresso \
	-v $HOME:/host_user:ro \
	-v $WW_CODE_DIR:/home/wherewolf/code \
	-p 8000:8000 \
	-p 8001:8001 \
	-p 2024:22 \
	-dt wherewolfnz/espresso