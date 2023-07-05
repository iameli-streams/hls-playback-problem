
.PHONY: no-changes
no-changes:
	mkdir -p no-changes
	cp problem.m3u8 no-changes
	find . -maxdepth 1 -type f -name '*.ts' -exec ffmpeg -i {} -y -vsync passthrough -map 0:0 -map 0:1 -map 0:2 -copyts -c copy no-changes/{} \;
