
.PHONY: no-changes
no-changes:
	mkdir -p no-changes
	cp problem.m3u8 no-changes
	find . -maxdepth 1 -type f -name '*.ts' -exec ffmpeg -i {} -y -vsync passthrough -copyts -c copy no-changes/{} \;
