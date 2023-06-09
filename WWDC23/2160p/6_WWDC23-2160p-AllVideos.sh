# Script to download all the WWDC 23 session videos in the highest 4K video and audio
# You may have to update ffmpeg before using this script. I needed version 4.3 or higher to successfully download the videos.
#
# If you want the lower bitrate audio, do a find/replace of "audio_english_192" with "audio_english_64"
# If you want lower bitrate or lower resolution video, do a find/replace of "hvc_2160p_16800" with any of the following:
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

#1
# WWDC23 Keynote
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "WWDC 2023 Keynote temp.mp4"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2023 Keynote temp.aac"

ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/zh/zh.m3u8 -c copy "WWDC 2023 Keynote temp zh.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/de/de.m3u8 -c copy "WWDC 2023 Keynote temp de.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/en/en.m3u8 -c copy "WWDC 2023 Keynote temp en.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/fr/fr.m3u8 -c copy "WWDC 2023 Keynote temp fr.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/es/es.m3u8 -c copy "WWDC 2023 Keynote temp es.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/ja/ja.m3u8 -c copy "WWDC 2023 Keynote temp ja.vtt"
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/cc/ko/ko.m3u8 -c copy "WWDC 2023 Keynote temp ko.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "WWDC 2023 Keynote temp atmos.mp4"
ffmpeg -i "WWDC 2023 Keynote temp.mp4" -i "WWDC 2023 Keynote temp atmos.mp4" -i "WWDC 2023 Keynote temp.aac" -i "WWDC 2023 Keynote temp zh.vtt" -i "WWDC 2023 Keynote temp de.vtt" -i "WWDC 2023 Keynote temp en.vtt" -i "WWDC 2023 Keynote temp fr.vtt" -i "WWDC 2023 Keynote temp es.vtt" -i "WWDC 2023 Keynote temp ja.vtt" -i "WWDC 2023 Keynote temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple WWDC 2023 Keynote Address (2160p).mp4"
rm "WWDC 2023 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2023 Keynote temp.mp4" -i "WWDC 2023 Keynote temp.aac" -c copy "Apple WWDC 2023 Keynote Address (2160p).mp4"

rm "WWDC 2023 Keynote temp.mp4"
rm "WWDC 2023 Keynote temp.aac"
rm "WWDC 2023 Keynote temp zh.vtt"
rm "WWDC 2023 Keynote temp de.vtt"
rm "WWDC 2023 Keynote temp en.vtt"
rm "WWDC 2023 Keynote temp fr.vtt"
rm "WWDC 2023 Keynote temp es.vtt"
rm "WWDC 2023 Keynote temp ja.vtt"
rm "WWDC 2023 Keynote temp ko.vtt"

#2
# WWDC23 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp.aac"

ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/subtitles/eng/prog_index.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp en.vtt"

ffmpeg -i "WWDC 2023 Platforms State of the Union temp.mp4" -i "WWDC 2023 Platforms State of the Union temp.aac" -i "WWDC 2023 Platforms State of the Union temp en.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Apple WWDC 2023 Platforms State of the Union (2160p).mp4"

rm "WWDC 2023 Platforms State of the Union temp.mp4"
rm "WWDC 2023 Platforms State of the Union temp.aac"
rm "WWDC 2023 Platforms State of the Union temp en.vtt"

# 3
# Session 111486 - 17 big & little things at WWDC23
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 111486 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111486 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/subtitles/eng/prog_index.m3u8 -c copy "Session - 111486 temp.vtt"
ffmpeg -i "Session - 111486 temp.mp4" -i "Session - 111486 temp.aac" -i "Session - 111486 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111486 - 17 big & little things at WWDC23 (2160p).mp4"
rm "Session - 111486 temp.vtt"
rm "Session - 111486 temp.mp4"
rm "Session - 111486 temp.aac"

# 4
# Session 10239 - Add SharePlay to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10239 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10239 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10239/5/0F1CDDAF-2EAD-43A1-8B09-806ED4EE707A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10239 temp.vtt"
ffmpeg -i "Session - 10239 temp.mp4" -i "Session - 10239 temp.aac" -i "Session - 10239 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10239 - Add SharePlay to your app (2160p).mp4"
rm "Session - 10239 temp.vtt"
rm "Session - 10239 temp.mp4"
rm "Session - 10239 temp.aac"

# 5
# Session 10248 - Analyze hangs with Instruments
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10248/6/AB6FF62D-3A9D-4816-95E8-2E7B464CA1DF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10248 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10248/6/AB6FF62D-3A9D-4816-95E8-2E7B464CA1DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10248 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10248/6/AB6FF62D-3A9D-4816-95E8-2E7B464CA1DF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10248 temp.vtt"
ffmpeg -i "Session - 10248 temp.mp4" -i "Session - 10248 temp.aac" -i "Session - 10248 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10248 - Analyze hangs with Instruments (2160p).mp4"
rm "Session - 10248 temp.vtt"
rm "Session - 10248 temp.mp4"
rm "Session - 10248 temp.aac"

# 6
# Session 10258 - Animate symbols in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10258 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10258 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/subtitles/eng/prog_index.m3u8 -c copy "Session - 10258 temp.vtt"
ffmpeg -i "Session - 10258 temp.mp4" -i "Session - 10258 temp.aac" -i "Session - 10258 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10258 - Animate symbols in your app (2160p).mp4"
rm "Session - 10258 temp.vtt"
rm "Session - 10258 temp.mp4"
rm "Session - 10258 temp.aac"

# 7
# Session 10158 - Animate with springs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10158/4/0BAD22E7-61F5-4C4C-BA74-61BF66E8A9B1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10158 temp.vtt"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -i "Session - 10158 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10158 - Animate with springs (2160p).mp4"
rm "Session - 10158 temp.vtt"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 8
# Session 10159 - Beyond scroll views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Beyond scroll views (2160p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 9
# Session 10170 - Beyond the basics of structured concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Beyond the basics of structured concurrency (2160p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 10
# Session 10028 - Bring widgets to life
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10028 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10028 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10028 temp.vtt"
ffmpeg -i "Session - 10028 temp.mp4" -i "Session - 10028 temp.aac" -i "Session - 10028 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10028 - Bring widgets to life (2160p).mp4"
rm "Session - 10028 temp.vtt"
rm "Session - 10028 temp.mp4"
rm "Session - 10028 temp.aac"

# 11
# Session 10027 - Bring widgets to new places
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10027/4/7DEB1A11-79AB-4C43-B6F7-B7525FC746B6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10027 temp.vtt"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -i "Session - 10027 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10027 - Bring widgets to new places (2160p).mp4"
rm "Session - 10027 temp.vtt"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 12
# Session 10123 - Bring your game to Mac, Part 1 - Make a game plan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10123/4/204C6242-388E-4884-864A-CCCBF869D651/subtitles/eng/prog_index.m3u8 -c copy "Session - 10123 temp.vtt"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -i "Session - 10123 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10123 - Bring your game to Mac, Part 1 - Make a game plan (2160p).mp4"
rm "Session - 10123 temp.vtt"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 13
# Session 10124 - Bring your game to Mac, Part 2 - Compile your shaders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10124 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10124 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10124/4/8043B2FD-2363-4733-85E6-CCDF0BEE783F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10124 temp.vtt"
ffmpeg -i "Session - 10124 temp.mp4" -i "Session - 10124 temp.aac" -i "Session - 10124 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10124 - Bring your game to Mac, Part 2 - Compile your shaders (2160p).mp4"
rm "Session - 10124 temp.vtt"
rm "Session - 10124 temp.mp4"
rm "Session - 10124 temp.aac"

# 14
# Session 10125 - Bring your game to Mac, Part 3 - Render with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10125 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10125 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10125/4/1283FC25-C4D6-40B5-AAEC-221E3E4C6D16/subtitles/eng/prog_index.m3u8 -c copy "Session - 10125 temp.vtt"
ffmpeg -i "Session - 10125 temp.mp4" -i "Session - 10125 temp.aac" -i "Session - 10125 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10125 - Bring your game to Mac, Part 3 - Render with Metal (2160p).mp4"
rm "Session - 10125 temp.vtt"
rm "Session - 10125 temp.mp4"
rm "Session - 10125 temp.aac"

# 15
# Session 10093 - Bring your Unity VR app to a fully immersive space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Bring your Unity VR app to a fully immersive space (2160p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 16
# Session 10023 - Build a multi-device workout app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10023 temp.vtt"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -i "Session - 10023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10023 - Build a multi-device workout app (2160p).mp4"
rm "Session - 10023 temp.vtt"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 17
# Session 10036 - Build accessible apps with SwiftUI and UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10036 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10036 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10036 temp.vtt"
ffmpeg -i "Session - 10036 temp.mp4" -i "Session - 10036 temp.aac" -i "Session - 10036 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10036 - Build accessible apps with SwiftUI and UIKit (2160p).mp4"
rm "Session - 10036 temp.vtt"
rm "Session - 10036 temp.mp4"
rm "Session - 10036 temp.aac"

# 18
# Session 10154 - Build an app with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10154 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10154 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10154 temp.vtt"
ffmpeg -i "Session - 10154 temp.mp4" -i "Session - 10154 temp.aac" -i "Session - 10154 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10154 - Build an app with SwiftData (2160p).mp4"
rm "Session - 10154 temp.vtt"
rm "Session - 10154 temp.mp4"
rm "Session - 10154 temp.aac"

# 19
# Session 10056 - Build better document-based apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10056 temp.vtt"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -i "Session - 10056 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10056 - Build better document-based apps (2160p).mp4"
rm "Session - 10056 temp.vtt"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 20
# Session 10016 - Build custom workouts with WorkoutKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10016 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10016 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10016/5/CD68A862-7DFB-45FF-B1A6-B18140FDED96/subtitles/eng/prog_index.m3u8 -c copy "Session - 10016 temp.vtt"
ffmpeg -i "Session - 10016 temp.mp4" -i "Session - 10016 temp.aac" -i "Session - 10016 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10016 - Build custom workouts with WorkoutKit (2160p).mp4"
rm "Session - 10016 temp.vtt"
rm "Session - 10016 temp.mp4"
rm "Session - 10016 temp.aac"

# 21
# Session 10096 - Build great games for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10096/6/F177C6E8-2AAC-400D-B584-FC7D76E4516F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - Build great games for spatial computing (2160p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 22
# Session 10252 - Build programmatic UI with Xcode Previews
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10252 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10252 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/subtitles/eng/prog_index.m3u8 -c copy "Session - 10252 temp.vtt"
ffmpeg -i "Session - 10252 temp.mp4" -i "Session - 10252 temp.aac" -i "Session - 10252 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10252 - Build programmatic UI with Xcode Previews (2160p).mp4"
rm "Session - 10252 temp.vtt"
rm "Session - 10252 temp.mp4"
rm "Session - 10252 temp.aac"

# 23
# Session 10006 - Build robust and resumable file transfers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10006 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10006 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10006 temp.vtt"
ffmpeg -i "Session - 10006 temp.mp4" -i "Session - 10006 temp.aac" -i "Session - 10006 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10006 - Build robust and resumable file transfers (2160p).mp4"
rm "Session - 10006 temp.vtt"
rm "Session - 10006 temp.mp4"
rm "Session - 10006 temp.aac"

# 24
# Session 10080 - Build spatial experiences with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10080 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10080 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10080/4/285DEB34-9EE6-466F-8F33-BF04E334E215/subtitles/eng/prog_index.m3u8 -c copy "Session - 10080 temp.vtt"
ffmpeg -i "Session - 10080 temp.mp4" -i "Session - 10080 temp.aac" -i "Session - 10080 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10080 - Build spatial experiences with RealityKit (2160p).mp4"
rm "Session - 10080 temp.vtt"
rm "Session - 10080 temp.mp4"
rm "Session - 10080 temp.aac"

# 25
# Session 10087 - Build spatial SharePlay experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10087 temp.vtt"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -i "Session - 10087 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10087 - Build spatial SharePlay experiences (2160p).mp4"
rm "Session - 10087 temp.vtt"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 26
# Session 10029 - Build widgets for the Smart Stack on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10029 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10029 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10029 temp.vtt"
ffmpeg -i "Session - 10029 temp.mp4" -i "Session - 10029 temp.aac" -i "Session - 10029 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10029 - Build widgets for the Smart Stack on Apple Watch (2160p).mp4"
rm "Session - 10029 temp.vtt"
rm "Session - 10029 temp.mp4"
rm "Session - 10029 temp.aac"

# 27
# Session 10274 - Create 3D models for Quick Look spatial experiences 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10274 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10274 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10274 temp.vtt"
ffmpeg -i "Session - 10274 temp.mp4" -i "Session - 10274 temp.aac" -i "Session - 10274 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10274 - Create 3D models for Quick Look spatial experiences  (2160p).mp4"
rm "Session - 10274 temp.vtt"
rm "Session - 10274 temp.mp4"
rm "Session - 10274 temp.aac"

# 28
# Session 10051 - Create a great ShazamKit experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10051 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10051 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10051/4/609FFA81-2E88-4DC5-ACDB-5C4A0C42875D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10051 temp.vtt"
ffmpeg -i "Session - 10051 temp.mp4" -i "Session - 10051 temp.aac" -i "Session - 10051 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10051 - Create a great ShazamKit experience (2160p).mp4"
rm "Session - 10051 temp.vtt"
rm "Session - 10051 temp.mp4"
rm "Session - 10051 temp.aac"

# 29
# Session 10070 - Create a great spatial playback experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Create a great spatial playback experience (2160p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 30
# Session 10105 - Create a more responsive camera experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - Create a more responsive camera experience (2160p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 31
# Session 10034 - Create accessible spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10034 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10034 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10034/5/DF004F28-FE27-41BB-B1BB-4CF81F3F2695/subtitles/eng/prog_index.m3u8 -c copy "Session - 10034 temp.vtt"
ffmpeg -i "Session - 10034 temp.mp4" -i "Session - 10034 temp.aac" -i "Session - 10034 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10034 - Create accessible spatial experiences (2160p).mp4"
rm "Session - 10034 temp.vtt"
rm "Session - 10034 temp.mp4"
rm "Session - 10034 temp.aac"

# 32
# Session 10257 - Create animated symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10257 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10257 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/subtitles/eng/prog_index.m3u8 -c copy "Session - 10257 temp.vtt"
ffmpeg -i "Session - 10257 temp.mp4" -i "Session - 10257 temp.aac" -i "Session - 10257 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10257 - Create animated symbols (2160p).mp4"
rm "Session - 10257 temp.vtt"
rm "Session - 10257 temp.mp4"
rm "Session - 10257 temp.aac"

# 33
# Session 10088 - Create immersive Unity apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10088 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10088 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/subtitles/eng/prog_index.m3u8 -c copy "Session - 10088 temp.vtt"
ffmpeg -i "Session - 10088 temp.mp4" -i "Session - 10088 temp.aac" -i "Session - 10088 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10088 - Create immersive Unity apps (2160p).mp4"
rm "Session - 10088 temp.vtt"
rm "Session - 10088 temp.mp4"
rm "Session - 10088 temp.aac"

# 34
# Session 10278 - Create practical workflows in Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10278 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10278 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10278 temp.vtt"
ffmpeg -i "Session - 10278 temp.mp4" -i "Session - 10278 temp.aac" -i "Session - 10278 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10278 - Create practical workflows in Xcode Cloud (2160p).mp4"
rm "Session - 10278 temp.vtt"
rm "Session - 10278 temp.mp4"
rm "Session - 10278 temp.aac"

# 35
# Session 10244 - Create rich documentation with Swift-DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10244 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10244 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10244/4/6BE389F4-2F7E-4D0C-A6B6-25C8306D816E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10244 temp.vtt"
ffmpeg -i "Session - 10244 temp.mp4" -i "Session - 10244 temp.aac" -i "Session - 10244 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10244 - Create rich documentation with Swift-DocC (2160p).mp4"
rm "Session - 10244 temp.vtt"
rm "Session - 10244 temp.mp4"
rm "Session - 10244 temp.aac"

# 36
# Session 10007 - Create seamless experiences with Virtualization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10007 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10007 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/subtitles/eng/prog_index.m3u8 -c copy "Session - 10007 temp.vtt"
ffmpeg -i "Session - 10007 temp.mp4" -i "Session - 10007 temp.aac" -i "Session - 10007 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10007 - Create seamless experiences with Virtualization (2160p).mp4"
rm "Session - 10007 temp.vtt"
rm "Session - 10007 temp.mp4"
rm "Session - 10007 temp.aac"

# 37
# Session 10101 - Customize on-device speech recognition
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10101/4/4BB06F60-9134-4AB0-9A85-B5A9B9564C71/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Customize on-device speech recognition (2160p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 38
# Session 10226 - Debug with structured logging
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10226 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10226 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10226/5/FFFDC5A2-A309-4C9B-B908-B19B51F18FB0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10226 temp.vtt"
ffmpeg -i "Session - 10226 temp.mp4" -i "Session - 10226 temp.aac" -i "Session - 10226 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10226 - Debug with structured logging (2160p).mp4"
rm "Session - 10226 temp.vtt"
rm "Session - 10226 temp.mp4"
rm "Session - 10226 temp.aac"

# 39
# Session 10071 - Deliver video content for spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10071 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10071 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10071 temp.vtt"
ffmpeg -i "Session - 10071 temp.mp4" -i "Session - 10071 temp.aac" -i "Session - 10071 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10071 - Deliver video content for spatial experiences (2160p).mp4"
rm "Session - 10071 temp.vtt"
rm "Session - 10071 temp.mp4"
rm "Session - 10071 temp.aac"

# 40
# Session 10160 - Demystify SwiftUI performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Demystify SwiftUI performance (2160p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 41
# Session 10263 - Deploy passkeys at work
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10263 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10263 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/subtitles/eng/prog_index.m3u8 -c copy "Session - 10263 temp.vtt"
ffmpeg -i "Session - 10263 temp.mp4" -i "Session - 10263 temp.aac" -i "Session - 10263 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10263 - Deploy passkeys at work (2160p).mp4"
rm "Session - 10263 temp.vtt"
rm "Session - 10263 temp.mp4"
rm "Session - 10263 temp.aac"

# 42
# Session 10138 - Design and build apps for watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10138 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10138 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10138/4/AFF87063-B0C4-49E6-A866-D89017622393/subtitles/eng/prog_index.m3u8 -c copy "Session - 10138 temp.vtt"
ffmpeg -i "Session - 10138 temp.mp4" -i "Session - 10138 temp.aac" -i "Session - 10138 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10138 - Design and build apps for watchOS 10 (2160p).mp4"
rm "Session - 10138 temp.vtt"
rm "Session - 10138 temp.mp4"
rm "Session - 10138 temp.aac"

# 43
# Session 10078 - Design considerations for vision and motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10078/5/A2493B0B-6540-4634-B38C-E2FEFC0F8DAC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10078 temp.vtt"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -i "Session - 10078 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10078 - Design considerations for vision and motion (2160p).mp4"
rm "Session - 10078 temp.vtt"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 44
# Session 10194 - Design dynamic Live Activities 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10194 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10194 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/subtitles/eng/prog_index.m3u8 -c copy "Session - 10194 temp.vtt"
ffmpeg -i "Session - 10194 temp.mp4" -i "Session - 10194 temp.aac" -i "Session - 10194 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10194 - Design dynamic Live Activities  (2160p).mp4"
rm "Session - 10194 temp.vtt"
rm "Session - 10194 temp.mp4"
rm "Session - 10194 temp.aac"

# 45
# Session 10073 - Design for spatial input
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10073/4/0B0E3324-4B02-4EF4-8413-13A63715B2C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10073 temp.vtt"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -i "Session - 10073 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10073 - Design for spatial input (2160p).mp4"
rm "Session - 10073 temp.vtt"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 46
# Session 10076 - Design for spatial user interfaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10076/4/1C3E0256-50B2-4992-AAE6-CF8A3479272E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10076 temp.vtt"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -i "Session - 10076 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10076 - Design for spatial user interfaces (2160p).mp4"
rm "Session - 10076 temp.vtt"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 47
# Session 10193 - Design Shortcuts for Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10193 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10193 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10193 temp.vtt"
ffmpeg -i "Session - 10193 temp.mp4" -i "Session - 10193 temp.aac" -i "Session - 10193 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10193 - Design Shortcuts for Spotlight (2160p).mp4"
rm "Session - 10193 temp.vtt"
rm "Session - 10193 temp.mp4"
rm "Session - 10193 temp.aac"

# 48
# Session 10075 - Design spatial SharePlay experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10075/4/9C508675-D44A-4BF5-80F3-5B49CF10C722/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Design spatial SharePlay experiences (2160p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 49
# Session 10309 - Design widgets for the Smart Stack on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10309 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10309 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10309 temp.vtt"
ffmpeg -i "Session - 10309 temp.mp4" -i "Session - 10309 temp.aac" -i "Session - 10309 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10309 - Design widgets for the Smart Stack on Apple Watch (2160p).mp4"
rm "Session - 10309 temp.vtt"
rm "Session - 10309 temp.mp4"
rm "Session - 10309 temp.aac"

# 50
# Session 10115 - Design with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - Design with SwiftUI (2160p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 51
# Session 10045 - Detect animal poses in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10045/4/CD4F90B5-A291-452A-93CC-2694D9A8FB9E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10045 temp.vtt"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -i "Session - 10045 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10045 - Detect animal poses in Vision (2160p).mp4"
rm "Session - 10045 temp.vtt"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 52
# Session 10203 - Develop your first immersive app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10203/6/469019B0-281D-4B3E-BAE3-B9302B204739/subtitles/eng/prog_index.m3u8 -c copy "Session - 10203 temp.vtt"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -i "Session - 10203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10203 - Develop your first immersive app (2160p).mp4"
rm "Session - 10203 temp.vtt"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 53
# Session 10052 - Discover Calendar and EventKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/subtitles/eng/prog_index.m3u8 -c copy "Session - 10052 temp.vtt"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -i "Session - 10052 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10052 - Discover Calendar and EventKit (2160p).mp4"
rm "Session - 10052 temp.vtt"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 54
# Session 10256 - Discover Continuity Camera for tvOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10256 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10256 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10256 temp.vtt"
ffmpeg -i "Session - 10256 temp.mp4" -i "Session - 10256 temp.aac" -i "Session - 10256 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10256 - Discover Continuity Camera for tvOS (2160p).mp4"
rm "Session - 10256 temp.vtt"
rm "Session - 10256 temp.mp4"
rm "Session - 10256 temp.aac"

# 55
# Session 10044 - Discover machine learning enhancements in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10044/4/A21FDEB3-C1AF-472E-827F-1E7D7499033E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10044 temp.vtt"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -i "Session - 10044 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10044 - Discover machine learning enhancements in Create ML (2160p).mp4"
rm "Session - 10044 temp.vtt"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 56
# Session 10089 - Discover Metal for immersive apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10089/5/49D0E645-DBE8-4D7A-9637-C4D744C86894/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - Discover Metal for immersive apps (2160p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 57
# Session 10149 - Discover Observation in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10149/4/F4769BC3-3B47-49AF-B11B-6957B0A25574/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - Discover Observation in SwiftUI (2160p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 58
# Session 10085 - Discover Quick Look for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10085 temp.vtt"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -i "Session - 10085 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10085 - Discover Quick Look for spatial computing (2160p).mp4"
rm "Session - 10085 temp.vtt"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 59
# Session 10180 - Discover streamlined location updates
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10180 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10180 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10180/3/BF2CDA20-2D8F-46B8-B850-E1799030451B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10180 temp.vtt"
ffmpeg -i "Session - 10180 temp.mp4" -i "Session - 10180 temp.aac" -i "Session - 10180 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10180 - Discover streamlined location updates (2160p).mp4"
rm "Session - 10180 temp.vtt"
rm "Session - 10180 temp.mp4"
rm "Session - 10180 temp.aac"

# 60
# Session 10155 - Discover String Catalogs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10155/4/0A18D858-81AA-4A3C-B77E-EF67C956908B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Discover String Catalogs (2160p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 61
# Session 10196 - Dive deeper into SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10196 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10196 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10196/5/44001952-2ED6-45B5-9BF4-CFCE817D1CA7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10196 temp.vtt"
ffmpeg -i "Session - 10196 temp.mp4" -i "Session - 10196 temp.aac" -i "Session - 10196 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10196 - Dive deeper into SwiftData (2160p).mp4"
rm "Session - 10196 temp.vtt"
rm "Session - 10196 temp.mp4"
rm "Session - 10196 temp.aac"

# 62
# Session 10254 - Do more with Managed Apple IDs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10254 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10254 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10254 temp.vtt"
ffmpeg -i "Session - 10254 temp.mp4" -i "Session - 10254 temp.aac" -i "Session - 10254 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10254 - Do more with Managed Apple IDs (2160p).mp4"
rm "Session - 10254 temp.vtt"
rm "Session - 10254 temp.mp4"
rm "Session - 10254 temp.aac"

# 63
# Session 10110 - Elevate your windowed app for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10110/5/7FE373BF-8322-4D59-A758-7540978E58C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Elevate your windowed app for spatial computing (2160p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 64
# Session 10107 - Embed the Photos Picker in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10107/5/62F52A2D-1C9A-4349-8D1F-03308947930A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Embed the Photos Picker in your app (2160p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 65
# Session 10233 - Enhance your app’s audio experience with AirPods
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10233 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10233 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10233/4/67656F5A-221D-451B-9BD0-45BCA4922204/subtitles/eng/prog_index.m3u8 -c copy "Session - 10233 temp.vtt"
ffmpeg -i "Session - 10233 temp.mp4" -i "Session - 10233 temp.aac" -i "Session - 10233 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10233 - Enhance your app’s audio experience with AirPods (2160p).mp4"
rm "Session - 10233 temp.vtt"
rm "Session - 10233 temp.mp4"
rm "Session - 10233 temp.aac"

# 66
# Session 10094 - Enhance your iPad and iPhone apps for the Shared Space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10094/4/701039CD-C751-471F-A029-A2407B622C61/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Enhance your iPad and iPhone apps for the Shared Space (2160p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 67
# Session 10081 - Enhance your spatial computing app with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10081 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10081 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10081 temp.vtt"
ffmpeg -i "Session - 10081 temp.mp4" -i "Session - 10081 temp.aac" -i "Session - 10081 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10081 - Enhance your spatial computing app with RealityKit (2160p).mp4"
rm "Session - 10081 temp.vtt"
rm "Session - 10081 temp.mp4"
rm "Session - 10081 temp.aac"

# 68
# Session 10091 - Evolve your ARKit app for spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10091 temp.vtt"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -i "Session - 10091 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10091 - Evolve your ARKit app for spatial experiences (2160p).mp4"
rm "Session - 10091 temp.vtt"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 69
# Session 10167 - Expand on Swift macros
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10167/4/EAAEDDF4-5E7C-4AE9-A20C-CCD2E061E331/subtitles/eng/prog_index.m3u8 -c copy "Session - 10167 temp.vtt"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -i "Session - 10167 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10167 - Expand on Swift macros (2160p).mp4"
rm "Session - 10167 temp.vtt"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 70
# Session 111241 - Explore 3D body pose and person segmentation in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 111241 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111241 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/subtitles/eng/prog_index.m3u8 -c copy "Session - 111241 temp.vtt"
ffmpeg -i "Session - 111241 temp.mp4" -i "Session - 111241 temp.aac" -i "Session - 111241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111241 - Explore 3D body pose and person segmentation in Vision (2160p).mp4"
rm "Session - 111241 temp.vtt"
rm "Session - 111241 temp.mp4"
rm "Session - 111241 temp.aac"

# 71
# Session 10041 - Explore advances in declarative device management 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10041 temp.vtt"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -i "Session - 10041 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10041 - Explore advances in declarative device management  (2160p).mp4"
rm "Session - 10041 temp.vtt"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"

# 72
# Session 10275 - Explore AirPlay with interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10275 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10275 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10275/5/9AAAFD03-718B-497E-8A61-C0B00CC14513/subtitles/eng/prog_index.m3u8 -c copy "Session - 10275 temp.vtt"
ffmpeg -i "Session - 10275 temp.mp4" -i "Session - 10275 temp.aac" -i "Session - 10275 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10275 - Explore AirPlay with interstitials (2160p).mp4"
rm "Session - 10275 temp.vtt"
rm "Session - 10275 temp.mp4"
rm "Session - 10275 temp.aac"

# 73
# Session 10012 - Explore App Store Connect for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10012 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10012 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10012/4/0E0416F8-A360-4F27-8CBA-B49CA1AEB96B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10012 temp.vtt"
ffmpeg -i "Session - 10012 temp.mp4" -i "Session - 10012 temp.aac" -i "Session - 10012 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10012 - Explore App Store Connect for spatial computing (2160p).mp4"
rm "Session - 10012 temp.vtt"
rm "Session - 10012 temp.mp4"
rm "Session - 10012 temp.aac"

# 74
# Session 10103 - Explore enhancements to App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10103 temp.vtt"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -i "Session - 10103 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10103 - Explore enhancements to App Intents (2160p).mp4"
rm "Session - 10103 temp.vtt"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 75
# Session 10192 - Explore enhancements to RoomPlan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10192 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10192 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10192/4/0D847FCD-B40B-4324-A284-F22B79E78F4D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10192 temp.vtt"
ffmpeg -i "Session - 10192 temp.mp4" -i "Session - 10192 temp.aac" -i "Session - 10192 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10192 - Explore enhancements to RoomPlan (2160p).mp4"
rm "Session - 10192 temp.vtt"
rm "Session - 10192 temp.mp4"
rm "Session - 10192 temp.aac"

# 76
# Session 10271 - Explore immersive sound design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10271 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10271 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10271 temp.vtt"
ffmpeg -i "Session - 10271 temp.mp4" -i "Session - 10271 temp.aac" -i "Session - 10271 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10271 - Explore immersive sound design (2160p).mp4"
rm "Session - 10271 temp.vtt"
rm "Session - 10271 temp.mp4"
rm "Session - 10271 temp.aac"

# 77
# Session 10202 - Explore materials in Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10202 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10202 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10202 temp.vtt"
ffmpeg -i "Session - 10202 temp.mp4" -i "Session - 10202 temp.aac" -i "Session - 10202 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10202 - Explore materials in Reality Composer Pro (2160p).mp4"
rm "Session - 10202 temp.vtt"
rm "Session - 10202 temp.mp4"
rm "Session - 10202 temp.aac"

# 78
# Session 10122 - Explore media formats for the web
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Explore media formats for the web (2160p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 79
# Session 10042 - Explore Natural Language multilingual models
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10042 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10042 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10042 temp.vtt"
ffmpeg -i "Session - 10042 temp.mp4" -i "Session - 10042 temp.aac" -i "Session - 10042 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10042 - Explore Natural Language multilingual models (2160p).mp4"
rm "Session - 10042 temp.vtt"
rm "Session - 10042 temp.mp4"
rm "Session - 10042 temp.aac"

# 80
# Session 10037 - Explore pie charts and interactivity in Swift Charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/subtitles/eng/prog_index.m3u8 -c copy "Session - 10037 temp.vtt"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -i "Session - 10037 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10037 - Explore pie charts and interactivity in Swift Charts (2160p).mp4"
rm "Session - 10037 temp.vtt"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"

# 81
# Session 10095 - Explore rendering for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10095 temp.vtt"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -i "Session - 10095 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10095 - Explore rendering for spatial computing (2160p).mp4"
rm "Session - 10095 temp.vtt"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 82
# Session 10156 - Explore SwiftUI animation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10156 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10156 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10156 temp.vtt"
ffmpeg -i "Session - 10156 temp.mp4" -i "Session - 10156 temp.aac" -i "Session - 10156 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10156 - Explore SwiftUI animation (2160p).mp4"
rm "Session - 10156 temp.vtt"
rm "Session - 10156 temp.mp4"
rm "Session - 10156 temp.aac"

# 83
# Session 10142 - Explore testing in-app purchases
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10142/4/D77D9908-4DAF-4E7C-92F7-0FC31264D914/subtitles/eng/prog_index.m3u8 -c copy "Session - 10142 temp.vtt"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -i "Session - 10142 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10142 - Explore testing in-app purchases (2160p).mp4"
rm "Session - 10142 temp.vtt"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 84
# Session 10086 - Explore the USD ecosystem
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10086/5/5ABD74BE-D973-47C9-9A9F-1F5AABE02C1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10086 temp.vtt"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -i "Session - 10086 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10086 - Explore the USD ecosystem (2160p).mp4"
rm "Session - 10086 temp.vtt"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 85
# Session 10033 - Extend Speech Synthesis with personal and custom voices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10033 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10033 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/subtitles/eng/prog_index.m3u8 -c copy "Session - 10033 temp.vtt"
ffmpeg -i "Session - 10033 temp.mp4" -i "Session - 10033 temp.aac" -i "Session - 10033 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10033 - Extend Speech Synthesis with personal and custom voices (2160p).mp4"
rm "Session - 10033 temp.vtt"
rm "Session - 10033 temp.mp4"
rm "Session - 10033 temp.aac"

# 86
# Session 10175 - Fix failures faster with Xcode test reports
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10175 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10175 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/subtitles/eng/prog_index.m3u8 -c copy "Session - 10175 temp.vtt"
ffmpeg -i "Session - 10175 temp.mp4" -i "Session - 10175 temp.aac" -i "Session - 10175 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10175 - Fix failures faster with Xcode test reports (2160p).mp4"
rm "Session - 10175 temp.vtt"
rm "Session - 10175 temp.mp4"
rm "Session - 10175 temp.aac"

# 87
# Session 10168 - Generalize APIs with parameter packs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10168/4/C4DB8728-EFE7-49D9-B61E-3061B8F31EF5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10168 temp.vtt"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -i "Session - 10168 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10168 - Generalize APIs with parameter packs (2160p).mp4"
rm "Session - 10168 temp.vtt"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 88
# Session 10260 - Get started with building apps for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10260 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10260 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10260/4/B4DC13C8-DE9B-4FD2-B413-018357E5E5F7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10260 temp.vtt"
ffmpeg -i "Session - 10260 temp.mp4" -i "Session - 10260 temp.aac" -i "Session - 10260 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10260 - Get started with building apps for spatial computing (2160p).mp4"
rm "Session - 10260 temp.vtt"
rm "Session - 10260 temp.mp4"
rm "Session - 10260 temp.aac"

# 89
# Session 10060 - Get started with privacy manifests
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10060 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10060 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/subtitles/eng/prog_index.m3u8 -c copy "Session - 10060 temp.vtt"
ffmpeg -i "Session - 10060 temp.mp4" -i "Session - 10060 temp.aac" -i "Session - 10060 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10060 - Get started with privacy manifests (2160p).mp4"
rm "Session - 10060 temp.vtt"
rm "Session - 10060 temp.mp4"
rm "Session - 10060 temp.aac"

# 90
# Session 10111 - Go beyond the window with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10111 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10111 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10111 temp.vtt"
ffmpeg -i "Session - 10111 temp.mp4" -i "Session - 10111 temp.aac" -i "Session - 10111 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10111 - Go beyond the window with SwiftUI (2160p).mp4"
rm "Session - 10111 temp.vtt"
rm "Session - 10111 temp.mp4"
rm "Session - 10111 temp.aac"

# 91
# Session 10049 - Improve Core ML integration with async prediction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10049 temp.vtt"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -i "Session - 10049 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10049 - Improve Core ML integration with async prediction (2160p).mp4"
rm "Session - 10049 temp.vtt"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"

# 92
# Session 10161 - Inspectors in SwiftUI - Discover the details
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/subtitles/eng/prog_index.m3u8 -c copy "Session - 10161 temp.vtt"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -i "Session - 10161 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10161 - Inspectors in SwiftUI - Discover the details (2160p).mp4"
rm "Session - 10161 temp.vtt"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 93
# Session 10304 - Integrate with motorized iPhone stands using DockKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10304 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10304 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/subtitles/eng/prog_index.m3u8 -c copy "Session - 10304 temp.vtt"
ffmpeg -i "Session - 10304 temp.mp4" -i "Session - 10304 temp.aac" -i "Session - 10304 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10304 - Integrate with motorized iPhone stands using DockKit (2160p).mp4"
rm "Session - 10304 temp.vtt"
rm "Session - 10304 temp.mp4"
rm "Session - 10304 temp.aac"

# 94
# Session 10104 - Integrate your media app with HomePod
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10104/4/5F52855D-81B2-4790-8627-C68333D4A099/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Integrate your media app with HomePod (2160p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 95
# Session 10281 - Keep up with the keyboard
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10281 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10281 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10281/5/28D03695-D3A4-41FB-9F95-B97A11BF249B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10281 temp.vtt"
ffmpeg -i "Session - 10281 temp.mp4" -i "Session - 10281 temp.aac" -i "Session - 10281 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10281 - Keep up with the keyboard (2160p).mp4"
rm "Session - 10281 temp.vtt"
rm "Session - 10281 temp.mp4"
rm "Session - 10281 temp.aac"

# 96
# Session 10176 - Lift subjects from images in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10176/4/85EF7B31-0252-4567-AEBB-723298444C56/subtitles/eng/prog_index.m3u8 -c copy "Session - 10176 temp.vtt"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -i "Session - 10176 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10176 - Lift subjects from images in your app (2160p).mp4"
rm "Session - 10176 temp.vtt"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 97
# Session 10229 - Make features discoverable with TipKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10229 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10229 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10229/4/07E6CA29-01CD-4E03-A3FF-D7D8A3FB4CEF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10229 temp.vtt"
ffmpeg -i "Session - 10229 temp.mp4" -i "Session - 10229 temp.aac" -i "Session - 10229 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10229 - Make features discoverable with TipKit (2160p).mp4"
rm "Session - 10229 temp.vtt"
rm "Session - 10229 temp.mp4"
rm "Session - 10229 temp.aac"

# 98
# Session 10184 - Meet ActivityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10184/4/A7390924-2731-4B9B-925E-1CBDFB186C3E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10184 temp.vtt"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -i "Session - 10184 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10184 - Meet ActivityKit (2160p).mp4"
rm "Session - 10184 temp.vtt"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 99
# Session 10082 - Meet ARKit for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10082 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10082 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10082/4/C3D5172D-3BAF-4656-B6F7-2C8CE38F8749/subtitles/eng/prog_index.m3u8 -c copy "Session - 10082 temp.vtt"
ffmpeg -i "Session - 10082 temp.mp4" -i "Session - 10082 temp.aac" -i "Session - 10082 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10082 - Meet ARKit for spatial computing (2160p).mp4"
rm "Session - 10082 temp.vtt"
rm "Session - 10082 temp.mp4"
rm "Session - 10082 temp.aac"

# 100
# Session 10032 - Meet Assistive Access
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10032/3/A9BDC1BB-32F3-4A51-9207-FFB4C4B235A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10032 temp.vtt"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -i "Session - 10032 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10032 - Meet Assistive Access (2160p).mp4"
rm "Session - 10032 temp.vtt"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 101
# Session 10146 - Meet Core Location for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10146 temp.vtt"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -i "Session - 10146 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10146 - Meet Core Location for spatial computing (2160p).mp4"
rm "Session - 10146 temp.vtt"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 102
# Session 10147 - Meet Core Location Monitor
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Meet Core Location Monitor (2160p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 103
# Session 10039 - Meet device management for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10039/4/5852C97C-D712-4FA9-BDB2-2FC9C69289EB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10039 temp.vtt"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -i "Session - 10039 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10039 - Meet device management for Apple Watch (2160p).mp4"
rm "Session - 10039 temp.vtt"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 104
# Session 10043 - Meet MapKit for SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10043 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10043 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10043/5/700E3600-5A61-4BE8-9A61-441B11B13E8C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10043 temp.vtt"
ffmpeg -i "Session - 10043 temp.mp4" -i "Session - 10043 temp.aac" -i "Session - 10043 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10043 - Meet MapKit for SwiftUI (2160p).mp4"
rm "Session - 10043 temp.vtt"
rm "Session - 10043 temp.mp4"
rm "Session - 10043 temp.aac"

# 105
# Session 10268 - Meet mergeable libraries
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10268 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10268 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10268 temp.vtt"
ffmpeg -i "Session - 10268 temp.mp4" -i "Session - 10268 temp.aac" -i "Session - 10268 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10268 - Meet mergeable libraries (2160p).mp4"
rm "Session - 10268 temp.vtt"
rm "Session - 10268 temp.mp4"
rm "Session - 10268 temp.aac"

# 106
# Session 10191 - Meet Object Capture for iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10191 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10191 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10191 temp.vtt"
ffmpeg -i "Session - 10191 temp.mp4" -i "Session - 10191 temp.aac" -i "Session - 10191 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10191 - Meet Object Capture for iOS (2160p).mp4"
rm "Session - 10191 temp.vtt"
rm "Session - 10191 temp.mp4"
rm "Session - 10191 temp.aac"

# 107
# Session 10025 - Meet Push Notifications Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10025 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10025 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10025 temp.vtt"
ffmpeg -i "Session - 10025 temp.mp4" -i "Session - 10025 temp.aac" -i "Session - 10025 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10025 - Meet Push Notifications Console (2160p).mp4"
rm "Session - 10025 temp.vtt"
rm "Session - 10025 temp.mp4"
rm "Session - 10025 temp.aac"

# 108
# Session 10083 - Meet Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10083/4/B3A4D3EA-0CF5-4ECB-9874-28313698D3EE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Meet Reality Composer Pro (2160p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 109
# Session 10099 - Meet RealityKit Trace
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10099 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10099 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10099 temp.vtt"
ffmpeg -i "Session - 10099 temp.mp4" -i "Session - 10099 temp.aac" -i "Session - 10099 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10099 - Meet RealityKit Trace (2160p).mp4"
rm "Session - 10099 temp.vtt"
rm "Session - 10099 temp.mp4"
rm "Session - 10099 temp.aac"

# 110
# Session 10279 - Meet Safari for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10279 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10279 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10279/4/6F2DFF92-4E92-4C6C-BDAA-80C7646871D6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10279 temp.vtt"
ffmpeg -i "Session - 10279 temp.mp4" -i "Session - 10279 temp.aac" -i "Session - 10279 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10279 - Meet Safari for spatial computing (2160p).mp4"
rm "Session - 10279 temp.vtt"
rm "Session - 10279 temp.mp4"
rm "Session - 10279 temp.aac"

# 111
# Session 10013 - Meet StoreKit for SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10013 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10013 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10013/4/451654C1-7E00-42AE-A765-A2ECE947464C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10013 temp.vtt"
ffmpeg -i "Session - 10013 temp.mp4" -i "Session - 10013 temp.aac" -i "Session - 10013 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10013 - Meet StoreKit for SwiftUI (2160p).mp4"
rm "Session - 10013 temp.vtt"
rm "Session - 10013 temp.mp4"
rm "Session - 10013 temp.aac"

# 112
# Session 10171 - Meet Swift OpenAPI Generator
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10171/6/B3B8830B-E039-4E13-B13E-989D45016244/subtitles/eng/prog_index.m3u8 -c copy "Session - 10171 temp.vtt"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -i "Session - 10171 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10171 - Meet Swift OpenAPI Generator (2160p).mp4"
rm "Session - 10171 temp.vtt"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 113
# Session 10187 - Meet SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10187 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10187 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10187/5/1D820D6D-4F01-48EB-8F22-901F4A4B69FE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10187 temp.vtt"
ffmpeg -i "Session - 10187 temp.mp4" -i "Session - 10187 temp.aac" -i "Session - 10187 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10187 - Meet SwiftData (2160p).mp4"
rm "Session - 10187 temp.vtt"
rm "Session - 10187 temp.mp4"
rm "Session - 10187 temp.aac"

# 114
# Session 10109 - Meet SwiftUI for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10109/4/F4A066BD-28D9-4CF8-AAF3-D35EA776504F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - Meet SwiftUI for spatial computing (2160p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 115
# Session 10143 - Meet the App Store Server Library 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - Meet the App Store Server Library  (2160p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 116
# Session 111215 - Meet UIKit for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 111215 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111215 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111215/4/E8A7CF44-A276-482B-9CFA-F264FD028F54/subtitles/eng/prog_index.m3u8 -c copy "Session - 111215 temp.vtt"
ffmpeg -i "Session - 111215 temp.mp4" -i "Session - 111215 temp.aac" -i "Session - 111215 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111215 - Meet UIKit for spatial computing (2160p).mp4"
rm "Session - 111215 temp.vtt"
rm "Session - 111215 temp.mp4"
rm "Session - 111215 temp.aac"

# 117
# Session 10026 - Meet watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10026 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10026 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10026/4/F0D39B26-C7C2-4ABB-8897-C377223B6A82/subtitles/eng/prog_index.m3u8 -c copy "Session - 10026 temp.vtt"
ffmpeg -i "Session - 10026 temp.mp4" -i "Session - 10026 temp.aac" -i "Session - 10026 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10026 - Meet watchOS 10 (2160p).mp4"
rm "Session - 10026 temp.vtt"
rm "Session - 10026 temp.mp4"
rm "Session - 10026 temp.aac"

# 118
# Session 10189 - Migrate to SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10189 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10189 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10189 temp.vtt"
ffmpeg -i "Session - 10189 temp.mp4" -i "Session - 10189 temp.aac" -i "Session - 10189 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10189 - Migrate to SwiftData (2160p).mp4"
rm "Session - 10189 temp.vtt"
rm "Session - 10189 temp.mp4"
rm "Session - 10189 temp.aac"

# 119
# Session 10172 - Mix Swift and C++
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10172 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10172 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/subtitles/eng/prog_index.m3u8 -c copy "Session - 10172 temp.vtt"
ffmpeg -i "Session - 10172 temp.mp4" -i "Session - 10172 temp.aac" -i "Session - 10172 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10172 - Mix Swift and C++ (2160p).mp4"
rm "Session - 10172 temp.vtt"
rm "Session - 10172 temp.mp4"
rm "Session - 10172 temp.aac"

# 120
# Session 10195 - Model your schema with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10195 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10195 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/subtitles/eng/prog_index.m3u8 -c copy "Session - 10195 temp.vtt"
ffmpeg -i "Session - 10195 temp.mp4" -i "Session - 10195 temp.aac" -i "Session - 10195 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10195 - Model your schema with SwiftData (2160p).mp4"
rm "Session - 10195 temp.vtt"
rm "Session - 10195 temp.mp4"
rm "Session - 10195 temp.aac"

# 121
# Session 10100 - Optimize app power and performance for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Optimize app power and performance for spatial computing (2160p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 122
# Session 10150 - Optimize CarPlay for vehicle systems
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/subtitles/eng/prog_index.m3u8 -c copy "Session - 10150 temp.vtt"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -i "Session - 10150 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10150 - Optimize CarPlay for vehicle systems (2160p).mp4"
rm "Session - 10150 temp.vtt"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 123
# Session 10127 - Optimize GPU renderers with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10127 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10127 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10127 temp.vtt"
ffmpeg -i "Session - 10127 temp.mp4" -i "Session - 10127 temp.aac" -i "Session - 10127 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10127 - Optimize GPU renderers with Metal (2160p).mp4"
rm "Session - 10127 temp.vtt"
rm "Session - 10127 temp.mp4"
rm "Session - 10127 temp.aac"

# 124
# Session 10050 - Optimize machine learning for Metal apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10050 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10050 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/subtitles/eng/prog_index.m3u8 -c copy "Session - 10050 temp.vtt"
ffmpeg -i "Session - 10050 temp.mp4" -i "Session - 10050 temp.aac" -i "Session - 10050 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10050 - Optimize machine learning for Metal apps (2160p).mp4"
rm "Session - 10050 temp.vtt"
rm "Session - 10050 temp.mp4"
rm "Session - 10050 temp.aac"

# 125
# Session 10035 - Perform accessibility audits for your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10035 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10035 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10035/5/AE94C37D-A130-4B28-987C-ADEA8AC1BEA8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10035 temp.vtt"
ffmpeg -i "Session - 10035 temp.mp4" -i "Session - 10035 temp.aac" -i "Session - 10035 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10035 - Perform accessibility audits for your app (2160p).mp4"
rm "Session - 10035 temp.vtt"
rm "Session - 10035 temp.mp4"
rm "Session - 10035 temp.aac"

# 126
# Session 10072 - Principles of spatial design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10072 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10072 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10072/5/C43DFF91-F057-43E1-891F-41E6D5C01716/subtitles/eng/prog_index.m3u8 -c copy "Session - 10072 temp.vtt"
ffmpeg -i "Session - 10072 temp.mp4" -i "Session - 10072 temp.aac" -i "Session - 10072 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10072 - Principles of spatial design (2160p).mp4"
rm "Session - 10072 temp.vtt"
rm "Session - 10072 temp.mp4"
rm "Session - 10072 temp.aac"

# 127
# Session 10266 - Protect your Mac app with environment constraints
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10266 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10266 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10266 temp.vtt"
ffmpeg -i "Session - 10266 temp.mp4" -i "Session - 10266 temp.aac" -i "Session - 10266 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10266 - Protect your Mac app with environment constraints (2160p).mp4"
rm "Session - 10266 temp.vtt"
rm "Session - 10266 temp.mp4"
rm "Session - 10266 temp.aac"

# 128
# Session 10250 - Prototype with Xcode Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10250 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10250 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10250 temp.vtt"
ffmpeg -i "Session - 10250 temp.mp4" -i "Session - 10250 temp.aac" -i "Session - 10250 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10250 - Prototype with Xcode Playgrounds (2160p).mp4"
rm "Session - 10250 temp.vtt"
rm "Session - 10250 temp.mp4"
rm "Session - 10250 temp.aac"

# 129
# Session 10002 - Ready, set, relay - Protect app traffic with network relays
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10002/5/F08830EB-6B56-4461-837E-ADE708BAA71C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10002 temp.vtt"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -i "Session - 10002 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10002 - Ready, set, relay - Protect app traffic with network relays (2160p).mp4"
rm "Session - 10002 temp.vtt"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 130
# Session 10262 - Rediscover Safari developer features
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10262 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10262 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10262 temp.vtt"
ffmpeg -i "Session - 10262 temp.mp4" -i "Session - 10262 temp.aac" -i "Session - 10262 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10262 - Rediscover Safari developer features (2160p).mp4"
rm "Session - 10262 temp.vtt"
rm "Session - 10262 temp.mp4"
rm "Session - 10262 temp.aac"

# 131
# Session 10004 - Reduce network delays with L4S
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10004 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10004 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/subtitles/eng/prog_index.m3u8 -c copy "Session - 10004 temp.vtt"
ffmpeg -i "Session - 10004 temp.mp4" -i "Session - 10004 temp.aac" -i "Session - 10004 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10004 - Reduce network delays with L4S (2160p).mp4"
rm "Session - 10004 temp.vtt"
rm "Session - 10004 temp.mp4"
rm "Session - 10004 temp.aac"

# 132
# Session 10090 - Run your iPad and iPhone apps in the Shared Space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10090 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10090 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10090/4/F9896DEE-8E84-49C1-AEAF-10D7628B2662/subtitles/eng/prog_index.m3u8 -c copy "Session - 10090 temp.vtt"
ffmpeg -i "Session - 10090 temp.mp4" -i "Session - 10090 temp.aac" -i "Session - 10090 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10090 - Run your iPad and iPhone apps in the Shared Space (2160p).mp4"
rm "Session - 10090 temp.vtt"
rm "Session - 10090 temp.mp4"
rm "Session - 10090 temp.aac"

# 133
# Session 10241 - Share files with SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10241 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10241 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10241/4/CB916690-4807-421C-AD85-6D36695D722C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10241 temp.vtt"
ffmpeg -i "Session - 10241 temp.mp4" -i "Session - 10241 temp.aac" -i "Session - 10241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10241 - Share files with SharePlay (2160p).mp4"
rm "Session - 10241 temp.vtt"
rm "Session - 10241 temp.mp4"
rm "Session - 10241 temp.aac"

# 134
# Session 10224 - Simplify distribution in Xcode and Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10224 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10224 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10224 temp.vtt"
ffmpeg -i "Session - 10224 temp.mp4" -i "Session - 10224 temp.aac" -i "Session - 10224 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10224 - Simplify distribution in Xcode and Xcode Cloud (2160p).mp4"
rm "Session - 10224 temp.vtt"
rm "Session - 10224 temp.mp4"
rm "Session - 10224 temp.aac"

# 135
# Session 10102 - Spotlight your app with App Shortcuts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10102/4/1D586799-9271-4BC0-9BFB-29A6B05A5803/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Spotlight your app with App Shortcuts (2160p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 136
# Session 10137 - Support Cinematic mode videos in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10137/5/88C7D972-0671-4705-94CB-4EF627EED532/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - Support Cinematic mode videos in your app (2160p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 137
# Session 10106 - Support external cameras in your iPadOS app 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - Support external cameras in your iPadOS app  (2160p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 138
# Session 10181 - Support HDR images in your app
ffmpeg -i http://events-delivery.apple.com/wwdc23/S8241_9fowekbjdowtk23gksd9/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i http://events-delivery.apple.com/wwdc23/S8241_9fowekbjdowtk23gksd9/cc/en/en.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i http://events-delivery.apple.com/wwdc23/S8241_9fowekbjdowtk23gksd9/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10181 temp.vtt"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -i "Session - 10181 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10181 - Support HDR images in your app (2160p).mp4"
rm "Session - 10181 temp.vtt"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"

# 139
# Session 10188 - Sync to iCloud with CKSyncEngine
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10188 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10188 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10188/3/F63E6FC7-4329-401C-9D80-CD4E7C8A478A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10188 temp.vtt"
ffmpeg -i "Session - 10188 temp.mp4" -i "Session - 10188 temp.aac" -i "Session - 10188 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10188 - Sync to iCloud with CKSyncEngine (2160p).mp4"
rm "Session - 10188 temp.vtt"
rm "Session - 10188 temp.mp4"
rm "Session - 10188 temp.aac"

# 140
# Session 10113 - Take SwiftUI to the next dimension
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/subtitles/eng/prog_index.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Take SwiftUI to the next dimension (2160p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 141
# Session 10162 - The SwiftUI cookbook for focus
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10162/4/6C82F6E0-81BE-4742-B8F1-A77694DA6074/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - The SwiftUI cookbook for focus (2160p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 142
# Session 10238 - Tune up your AirPlay audio experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10238 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10238 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10238/4/5BA02CFE-52D4-497B-BD99-75E591F41885/subtitles/eng/prog_index.m3u8 -c copy "Session - 10238 temp.vtt"
ffmpeg -i "Session - 10238 temp.mp4" -i "Session - 10238 temp.aac" -i "Session - 10238 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10238 - Tune up your AirPlay audio experience (2160p).mp4"
rm "Session - 10238 temp.vtt"
rm "Session - 10238 temp.mp4"
rm "Session - 10238 temp.aac"

# 143
# Session 10057 - Unleash the UIKit trait system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10057 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10057 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10057/4/D79F0058-1869-464A-BABD-A1457AE857A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10057 temp.vtt"
ffmpeg -i "Session - 10057 temp.mp4" -i "Session - 10057 temp.aac" -i "Session - 10057 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10057 - Unleash the UIKit trait system (2160p).mp4"
rm "Session - 10057 temp.vtt"
rm "Session - 10057 temp.mp4"
rm "Session - 10057 temp.aac"

# 144
# Session 10153 - Unlock the power of grammatical agreement
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10153/6/A7A21FC4-917F-4A51-B18C-89DB54EBD3B7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - Unlock the power of grammatical agreement (2160p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 145
# Session 10185 - Update Live Activities with push notifications
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10185 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10185 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10185 temp.vtt"
ffmpeg -i "Session - 10185 temp.mp4" -i "Session - 10185 temp.aac" -i "Session - 10185 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10185 - Update Live Activities with push notifications (2160p).mp4"
rm "Session - 10185 temp.vtt"
rm "Session - 10185 temp.mp4"
rm "Session - 10185 temp.aac"

# 146
# Session 10031 - Update your app for watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10031 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10031 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10031 temp.vtt"
ffmpeg -i "Session - 10031 temp.mp4" -i "Session - 10031 temp.aac" -i "Session - 10031 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10031 - Update your app for watchOS 10 (2160p).mp4"
rm "Session - 10031 temp.vtt"
rm "Session - 10031 temp.mp4"
rm "Session - 10031 temp.aac"

# 147
# Session 10047 - Use Core ML Tools for machine learning model compression
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10047 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10047 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10047 temp.vtt"
ffmpeg -i "Session - 10047 temp.mp4" -i "Session - 10047 temp.aac" -i "Session - 10047 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10047 - Use Core ML Tools for machine learning model compression (2160p).mp4"
rm "Session - 10047 temp.vtt"
rm "Session - 10047 temp.mp4"
rm "Session - 10047 temp.aac"

# 148
# Session 10061 - Verify app dependencies with digital signatures
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - Verify app dependencies with digital signatures (2160p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 149
# Session 111488 - What Apple developers need to know at WWDC23
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 111488 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111488 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/subtitles/eng/prog_index.m3u8 -c copy "Session - 111488 temp.vtt"
ffmpeg -i "Session - 111488 temp.mp4" -i "Session - 111488 temp.aac" -i "Session - 111488 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111488 - What Apple developers need to know at WWDC23 (2160p).mp4"
rm "Session - 111488 temp.vtt"
rm "Session - 111488 temp.mp4"
rm "Session - 111488 temp.aac"

# 150
# Session 10178 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10178 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10178 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10178 temp.vtt"
ffmpeg -i "Session - 10178 temp.mp4" -i "Session - 10178 temp.aac" -i "Session - 10178 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10178 - What's new in App Clips (2160p).mp4"
rm "Session - 10178 temp.vtt"
rm "Session - 10178 temp.mp4"
rm "Session - 10178 temp.aac"

# 151
# Session 10117 - What's new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - What's new in App Store Connect (2160p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 152
# Session 10015 - What's new in App Store pre-orders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10015 temp.vtt"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -i "Session - 10015 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10015 - What's new in App Store pre-orders (2160p).mp4"
rm "Session - 10015 temp.vtt"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 153
# Session 10014 - What's new in App Store pricing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10014 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10014 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10014 temp.vtt"
ffmpeg -i "Session - 10014 temp.mp4" -i "Session - 10014 temp.aac" -i "Session - 10014 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10014 - What's new in App Store pricing (2160p).mp4"
rm "Session - 10014 temp.vtt"
rm "Session - 10014 temp.mp4"
rm "Session - 10014 temp.aac"

# 154
# Session 10141 - What's new in App Store server APIs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10141 temp.vtt"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -i "Session - 10141 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10141 - What's new in App Store server APIs (2160p).mp4"
rm "Session - 10141 temp.vtt"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 155
# Session 10054 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10054 temp.vtt"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -i "Session - 10054 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10054 - What's new in AppKit (2160p).mp4"
rm "Session - 10054 temp.vtt"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 156
# Session 10108 - What's new in Background Assets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - What's new in Background Assets (2160p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"

# 157
# Session 10186 - What's new in Core Data
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10186 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10186 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10186 temp.vtt"
ffmpeg -i "Session - 10186 temp.mp4" -i "Session - 10186 temp.aac" -i "Session - 10186 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10186 - What's new in Core Data (2160p).mp4"
rm "Session - 10186 temp.vtt"
rm "Session - 10186 temp.mp4"
rm "Session - 10186 temp.aac"

# 158
# Session 10179 - What's new in Core Motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10179 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10179 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10179/4/2123E0B0-D771-4375-BE1F-9BE1AEBA4FFE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10179 temp.vtt"
ffmpeg -i "Session - 10179 temp.mp4" -i "Session - 10179 temp.aac" -i "Session - 10179 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10179 - What's new in Core Motion (2160p).mp4"
rm "Session - 10179 temp.vtt"
rm "Session - 10179 temp.mp4"
rm "Session - 10179 temp.aac"

# 159
# Session 10121 - What's new in CSS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - What's new in CSS (2160p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 160
# Session 10053 - What's new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10053 temp.vtt"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -i "Session - 10053 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10053 - What's new in privacy (2160p).mp4"
rm "Session - 10053 temp.vtt"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 161
# Session 10119 - What's new in Safari extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10119/4/83A24FCC-71E7-4137-BD8D-E165D7A1A020/subtitles/eng/prog_index.m3u8 -c copy "Session - 10119 temp.vtt"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -i "Session - 10119 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10119 - What's new in Safari extensions (2160p).mp4"
rm "Session - 10119 temp.vtt"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 162
# Session 10140 - What's new in StoreKit 2 and StoreKit Testing in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10140/4/F65F9FA7-3629-45A5-A4D6-A90BE40BE5E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - What's new in StoreKit 2 and StoreKit Testing in Xcode (2160p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 163
# Session 10148 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10148/5/670CE43A-A151-47A9-BBFA-32FE5E86C679/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - What's new in SwiftUI (2160p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 164
# Session 10055 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10055 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10055 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10055/4/7F22FD85-1611-456E-875B-966A87E16636/subtitles/eng/prog_index.m3u8 -c copy "Session - 10055 temp.vtt"
ffmpeg -i "Session - 10055 temp.mp4" -i "Session - 10055 temp.aac" -i "Session - 10055 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10055 - What's new in UIKit (2160p).mp4"
rm "Session - 10055 temp.vtt"
rm "Session - 10055 temp.mp4"
rm "Session - 10055 temp.aac"

# 165
# Session 10048 - What's new in VisionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10048/4/55A7BD30-D197-43F5-B35B-74973DEDD898/subtitles/eng/prog_index.m3u8 -c copy "Session - 10048 temp.vtt"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -i "Session - 10048 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10048 - What's new in VisionKit (2160p).mp4"
rm "Session - 10048 temp.vtt"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 166
# Session 10235 - What's new in voice processing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10235 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10235 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10235 temp.vtt"
ffmpeg -i "Session - 10235 temp.mp4" -i "Session - 10235 temp.aac" -i "Session - 10235 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10235 - What's new in voice processing (2160p).mp4"
rm "Session - 10235 temp.vtt"
rm "Session - 10235 temp.mp4"
rm "Session - 10235 temp.aac"

# 167
# Session 10114 - What's new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/subtitles/eng/prog_index.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - What's new in Wallet and Apple Pay (2160p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 168
# Session 10120 - What's new in web apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10120/4/C81200EB-45AA-47BF-B173-AD1D2EFE80C6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10120 temp.vtt"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -i "Session - 10120 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10120 - What's new in web apps (2160p).mp4"
rm "Session - 10120 temp.vtt"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 169
# Session 10118 - What's new in Web Inspector
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10118/4/A2DA3123-3E74-4ECF-9961-EA390BE9B502/subtitles/eng/prog_index.m3u8 -c copy "Session - 10118 temp.vtt"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -i "Session - 10118 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10118 - What's new in Web Inspector (2160p).mp4"
rm "Session - 10118 temp.vtt"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"

# 170
# Session 10165 - What's new in Xcode 15
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10165 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10165 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10165/5/C61041BB-AC4B-41C2-982C-6476B513F891/subtitles/eng/prog_index.m3u8 -c copy "Session - 10165 temp.vtt"
ffmpeg -i "Session - 10165 temp.mp4" -i "Session - 10165 temp.aac" -i "Session - 10165 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10165 - What's new in Xcode 15 (2160p).mp4"
rm "Session - 10165 temp.vtt"
rm "Session - 10165 temp.mp4"
rm "Session - 10165 temp.aac"

# 171
# Session 10040 - What’s new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10040/5/FAEE48F2-1B5D-4894-AEB1-1D02816D6347/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10040/5/FAEE48F2-1B5D-4894-AEB1-1D02816D6347/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -c copy "Session 10040 - What’s new in managing Apple devices (2160p).mp4"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 172
# Session 10136 - What’s new in ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - What’s new in ScreenCaptureKit (2160p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 173
# Session 10197 - What’s new in SF Symbols 5
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10197/4/01BB92C1-0F42-4AE4-A526-7C83DA02ACAD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10197 temp.vtt"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -i "Session - 10197 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10197 - What’s new in SF Symbols 5 (2160p).mp4"
rm "Session - 10197 temp.vtt"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 174
# Session 10164 - What’s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10164 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10164 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10164/4/6A73A62C-E994-4907-B0CD-58E632F43AF6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10164 temp.vtt"
ffmpeg -i "Session - 10164 temp.mp4" -i "Session - 10164 temp.aac" -i "Session - 10164 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10164 - What’s new in Swift (2160p).mp4"
rm "Session - 10164 temp.vtt"
rm "Session - 10164 temp.mp4"
rm "Session - 10164 temp.aac"

# 175
# Session 10058 - What’s new with text and text interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10058 temp.vtt"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -i "Session - 10058 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10058 - What’s new with text and text interactions (2160p).mp4"
rm "Session - 10058 temp.vtt"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"

# 176
# Session 10157 - Wind your way through advanced animations in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10157/4/11302D30-B890-47AB-B8B0-CA3D4A8F136F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - Wind your way through advanced animations in SwiftUI (2160p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 177
# Session 10273 - Work with Reality Composer Pro content in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10273 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10273 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10273 temp.vtt"
ffmpeg -i "Session - 10273 temp.mp4" -i "Session - 10273 temp.aac" -i "Session - 10273 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10273 - Work with Reality Composer Pro content in Xcode (2160p).mp4"
rm "Session - 10273 temp.vtt"
rm "Session - 10273 temp.mp4"
rm "Session - 10273 temp.aac"

# 178
# Session 10166 - Write Swift macros
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10166/5/58425163-99DA-4506-A86E-A2D794244136/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Write Swift macros (2160p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 179
# Session 10128 - Your guide to Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10128 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10128 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10128 temp.vtt"
ffmpeg -i "Session - 10128 temp.mp4" -i "Session - 10128 temp.aac" -i "Session - 10128 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10128 - Your guide to Metal ray tracing (2160p).mp4"
rm "Session - 10128 temp.vtt"
rm "Session - 10128 temp.mp4"
rm "Session - 10128 temp.aac"
