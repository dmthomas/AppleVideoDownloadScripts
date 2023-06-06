# Script to download Tuesday's WWDC 23 session videos in the highest 1440p video and audio
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
# Session 10239 - Add SharePlay to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10239 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10239 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10239 temp.vtt"
ffmpeg -i "Session - 10239 temp.mp4" -i "Session - 10239 temp.aac" -i "Session - 10239 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10239 - Add SharePlay to your app (1440p).mp4"
rm "Session - 10239 temp.vtt"
rm "Session - 10239 temp.mp4"
rm "Session - 10239 temp.aac"

# 2
# Session 10027 - Bring widgets to new places
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10027 temp.vtt"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -i "Session - 10027 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10027 - Bring widgets to new places (1440p).mp4"
rm "Session - 10027 temp.vtt"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 3
# Session 10124 - Bring your game to Mac - Compile your shaders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10124 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10124 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10124 temp.vtt"
ffmpeg -i "Session - 10124 temp.mp4" -i "Session - 10124 temp.aac" -i "Session - 10124 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10124 - Bring your game to Mac - Compile your shaders (1440p).mp4"
rm "Session - 10124 temp.vtt"
rm "Session - 10124 temp.mp4"
rm "Session - 10124 temp.aac"

# 4
# Session 10123 - Bring your game to Mac - Make a game plan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/subtitles/eng/prog_index.m3u8 -c copy "Session - 10123 temp.vtt"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -i "Session - 10123 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10123 - Bring your game to Mac - Make a game plan (1440p).mp4"
rm "Session - 10123 temp.vtt"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 5
# Session 10125 - Bring your game to Mac - Render with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10125 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10125 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/subtitles/eng/prog_index.m3u8 -c copy "Session - 10125 temp.vtt"
ffmpeg -i "Session - 10125 temp.mp4" -i "Session - 10125 temp.aac" -i "Session - 10125 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10125 - Bring your game to Mac - Render with Metal (1440p).mp4"
rm "Session - 10125 temp.vtt"
rm "Session - 10125 temp.mp4"
rm "Session - 10125 temp.aac"

# 6
# Session 10016 - Build custom workouts with WorkoutKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10016 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10016 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/subtitles/eng/prog_index.m3u8 -c copy "Session - 10016 temp.vtt"
ffmpeg -i "Session - 10016 temp.mp4" -i "Session - 10016 temp.aac" -i "Session - 10016 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10016 - Build custom workouts with WorkoutKit (1440p).mp4"
rm "Session - 10016 temp.vtt"
rm "Session - 10016 temp.mp4"
rm "Session - 10016 temp.aac"

# 7
# Session 10096 - Build great games for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - Build great games for spatial computing (1440p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 8
# Session 10080 - Build spatial experiences with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10080 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10080 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/subtitles/eng/prog_index.m3u8 -c copy "Session - 10080 temp.vtt"
ffmpeg -i "Session - 10080 temp.mp4" -i "Session - 10080 temp.aac" -i "Session - 10080 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10080 - Build spatial experiences with RealityKit (1440p).mp4"
rm "Session - 10080 temp.vtt"
rm "Session - 10080 temp.mp4"
rm "Session - 10080 temp.aac"

# 9
# Session 10051 - Create a great ShazamKit experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10051 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10051 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10051 temp.vtt"
ffmpeg -i "Session - 10051 temp.mp4" -i "Session - 10051 temp.aac" -i "Session - 10051 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10051 - Create a great ShazamKit experience (1440p).mp4"
rm "Session - 10051 temp.vtt"
rm "Session - 10051 temp.mp4"
rm "Session - 10051 temp.aac"

# 10
# Session 10034 - Create accessible spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10034 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10034 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/subtitles/eng/prog_index.m3u8 -c copy "Session - 10034 temp.vtt"
ffmpeg -i "Session - 10034 temp.mp4" -i "Session - 10034 temp.aac" -i "Session - 10034 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10034 - Create accessible spatial experiences (1440p).mp4"
rm "Session - 10034 temp.vtt"
rm "Session - 10034 temp.mp4"
rm "Session - 10034 temp.aac"

# 11
# Session 10244 - Create rich documentation with Swift-DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10244 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10244 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10244 temp.vtt"
ffmpeg -i "Session - 10244 temp.mp4" -i "Session - 10244 temp.aac" -i "Session - 10244 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10244 - Create rich documentation with Swift-DocC (1440p).mp4"
rm "Session - 10244 temp.vtt"
rm "Session - 10244 temp.mp4"
rm "Session - 10244 temp.aac"

# 12
# Session 10226 - Debug with structured logging
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10226 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10226 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10226 temp.vtt"
ffmpeg -i "Session - 10226 temp.mp4" -i "Session - 10226 temp.aac" -i "Session - 10226 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10226 - Debug with structured logging (1440p).mp4"
rm "Session - 10226 temp.vtt"
rm "Session - 10226 temp.mp4"
rm "Session - 10226 temp.aac"

# 13
# Session 10138 - Design and build apps for watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10138 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10138 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/subtitles/eng/prog_index.m3u8 -c copy "Session - 10138 temp.vtt"
ffmpeg -i "Session - 10138 temp.mp4" -i "Session - 10138 temp.aac" -i "Session - 10138 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10138 - Design and build apps for watchOS 10 (1440p).mp4"
rm "Session - 10138 temp.vtt"
rm "Session - 10138 temp.mp4"
rm "Session - 10138 temp.aac"

# 14
# Session 10073 - Design for spatial input
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10073 temp.vtt"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -i "Session - 10073 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10073 - Design for spatial input (1440p).mp4"
rm "Session - 10073 temp.vtt"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 15
# Session 10076 - Design for spatial user interfaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10076 temp.vtt"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -i "Session - 10076 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10076 - Design for spatial user interfaces (1440p).mp4"
rm "Session - 10076 temp.vtt"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 16
# Session 10075 - Design spatial SharePlay experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Design spatial SharePlay experiences (1440p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 17
# Session 10045 - Detect animal poses in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10045 temp.vtt"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -i "Session - 10045 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10045 - Detect animal poses in Vision (1440p).mp4"
rm "Session - 10045 temp.vtt"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 18
# Session 10203 - Develop your first immersive app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/subtitles/eng/prog_index.m3u8 -c copy "Session - 10203 temp.vtt"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -i "Session - 10203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10203 - Develop your first immersive app (1440p).mp4"
rm "Session - 10203 temp.vtt"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 19
# Session 10044 - Discover machine learning enhancements in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10044 temp.vtt"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -i "Session - 10044 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10044 - Discover machine learning enhancements in Create ML (1440p).mp4"
rm "Session - 10044 temp.vtt"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 20
# Session 10149 - Discover Observation in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - Discover Observation in SwiftUI (1440p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 21
# Session 10155 - Discover String Catalogs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Discover String Catalogs (1440p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 22
# Session 10233 - Enhance your app’s audio experience with AirPods
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10233 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10233 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/subtitles/eng/prog_index.m3u8 -c copy "Session - 10233 temp.vtt"
ffmpeg -i "Session - 10233 temp.mp4" -i "Session - 10233 temp.aac" -i "Session - 10233 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10233 - Enhance your app’s audio experience with AirPods (1440p).mp4"
rm "Session - 10233 temp.vtt"
rm "Session - 10233 temp.mp4"
rm "Session - 10233 temp.aac"

# 23
# Session 10094 - Enhance your iPad and iPhone apps for the Shared Space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Enhance your iPad and iPhone apps for the Shared Space (1440p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 24
# Session 10167 - Expand on Swift macros
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/subtitles/eng/prog_index.m3u8 -c copy "Session - 10167 temp.vtt"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -i "Session - 10167 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10167 - Expand on Swift macros (1440p).mp4"
rm "Session - 10167 temp.vtt"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 25
# Session 10012 - Explore App Store Connect for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10012 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10012 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10012 temp.vtt"
ffmpeg -i "Session - 10012 temp.mp4" -i "Session - 10012 temp.aac" -i "Session - 10012 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10012 - Explore App Store Connect for spatial computing (1440p).mp4"
rm "Session - 10012 temp.vtt"
rm "Session - 10012 temp.mp4"
rm "Session - 10012 temp.aac"

# 26
# Session 10192 - Explore enhancements to RoomPlan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10192 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10192 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10192 temp.vtt"
ffmpeg -i "Session - 10192 temp.mp4" -i "Session - 10192 temp.aac" -i "Session - 10192 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10192 - Explore enhancements to RoomPlan (1440p).mp4"
rm "Session - 10192 temp.vtt"
rm "Session - 10192 temp.mp4"
rm "Session - 10192 temp.aac"

# 27
# Session 10168 - Generalize APIs with parameter packs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10168 temp.vtt"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -i "Session - 10168 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10168 - Generalize APIs with parameter packs (1440p).mp4"
rm "Session - 10168 temp.vtt"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 28
# Session 10260 - Get started with building apps for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10260 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10260 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10260 temp.vtt"
ffmpeg -i "Session - 10260 temp.mp4" -i "Session - 10260 temp.aac" -i "Session - 10260 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10260 - Get started with building apps for spatial computing (1440p).mp4"
rm "Session - 10260 temp.vtt"
rm "Session - 10260 temp.mp4"
rm "Session - 10260 temp.aac"

# 29
# Session 10104 - Integrate your media app with HomePod
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Integrate your media app with HomePod (1440p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 30
# Session 10176 - Lift subjects from images in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/subtitles/eng/prog_index.m3u8 -c copy "Session - 10176 temp.vtt"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -i "Session - 10176 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10176 - Lift subjects from images in your app (1440p).mp4"
rm "Session - 10176 temp.vtt"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 31
# Session 10229 - Make features discoverable with TipKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10229 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10229 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10229 temp.vtt"
ffmpeg -i "Session - 10229 temp.mp4" -i "Session - 10229 temp.aac" -i "Session - 10229 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10229 - Make features discoverable with TipKit (1440p).mp4"
rm "Session - 10229 temp.vtt"
rm "Session - 10229 temp.mp4"
rm "Session - 10229 temp.aac"

# 32
# Session 10184 - Meet ActivityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10184 temp.vtt"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -i "Session - 10184 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10184 - Meet ActivityKit (1440p).mp4"
rm "Session - 10184 temp.vtt"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 33
# Session 10082 - Meet ARKit for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10082 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10082 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/subtitles/eng/prog_index.m3u8 -c copy "Session - 10082 temp.vtt"
ffmpeg -i "Session - 10082 temp.mp4" -i "Session - 10082 temp.aac" -i "Session - 10082 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10082 - Meet ARKit for spatial computing (1440p).mp4"
rm "Session - 10082 temp.vtt"
rm "Session - 10082 temp.mp4"
rm "Session - 10082 temp.aac"

# 34
# Session 10043 - Meet MapKit for SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10043 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10043 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10043 temp.vtt"
ffmpeg -i "Session - 10043 temp.mp4" -i "Session - 10043 temp.aac" -i "Session - 10043 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10043 - Meet MapKit for SwiftUI (1440p).mp4"
rm "Session - 10043 temp.vtt"
rm "Session - 10043 temp.mp4"
rm "Session - 10043 temp.aac"

# 35
# Session 10083 - Meet Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Meet Reality Composer Pro (1440p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 36
# Session 10279 - Meet Safari for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10279 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10279 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10279 temp.vtt"
ffmpeg -i "Session - 10279 temp.mp4" -i "Session - 10279 temp.aac" -i "Session - 10279 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10279 - Meet Safari for spatial computing (1440p).mp4"
rm "Session - 10279 temp.vtt"
rm "Session - 10279 temp.mp4"
rm "Session - 10279 temp.aac"

# 37
# Session 10013 - Meet StoreKit for SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10013 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10013 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10013 temp.vtt"
ffmpeg -i "Session - 10013 temp.mp4" -i "Session - 10013 temp.aac" -i "Session - 10013 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10013 - Meet StoreKit for SwiftUI (1440p).mp4"
rm "Session - 10013 temp.vtt"
rm "Session - 10013 temp.mp4"
rm "Session - 10013 temp.aac"

# 38
# Session 10187 - Meet SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10187 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10187 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10187 temp.vtt"
ffmpeg -i "Session - 10187 temp.mp4" -i "Session - 10187 temp.aac" -i "Session - 10187 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10187 - Meet SwiftData (1440p).mp4"
rm "Session - 10187 temp.vtt"
rm "Session - 10187 temp.mp4"
rm "Session - 10187 temp.aac"

# 39
# Session 10109 - Meet SwiftUI for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - Meet SwiftUI for spatial computing (1440p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 40
# Session 111215 - Meet UIKit for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111215 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111215 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/subtitles/eng/prog_index.m3u8 -c copy "Session - 111215 temp.vtt"
ffmpeg -i "Session - 111215 temp.mp4" -i "Session - 111215 temp.aac" -i "Session - 111215 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111215 - Meet UIKit for spatial computing (1440p).mp4"
rm "Session - 111215 temp.vtt"
rm "Session - 111215 temp.mp4"
rm "Session - 111215 temp.aac"

# 41
# Session 10026 - Meet watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10026 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10026 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/subtitles/eng/prog_index.m3u8 -c copy "Session - 10026 temp.vtt"
ffmpeg -i "Session - 10026 temp.mp4" -i "Session - 10026 temp.aac" -i "Session - 10026 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10026 - Meet watchOS 10 (1440p).mp4"
rm "Session - 10026 temp.vtt"
rm "Session - 10026 temp.mp4"
rm "Session - 10026 temp.aac"

# 42
# Session 10035 - Perform accessibility audits for your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10035 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10035 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10035 temp.vtt"
ffmpeg -i "Session - 10035 temp.mp4" -i "Session - 10035 temp.aac" -i "Session - 10035 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10035 - Perform accessibility audits for your app (1440p).mp4"
rm "Session - 10035 temp.vtt"
rm "Session - 10035 temp.mp4"
rm "Session - 10035 temp.aac"

# 43
# Session 10072 - Principles of spatial design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10072 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10072 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/subtitles/eng/prog_index.m3u8 -c copy "Session - 10072 temp.vtt"
ffmpeg -i "Session - 10072 temp.mp4" -i "Session - 10072 temp.aac" -i "Session - 10072 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10072 - Principles of spatial design (1440p).mp4"
rm "Session - 10072 temp.vtt"
rm "Session - 10072 temp.mp4"
rm "Session - 10072 temp.aac"

# 44
# Session 10002 - Ready, set, relay - Protect app traffic with network relays
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10002 temp.vtt"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -i "Session - 10002 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10002 - Ready, set, relay - Protect app traffic with network relays (1440p).mp4"
rm "Session - 10002 temp.vtt"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 45
# Session 10090 - Run your iPad and iPhone apps in the Shared Space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10090 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10090 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/subtitles/eng/prog_index.m3u8 -c copy "Session - 10090 temp.vtt"
ffmpeg -i "Session - 10090 temp.mp4" -i "Session - 10090 temp.aac" -i "Session - 10090 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10090 - Run your iPad and iPhone apps in the Shared Space (1440p).mp4"
rm "Session - 10090 temp.vtt"
rm "Session - 10090 temp.mp4"
rm "Session - 10090 temp.aac"

# 46
# Session 10102 - Spotlight your app with App Shortcuts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Spotlight your app with App Shortcuts (1440p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 47
# Session 10137 - Support Cinematic mode videos in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - Support Cinematic mode videos in your app (1440p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 48
# Session 10181 - Support HDR images in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10181/4/B669E5B5-B6C7-40D3-AF7D-801FBEE8FF55/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10181/4/B669E5B5-B6C7-40D3-AF7D-801FBEE8FF55/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10181/4/B669E5B5-B6C7-40D3-AF7D-801FBEE8FF55/subtitles/eng/prog_index.m3u8 -c copy "Session - 10181 temp.vtt"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -i "Session - 10181 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10181 - Support HDR images in your app (1440p).mp4"
rm "Session - 10181 temp.vtt"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"

# 49
# Session 10188 - Sync to iCloud with CKSyncEngine
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10188 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10188 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10188 temp.vtt"
ffmpeg -i "Session - 10188 temp.mp4" -i "Session - 10188 temp.aac" -i "Session - 10188 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10188 - Sync to iCloud with CKSyncEngine (1440p).mp4"
rm "Session - 10188 temp.vtt"
rm "Session - 10188 temp.mp4"
rm "Session - 10188 temp.aac"

# 50
# Session 10238 - Tune up your AirPlay audio experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10238 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10238 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/subtitles/eng/prog_index.m3u8 -c copy "Session - 10238 temp.vtt"
ffmpeg -i "Session - 10238 temp.mp4" -i "Session - 10238 temp.aac" -i "Session - 10238 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10238 - Tune up your AirPlay audio experience (1440p).mp4"
rm "Session - 10238 temp.vtt"
rm "Session - 10238 temp.mp4"
rm "Session - 10238 temp.aac"

# 51
# Session 10057 - Unleash the UIKit trait system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10057 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10057 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10057 temp.vtt"
ffmpeg -i "Session - 10057 temp.mp4" -i "Session - 10057 temp.aac" -i "Session - 10057 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10057 - Unleash the UIKit trait system (1440p).mp4"
rm "Session - 10057 temp.vtt"
rm "Session - 10057 temp.mp4"
rm "Session - 10057 temp.aac"

# 52
# Session 10153 - Unlock the power of grammatical agreement
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - Unlock the power of grammatical agreement (1440p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 53
# Session 111488 - What Apple developers need to know at WWDC23
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111488 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111488 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/subtitles/eng/prog_index.m3u8 -c copy "Session - 111488 temp.vtt"
ffmpeg -i "Session - 111488 temp.mp4" -i "Session - 111488 temp.aac" -i "Session - 111488 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111488 - What Apple developers need to know at WWDC23 (1440p).mp4"
rm "Session - 111488 temp.vtt"
rm "Session - 111488 temp.mp4"
rm "Session - 111488 temp.aac"

# 54
# Session 10140 - What's new in StoreKit 2 and StoreKit Testing in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - What's new in StoreKit 2 and StoreKit Testing in Xcode (1440p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 55
# Session 10148 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - What's new in SwiftUI (1440p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 56
# Session 10055 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10055 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10055 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/subtitles/eng/prog_index.m3u8 -c copy "Session - 10055 temp.vtt"
ffmpeg -i "Session - 10055 temp.mp4" -i "Session - 10055 temp.aac" -i "Session - 10055 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10055 - What's new in UIKit (1440p).mp4"
rm "Session - 10055 temp.vtt"
rm "Session - 10055 temp.mp4"
rm "Session - 10055 temp.aac"

# 57
# Session 10048 - What's new in VisionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/subtitles/eng/prog_index.m3u8 -c copy "Session - 10048 temp.vtt"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -i "Session - 10048 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10048 - What's new in VisionKit (1440p).mp4"
rm "Session - 10048 temp.vtt"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 58
# Session 10120 - What's new in web apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10120 temp.vtt"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -i "Session - 10120 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10120 - What's new in web apps (1440p).mp4"
rm "Session - 10120 temp.vtt"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 59
# Session 10165 - What's new in Xcode 15
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10165 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10165 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/subtitles/eng/prog_index.m3u8 -c copy "Session - 10165 temp.vtt"
ffmpeg -i "Session - 10165 temp.mp4" -i "Session - 10165 temp.aac" -i "Session - 10165 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10165 - What's new in Xcode 15 (1440p).mp4"
rm "Session - 10165 temp.vtt"
rm "Session - 10165 temp.mp4"
rm "Session - 10165 temp.aac"

# 60
# Session 10040 - What’s new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10040/4/9811F773-822B-4DEA-8F00-612829F3DC0E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10040/4/9811F773-822B-4DEA-8F00-612829F3DC0E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10040/4/9811F773-822B-4DEA-8F00-612829F3DC0E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10040 temp.vtt"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -i "Session - 10040 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10040 - What’s new in managing Apple devices (1440p).mp4"
rm "Session - 10040 temp.vtt"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 61
# Session 10197 - What’s new in SF Symbols 5
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10197 temp.vtt"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -i "Session - 10197 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10197 - What’s new in SF Symbols 5 (1440p).mp4"
rm "Session - 10197 temp.vtt"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 62
# Session 10164 - What’s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10164 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10164 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10164 temp.vtt"
ffmpeg -i "Session - 10164 temp.mp4" -i "Session - 10164 temp.aac" -i "Session - 10164 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10164 - What’s new in Swift (1440p).mp4"
rm "Session - 10164 temp.vtt"
rm "Session - 10164 temp.mp4"
rm "Session - 10164 temp.aac"

# 63
# Session 10157 - Wind your way through advanced animations in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - Wind your way through advanced animations in SwiftUI (1440p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 64
# Session 10166 - Write Swift macros
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Write Swift macros (1440p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"
