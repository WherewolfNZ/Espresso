docker run -d`
	--link postgres:postgres `
	--name espresso `
	-v ${HOME}:/host_user:ro `
	-v ${HOME}/code/wherewolf:/home/wherewolf/code `
	-p 8000:8000 `
	-p 8001:8001 `
	-p 2024:22 `
	-t wherewolfnz/espresso