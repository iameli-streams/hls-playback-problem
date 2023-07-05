# HLS Playback Problems

The main `problem.m3u8` reproduces the issue.

Doing a no-op ffmpeg remux fixes the issue, apparently.

```
mkdir no-changes
cp problem.m3u8 no-changes
find . -maxdepth 1 -type f -name '*.ts' -exec ffmpeg -i {} -y -vsync passthrough -copyts -c copy no-changes/{} \;
```
