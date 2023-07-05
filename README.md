# HLS Playback Problems

The main `problem.m3u8` reproduces the issue. 1661.ts is the cursed file.

Doing a no-op ffmpeg remux fixes the issue, apparently. Run `make`.
