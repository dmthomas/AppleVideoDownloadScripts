# Scripts for downloading higher resolution videos of Apple Events using ffmpeg from Apple's streams

You may have to update ffmpeg before using this script. I needed version 4.3 or higher to successfully download the videos.

If you want the lower bitrate audio, do a find/replace of "audio_english_192" with "audio_english_64"
In general so far, if you want lower bitrate or lower resolution video, do a find/replace of "hvc_2160p_16800" with any of the following:

```code
"hvc_2160p_11600"
"hvc_1440p_8100"
"hvc_1080p_5800"
"hvc_1080p_4500"
"hvc_720p_3400"
"hvc_720p_2400"
"hvc_540p_1600"
"avc_1080p_6000"
"avc_720p_4500"
"avc_720p_3000"
"avc_540p_2000"
```

I will have separate scripts for HVC 2160 16800, HVC 1440p 8100, and HVC 1080p 5800, but if you want any of the other resolution/bitrate combinations, do the find/replace above.

I recommend testing using the below five lines to get the Monday Wrap-up video because it's short before using all or any of the remaining scripts to verify that your ffmpeg install works correctly.

```bash
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2020/10691/2/A92788CB-81ED-4CCF-B6B1-4DD7A1F3E87D/hvc_2160p_16800/prog_index.m3u8 -c copy "Session - 10691 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2020/10691/2/A92788CB-81ED-4CCF-B6B1-4DD7A1F3E87D/audio_english_192/prog_index.m3u8 -c copy "Session - 10691 temp.aac"
ffmpeg -i "Session - 10691 temp.mp4" -i "Session - 10691 temp.aac" -c copy "Session 10691 - Monday@WWDC.mp4"
rm "Session - 10691 temp.mp4"
rm "Session - 10691 temp.aac"
```

If you need help with ffmpeg, I recommend installing homebrew and running

```bash
brew install ffmpeg
```

Also, ffmpeg sometimes stalls while downloading from streams, so I recommend copying a few videos/sessions out of the script into a separate script and running that because it makes it easier to deal with removing the videos that are completed when you get a stall.