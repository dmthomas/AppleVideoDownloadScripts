# Script to download Monday's WWDC 23 session videos in the highest 1440p video and audio
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

# WWDC23 Keynote
ffmpeg -i https://events-delivery.apple.com/0105cftwpxxsfrpdwklppzjhjocakrsk/vod_main_dcxgfpCbhQsgAaxKGMVqZMCdBHZnMpJM/sdr_hvc_1440p_8100/prog_index.m3u8 -c copy "WWDC 2023 Keynote temp.mp4"
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
ffmpeg -i "WWDC 2023 Keynote temp.mp4" -i "WWDC 2023 Keynote temp atmos.mp4" -i "WWDC 2023 Keynote temp.aac" -i "WWDC 2023 Keynote temp zh.vtt" -i "WWDC 2023 Keynote temp de.vtt" -i "WWDC 2023 Keynote temp en.vtt" -i "WWDC 2023 Keynote temp fr.vtt" -i "WWDC 2023 Keynote temp es.vtt" -i "WWDC 2023 Keynote temp ja.vtt" -i "WWDC 2023 Keynote temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple WWDC 2023 Keynote Address (1440p).mp4"
rm "WWDC 2023 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2023 Keynote temp.mp4" -i "WWDC 2023 Keynote temp.aac" -c copy "Apple WWDC 2023 Keynote Address (1440p).mp4"

rm "WWDC 2023 Keynote temp.mp4"
rm "WWDC 2023 Keynote temp.aac"
rm "WWDC 2023 Keynote temp zh.vtt"
rm "WWDC 2023 Keynote temp de.vtt"
rm "WWDC 2023 Keynote temp en.vtt"
rm "WWDC 2023 Keynote temp fr.vtt"
rm "WWDC 2023 Keynote temp es.vtt"
rm "WWDC 2023 Keynote temp ja.vtt"
rm "WWDC 2023 Keynote temp ko.vtt"

# WWDC23 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp.aac"

ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/102/2/FFB36685-F7E8-4810-8814-EBD5DCBE3610/subtitles/eng/prog_index.m3u8 -c copy "WWDC 2023 Platforms State of the Union temp en.vtt"

ffmpeg -i "WWDC 2023 Platforms State of the Union temp.mp4" -i "WWDC 2023 Platforms State of the Union temp.aac" -i "WWDC 2023 Platforms State of the Union temp en.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Apple WWDC 2023 Platforms State of the Union (1440p).mp4"

rm "WWDC 2023 Platforms State of the Union temp.mp4"
rm "WWDC 2023 Platforms State of the Union temp.aac"
rm "WWDC 2023 Platforms State of the Union temp en.vtt"

# Session 111488 - What Apple developers need to know at WWDC23
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111488 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111488 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111488/1/B9EE6A67-C5D1-4554-905E-697296D08CA0/subtitles/eng/prog_index.m3u8 -c copy "Session - 111488 temp.vtt"
ffmpeg -i "Session - 111488 temp.mp4" -i "Session - 111488 temp.aac" -i "Session - 111488 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111488 - What Apple developers need to know at WWDC23 (1440p).mp4"
rm "Session - 111488 temp.vtt"
rm "Session - 111488 temp.mp4"
rm "Session - 111488 temp.aac"

# Session 111486 - 17 big & little things at WWDC23
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111486 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111486 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111486/1/E48AB1B2-961B-4614-91E7-45A9FAF3D835/subtitles/eng/prog_index.m3u8 -c copy "Session - 111486 temp.vtt"
ffmpeg -i "Session - 111486 temp.mp4" -i "Session - 111486 temp.aac" -i "Session - 111486 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111486 - 17 big & little things at WWDC23 (1440p).mp4"
rm "Session - 111486 temp.vtt"
rm "Session - 111486 temp.mp4"
rm "Session - 111486 temp.aac"
