# Script to download Friday's WWDC 23 session videos in the highest 1440p video and audio
# You may have to update ffmpeg before using this script. I needed version 4.3 or higher to successfully download the videos.
#
# If you want the lower bitrate audio, do a find/replace of "audio_english_192" with "audio_english_64"
# If you want lower bitrate or lower resolution video, do a find/replace of "hvc_1440p_8100" with any of the following:
# "hvc_2160p_11600"
# "hvc_1440p_8100"
# "hvc_1080p_5800"
# "hvc_1080p_4500"
# "hvc_720p_3400"
# "hvc_720p_2400"
# "hvc_540p_1600"
# "avc_1080p_6000"
# "avc_720p_4500"
# "avc_720p_3000"
# "avc_540p_2000"
#
# Test using the below five lines to get the WWDC 20 Monday Wrap-up video because it's short before using all or any of the remaining script.
#ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2020/10691/2/A92788CB-81ED-4CCF-B6B1-4DD7A1F3E87D/hvc_2160p_16800/prog_index.m3u8 -c copy "Session - 10691 temp.mp4"
#ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2020/10691/2/A92788CB-81ED-4CCF-B6B1-4DD7A1F3E87D/audio_english_192/prog_index.m3u8 -c copy "Session - 10691 temp.aac"
#ffmpeg -i "Session - 10691 temp.mp4" -i "Session - 10691 temp.aac" -c copy "Session 10691 - Monday@WWDC.mp4"
#rm "Session - 10691 temp.mp4"
#rm "Session - 10691 temp.aac"
#

# 1
# Session 10158 - Animate with springs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10158 temp.vtt"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -i "Session - 10158 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10158 - Animate with springs (1440p).mp4"
rm "Session - 10158 temp.vtt"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 2
# Session 10101 - Customize on-device speech recognition
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Customize on-device speech recognition (1440p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 3
# Session 10078 - Design considerations for vision and motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10078 temp.vtt"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -i "Session - 10078 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10078 - Design considerations for vision and motion (1440p).mp4"
rm "Session - 10078 temp.vtt"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 4
# Session 10089 - Discover Metal for immersive apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - Discover Metal for immersive apps (1440p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 5
# Session 10180 - Discover streamlined location updates
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10180 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10180 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10180 temp.vtt"
ffmpeg -i "Session - 10180 temp.mp4" -i "Session - 10180 temp.aac" -i "Session - 10180 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10180 - Discover streamlined location updates (1440p).mp4"
rm "Session - 10180 temp.vtt"
rm "Session - 10180 temp.mp4"
rm "Session - 10180 temp.aac"

# 6
# Session 10196 - Dive deeper into SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10196 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10196 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10196 temp.vtt"
ffmpeg -i "Session - 10196 temp.mp4" -i "Session - 10196 temp.aac" -i "Session - 10196 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10196 - Dive deeper into SwiftData (1440p).mp4"
rm "Session - 10196 temp.vtt"
rm "Session - 10196 temp.mp4"
rm "Session - 10196 temp.aac"

# 7
# Session 10110 - Elevate your windowed app for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Elevate your windowed app for spatial computing (1440p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 8
# Session 10107 - Embed the Photos Picker in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Embed the Photos Picker in your app (1440p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 9
# Session 10275 - Explore AirPlay with interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10275 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10275 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/subtitles/eng/prog_index.m3u8 -c copy "Session - 10275 temp.vtt"
ffmpeg -i "Session - 10275 temp.mp4" -i "Session - 10275 temp.aac" -i "Session - 10275 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10275 - Explore AirPlay with interstitials (1440p).mp4"
rm "Session - 10275 temp.vtt"
rm "Session - 10275 temp.mp4"
rm "Session - 10275 temp.aac"

# 10
# Session 10142 - Explore testing in-app purchases
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/subtitles/eng/prog_index.m3u8 -c copy "Session - 10142 temp.vtt"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -i "Session - 10142 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10142 - Explore testing in-app purchases (1440p).mp4"
rm "Session - 10142 temp.vtt"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 11
# Session 10086 - Explore the USD ecosystem
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10086 temp.vtt"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -i "Session - 10086 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10086 - Explore the USD ecosystem (1440p).mp4"
rm "Session - 10086 temp.vtt"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 12
# Session 10281 - Keep up with the keyboard
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10281 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10281 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10281 temp.vtt"
ffmpeg -i "Session - 10281 temp.mp4" -i "Session - 10281 temp.aac" -i "Session - 10281 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10281 - Keep up with the keyboard (1440p).mp4"
rm "Session - 10281 temp.vtt"
rm "Session - 10281 temp.mp4"
rm "Session - 10281 temp.aac"

# 13
# Session 10032 - Meet Assistive Access
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10032 temp.vtt"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -i "Session - 10032 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10032 - Meet Assistive Access (1440p).mp4"
rm "Session - 10032 temp.vtt"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 14
# Session 10039 - Meet device management for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10039 temp.vtt"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -i "Session - 10039 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10039 - Meet device management for Apple Watch (1440p).mp4"
rm "Session - 10039 temp.vtt"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 15
# Session 10171 - Meet Swift OpenAPI Generator
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/subtitles/eng/prog_index.m3u8 -c copy "Session - 10171 temp.vtt"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -i "Session - 10171 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10171 - Meet Swift OpenAPI Generator (1440p).mp4"
rm "Session - 10171 temp.vtt"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 16
# Session 10241 - Share files with SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10241 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10241 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10241 temp.vtt"
ffmpeg -i "Session - 10241 temp.mp4" -i "Session - 10241 temp.aac" -i "Session - 10241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10241 - Share files with SharePlay (1440p).mp4"
rm "Session - 10241 temp.vtt"
rm "Session - 10241 temp.mp4"
rm "Session - 10241 temp.aac"

# 17
# Session 10162 - The SwiftUI cookbook for focus
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - The SwiftUI cookbook for focus (1440p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 18
# Session 10179 - What's new in Core Motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10179 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10179 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10179 temp.vtt"
ffmpeg -i "Session - 10179 temp.mp4" -i "Session - 10179 temp.aac" -i "Session - 10179 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10179 - What's new in Core Motion (1440p).mp4"
rm "Session - 10179 temp.vtt"
rm "Session - 10179 temp.mp4"
rm "Session - 10179 temp.aac"

# 19
# Session 10119 - What's new in Safari extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/subtitles/eng/prog_index.m3u8 -c copy "Session - 10119 temp.vtt"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -i "Session - 10119 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10119 - What's new in Safari extensions (1440p).mp4"
rm "Session - 10119 temp.vtt"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 20
# Session 10118 - What's new in Web Inspector
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/subtitles/eng/prog_index.m3u8 -c copy "Session - 10118 temp.vtt"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -i "Session - 10118 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10118 - What's new in Web Inspector (1440p).mp4"
rm "Session - 10118 temp.vtt"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"
