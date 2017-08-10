# Check enviro is set up correctly
if [ -z "$WW_CODE_DIR" ]; then
	echo 'WW_CODE_DIR is not set';
	exit;
fi

docker run \
	--link postgres:postgres \
	--name dev \
	-v $HOME:/host_user:ro \
	-v $WW_CODE_DIR:/home/wherewolf/code \
	-p 8000:8000 \
	-p 8001:8001 \
	-t wherewolfnz/espresso