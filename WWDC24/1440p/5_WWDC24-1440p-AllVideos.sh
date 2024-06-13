# Script to download all the WWDC 24 session videos in the highest 1440p video and audio
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
# WWDC24 Keynote
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/sdr_hvc_1440p_8100/prog_index.m3u8 -c copy "WWDC 2024 Keynote temp.mp4"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2024 Keynote temp.aac"

ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/zh/zh.m3u8 -c copy "WWDC 2024 Keynote temp zh.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/de/de.m3u8 -c copy "WWDC 2024 Keynote temp de.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/en/en.m3u8 -c copy "WWDC 2024 Keynote temp en.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/fr/fr.m3u8 -c copy "WWDC 2024 Keynote temp fr.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/es/es.m3u8 -c copy "WWDC 2024 Keynote temp es.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/ja/ja.m3u8 -c copy "WWDC 2024 Keynote temp ja.vtt"
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/cc/ko/ko.m3u8 -c copy "WWDC 2024 Keynote temp ko.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -i https://events-delivery.apple.com/1505clvgxdwlbjrjhxtjdgcdxaiabvuf/vod_main_BveVQvhWftXzpUakjHjEUkbmUYLbRdcV/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "WWDC 2024 Keynote temp atmos.mp4"
ffmpeg -i "WWDC 2024 Keynote temp.mp4" -i "WWDC 2024 Keynote temp atmos.mp4" -i "WWDC 2024 Keynote temp.aac" -i "WWDC 2024 Keynote temp zh.vtt" -i "WWDC 2024 Keynote temp de.vtt" -i "WWDC 2024 Keynote temp en.vtt" -i "WWDC 2024 Keynote temp fr.vtt" -i "WWDC 2024 Keynote temp es.vtt" -i "WWDC 2024 Keynote temp ja.vtt" -i "WWDC 2024 Keynote temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple WWDC 2024 Keynote Address (1440p).mp4"
rm "WWDC 2024 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2024 Keynote temp.mp4" -i "WWDC 2024 Keynote temp.aac" -c copy "Apple WWDC 2024 Keynote Address (2160p).mp4"

rm "WWDC 2024 Keynote temp.mp4"
rm "WWDC 2024 Keynote temp.aac"
rm "WWDC 2024 Keynote temp zh.vtt"
rm "WWDC 2024 Keynote temp de.vtt"
rm "WWDC 2024 Keynote temp en.vtt"
rm "WWDC 2024 Keynote temp fr.vtt"
rm "WWDC 2024 Keynote temp es.vtt"
rm "WWDC 2024 Keynote temp ja.vtt"
rm "WWDC 2024 Keynote temp ko.vtt"

# 2
# WWDC24 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp.aac"

ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/eng/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp en.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/zho/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp zh.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/jpn/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp ja.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/kor/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp ko.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/spa/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp es.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/deu/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp de.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/102/1/A8ECDDD9-F782-4267-B6E0-782B4D9ECB88/subtitles/fra/prog_index.m3u8 -c copy "WWDC 2024 Platforms State of the Union temp fr.vtt"

ffmpeg -i "WWDC 2024 Platforms State of the Union temp.mp4" -i "WWDC 2024 Platforms State of the Union temp.aac" -i "WWDC 2024 Platforms State of the Union temp zh.vtt" -i "WWDC 2024 Platforms State of the Union temp de.vtt" -i "WWDC 2024 Platforms State of the Union temp en.vtt" -i "WWDC 2024 Platforms State of the Union temp fr.vtt" -i "WWDC 2024 Platforms State of the Union temp es.vtt" -i "WWDC 2024 Platforms State of the Union temp ja.vtt" -i "WWDC 2024 Platforms State of the Union temp ko.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 3 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 4 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 5 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 6 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 7 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 8 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple WWDC 2024 Platforms State of the Union (1440p).mp4"

rm "WWDC 2024 Platforms State of the Union temp.mp4"
rm "WWDC 2024 Platforms State of the Union temp.aac"
rm "WWDC 2024 Platforms State of the Union temp en.vtt"
rm "WWDC 2024 Platforms State of the Union temp zh.vtt"
rm "WWDC 2024 Platforms State of the Union temp ja.vtt"
rm "WWDC 2024 Platforms State of the Union temp ko.vtt"
rm "WWDC 2024 Platforms State of the Union temp es.vtt"
rm "WWDC 2024 Platforms State of the Union temp de.vtt"
rm "WWDC 2024 Platforms State of the Union temp fr.vtt"
# 3
# Session 111976 - 18 things from WWDC24
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111976 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111976 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/subtitles/eng/prog_index.m3u8 -c copy "Session - 111976 temp.vtt"
ffmpeg -i "Session - 111976 temp.mp4" -i "Session - 111976 temp.aac" -i "Session - 111976 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111976 - 18 things from WWDC24 (1440p).mp4"
rm "Session - 111976 temp.vtt"
rm "Session - 111976 temp.mp4"
rm "Session - 111976 temp.aac"

# 4
# Session 10184 - A Swift Tour - Explore Swift’s features and design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/subtitles/eng/prog_index.m3u8 -c copy "Session - 10184 temp.vtt"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -i "Session - 10184 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10184 - A Swift Tour - Explore Swift’s features and design (1440p).mp4"
rm "Session - 10184 temp.vtt"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 5
# Session 10218 - Accelerate machine learning with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10218 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10218 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10218 temp.vtt"
ffmpeg -i "Session - 10218 temp.mp4" -i "Session - 10218 temp.aac" -i "Session - 10218 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10218 - Accelerate machine learning with Metal (1440p).mp4"
rm "Session - 10218 temp.vtt"
rm "Session - 10218 temp.mp4"
rm "Session - 10218 temp.aac"

# 6
# Session 10140 - Add personality to your app through UX writing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - Add personality to your app through UX writing (1440p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 7
# Session 10173 - Analyze heap memory
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10173 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10173 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/subtitles/eng/prog_index.m3u8 -c copy "Session - 10173 temp.vtt"
ffmpeg -i "Session - 10173 temp.mp4" -i "Session - 10173 temp.aac" -i "Session - 10173 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10173 - Analyze heap memory (1440p).mp4"
rm "Session - 10173 temp.vtt"
rm "Session - 10173 temp.mp4"
rm "Session - 10173 temp.aac"

# 8
# Session 10172 - Break into the RealityKit debugger
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10172 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10172 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10172 temp.vtt"
ffmpeg -i "Session - 10172 temp.mp4" -i "Session - 10172 temp.aac" -i "Session - 10172 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10172 - Break into the RealityKit debugger (1440p).mp4"
rm "Session - 10172 temp.vtt"
rm "Session - 10172 temp.mp4"
rm "Session - 10172 temp.aac"

# 9
# Session 10067 - Bring context to today’s weather
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10067 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10067 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10067 temp.vtt"
ffmpeg -i "Session - 10067 temp.mp4" -i "Session - 10067 temp.aac" -i "Session - 10067 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10067 - Bring context to today’s weather (1440p).mp4"
rm "Session - 10067 temp.vtt"
rm "Session - 10067 temp.mp4"
rm "Session - 10067 temp.aac"

# 10
# Session 10220 - Bring expression to your app with Genmoji
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10220 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10220 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10220 temp.vtt"
ffmpeg -i "Session - 10220 temp.mp4" -i "Session - 10220 temp.aac" -i "Session - 10220 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10220 - Bring expression to your app with Genmoji (1440p).mp4"
rm "Session - 10220 temp.vtt"
rm "Session - 10220 temp.mp4"
rm "Session - 10220 temp.aac"

# 11
# Session 10133 - Bring your app to Siri
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/subtitles/eng/prog_index.m3u8 -c copy "Session - 10133 temp.vtt"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -i "Session - 10133 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10133 - Bring your app to Siri (1440p).mp4"
rm "Session - 10133 temp.vtt"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 12
# Session 10210 - Bring your app’s core features to users with App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10210/4/6649F1E2-3988-4E91-8A3F-2A5414AA24BC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10210 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10210/4/6649F1E2-3988-4E91-8A3F-2A5414AA24BC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10210 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10210/4/6649F1E2-3988-4E91-8A3F-2A5414AA24BC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10210 temp.vtt"
ffmpeg -i "Session - 10210 temp.mp4" -i "Session - 10210 temp.aac" -i "Session - 10210 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10210 - Bring your app’s core features to users with App Intents (1440p).mp4"
rm "Session - 10210 temp.vtt"
rm "Session - 10210 temp.mp4"
rm "Session - 10210 temp.aac"

# 13
# Session 10093 - Bring your iOS or iPadOS game to visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Bring your iOS or iPadOS game to visionOS (1440p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 14
# Session 10068 - Bring your Live Activity to Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/subtitles/eng/prog_index.m3u8 -c copy "Session - 10068 temp.vtt"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -i "Session - 10068 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10068 - Bring your Live Activity to Apple Watch (1440p).mp4"
rm "Session - 10068 temp.vtt"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 15
# Session 10159 - Bring your machine learning and AI models to Apple silicon
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Bring your machine learning and AI models to Apple silicon (1440p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 16
# Session 10069 - Broadcast updates to your Live Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10069 temp.vtt"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -i "Session - 10069 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10069 - Broadcast updates to your Live Activities (1440p).mp4"
rm "Session - 10069 temp.vtt"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 17
# Session 10204 - Build a great Lock Screen camera capture experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/9/FFB7B19C-9230-4A4E-B4CD-5E6EED8FBEF3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10204 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/9/FFB7B19C-9230-4A4E-B4CD-5E6EED8FBEF3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10204 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/9/FFB7B19C-9230-4A4E-B4CD-5E6EED8FBEF3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10204 temp.vtt"
ffmpeg -i "Session - 10204 temp.mp4" -i "Session - 10204 temp.aac" -i "Session - 10204 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10204 - Build a great Lock Screen camera capture experience (1440p).mp4"
rm "Session - 10204 temp.vtt"
rm "Session - 10204 temp.mp4"
rm "Session - 10204 temp.aac"

# 18
# Session 10104 - Build a spatial drawing app with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Build a spatial drawing app with RealityKit (1440p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 19
# Session 10166 - Build compelling spatial photo and video experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Build compelling spatial photo and video experiences (1440p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 20
# Session 10084 - Build custom swimming workouts with WorkoutKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10084 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10084 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10084 temp.vtt"
ffmpeg -i "Session - 10084 temp.mp4" -i "Session - 10084 temp.aac" -i "Session - 10084 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10084 - Build custom swimming workouts with WorkoutKit (1440p).mp4"
rm "Session - 10084 temp.vtt"
rm "Session - 10084 temp.mp4"
rm "Session - 10084 temp.aac"

# 21
# Session 10066 - Build immersive web experiences with WebXR
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10066 temp.vtt"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -i "Session - 10066 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10066 - Build immersive web experiences with WebXR (1440p).mp4"
rm "Session - 10066 temp.vtt"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 22
# Session 10185 - Build multilingual-ready apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10185 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10185 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10185 temp.vtt"
ffmpeg -i "Session - 10185 temp.mp4" -i "Session - 10185 temp.aac" -i "Session - 10185 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10185 - Build multilingual-ready apps (1440p).mp4"
rm "Session - 10185 temp.vtt"
rm "Session - 10185 temp.mp4"
rm "Session - 10185 temp.aac"

# 23
# Session 10088 - Capture HDR content with ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10088 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10088 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10088 temp.vtt"
ffmpeg -i "Session - 10088 temp.mp4" -i "Session - 10088 temp.aac" -i "Session - 10088 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10088 - Capture HDR content with ScreenCaptureKit (1440p).mp4"
rm "Session - 10088 temp.vtt"
rm "Session - 10088 temp.mp4"
rm "Session - 10088 temp.aac"

# 24
# Session 10073 - Catch up on accessibility in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/subtitles/eng/prog_index.m3u8 -c copy "Session - 10073 temp.vtt"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -i "Session - 10073 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10073 - Catch up on accessibility in SwiftUI (1440p).mp4"
rm "Session - 10073 temp.vtt"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 25
# Session 10102 - Compose interactive 3D content in Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Compose interactive 3D content in Reality Composer Pro (1440p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 26
# Session 10170 - Consume noncopyable types in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Consume noncopyable types in Swift (1440p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 27
# Session 10138 - Create a custom data store with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10138 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10138 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10138 temp.vtt"
ffmpeg -i "Session - 10138 temp.mp4" -i "Session - 10138 temp.aac" -i "Session - 10138 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10138 - Create a custom data store with SwiftData (1440p).mp4"
rm "Session - 10138 temp.vtt"
rm "Session - 10138 temp.mp4"
rm "Session - 10138 temp.aac"

# 28
# Session 10087 - Create custom environments for your immersive apps in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10087 temp.vtt"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -i "Session - 10087 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10087 - Create custom environments for your immersive apps in visionOS (1440p).mp4"
rm "Session - 10087 temp.vtt"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 29
# Session 10152 - Create custom hover effects in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10152 temp.vtt"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -i "Session - 10152 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10152 - Create custom hover effects in visionOS (1440p).mp4"
rm "Session - 10152 temp.vtt"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 30
# Session 10151 - Create custom visual effects with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10151 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10151 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/subtitles/eng/prog_index.m3u8 -c copy "Session - 10151 temp.vtt"
ffmpeg -i "Session - 10151 temp.mp4" -i "Session - 10151 temp.aac" -i "Session - 10151 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10151 - Create custom visual effects with SwiftUI (1440p).mp4"
rm "Session - 10151 temp.vtt"
rm "Session - 10151 temp.mp4"
rm "Session - 10151 temp.aac"

# 31
# Session 10100 - Create enhanced spatial computing experiences with ARKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Create enhanced spatial computing experiences with ARKit (1440p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 32
# Session 10070 - Customize feature discovery with TipKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Customize feature discovery with TipKit (1440p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 33
# Session 10201 - Customize spatial Persona templates in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10201 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10201 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/subtitles/eng/prog_index.m3u8 -c copy "Session - 10201 temp.vtt"
ffmpeg -i "Session - 10201 temp.mp4" -i "Session - 10201 temp.aac" -i "Session - 10201 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10201 - Customize spatial Persona templates in SharePlay (1440p).mp4"
rm "Session - 10201 temp.vtt"
rm "Session - 10201 temp.mp4"
rm "Session - 10201 temp.aac"

# 34
# Session 10171 - Demystify explicitly built modules
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10171 temp.vtt"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -i "Session - 10171 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10171 - Demystify explicitly built modules (1440p).mp4"
rm "Session - 10171 temp.vtt"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 35
# Session 10146 - Demystify SwiftUI containers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10146 temp.vtt"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -i "Session - 10146 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10146 - Demystify SwiftUI containers (1440p).mp4"
rm "Session - 10146 temp.vtt"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 36
# Session 10161 - Deploy machine learning and AI models on-device with Core ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10161 temp.vtt"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -i "Session - 10161 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10161 - Deploy machine learning and AI models on-device with Core ML (1440p).mp4"
rm "Session - 10161 temp.vtt"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 37
# Session 10085 - Design advanced games for Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10085 temp.vtt"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -i "Session - 10085 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10085 - Design advanced games for Apple platforms (1440p).mp4"
rm "Session - 10085 temp.vtt"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 38
# Session 10176 - Design App Intents for system experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/subtitles/eng/prog_index.m3u8 -c copy "Session - 10176 temp.vtt"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -i "Session - 10176 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10176 - Design App Intents for system experiences (1440p).mp4"
rm "Session - 10176 temp.vtt"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 39
# Session 10086 - Design great visionOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/subtitles/eng/prog_index.m3u8 -c copy "Session - 10086 temp.vtt"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -i "Session - 10086 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10086 - Design great visionOS apps (1440p).mp4"
rm "Session - 10086 temp.vtt"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 40
# Session 10096 - Design interactive experiences for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - Design interactive experiences for visionOS (1440p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 41
# Session 10098 - Design Live Activities for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10098 temp.vtt"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -i "Session - 10098 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10098 - Design Live Activities for Apple Watch (1440p).mp4"
rm "Session - 10098 temp.vtt"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 42
# Session 10107 - Discover area mode for Object Capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Discover area mode for Object Capture (1440p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 43
# Session 10113 - Discover media performance metrics in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Discover media performance metrics in AVFoundation (1440p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 44
# Session 10103 - Discover RealityKit APIs for iOS, macOS and visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/subtitles/eng/prog_index.m3u8 -c copy "Session - 10103 temp.vtt"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -i "Session - 10103 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10103 - Discover RealityKit APIs for iOS, macOS and visionOS (1440p).mp4"
rm "Session - 10103 temp.vtt"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 45
# Session 10163 - Discover Swift enhancements in the Vision framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10163 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10163 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/subtitles/eng/prog_index.m3u8 -c copy "Session - 10163 temp.vtt"
ffmpeg -i "Session - 10163 temp.mp4" -i "Session - 10163 temp.aac" -i "Session - 10163 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10163 - Discover Swift enhancements in the Vision framework (1440p).mp4"
rm "Session - 10163 temp.vtt"
rm "Session - 10163 temp.mp4"
rm "Session - 10163 temp.aac"

# 46
# Session 10153 - Dive deep into volumes and immersive spaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - Dive deep into volumes and immersive spaces (1440p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 47
# Session 10147 - Elevate your tab and sidebar experience in iPadOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Elevate your tab and sidebar experience in iPadOS (1440p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 48
# Session 10114 - Enhance ad experiences with HLS interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Enhance ad experiences with HLS interstitials (1440p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 49
# Session 10115 - Enhance the immersion of media viewing in custom environments
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - Enhance the immersion of media viewing in custom environments (1440p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 50
# Session 111801 - Enhance your spatial computing app with RealityKit audio
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111801 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111801 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 111801 temp.vtt"
ffmpeg -i "Session - 111801 temp.mp4" -i "Session - 111801 temp.aac" -i "Session - 111801 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111801 - Enhance your spatial computing app with RealityKit audio (1440p).mp4"
rm "Session - 111801 temp.vtt"
rm "Session - 111801 temp.mp4"
rm "Session - 111801 temp.aac"

# 51
# Session 10145 - Enhance your UI animations and transitions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/subtitles/eng/prog_index.m3u8 -c copy "Session - 10145 temp.vtt"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -i "Session - 10145 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10145 - Enhance your UI animations and transitions (1440p).mp4"
rm "Session - 10145 temp.vtt"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 52
# Session 10209 - Enhanced suggestions for your journaling app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10209 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10209 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/subtitles/eng/prog_index.m3u8 -c copy "Session - 10209 temp.vtt"
ffmpeg -i "Session - 10209 temp.mp4" -i "Session - 10209 temp.aac" -i "Session - 10209 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10209 - Enhanced suggestions for your journaling app (1440p).mp4"
rm "Session - 10209 temp.vtt"
rm "Session - 10209 temp.mp4"
rm "Session - 10209 temp.aac"

# 53
# Session 10132 - Evolve your document launch experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10132 temp.vtt"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -i "Session - 10132 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10132 - Evolve your document launch experience (1440p).mp4"
rm "Session - 10132 temp.vtt"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"

# 54
# Session 10062 - Explore App Store server APIs for In-App Purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/subtitles/eng/prog_index.m3u8 -c copy "Session - 10062 temp.vtt"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -i "Session - 10062 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10062 - Explore App Store server APIs for In-App Purchase (1440p).mp4"
rm "Session - 10062 temp.vtt"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 55
# Session 10094 - Explore game input in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Explore game input in visionOS (1440p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 56
# Session 10223 - Explore machine learning on Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10223 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10223 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10223 temp.vtt"
ffmpeg -i "Session - 10223 temp.mp4" -i "Session - 10223 temp.aac" -i "Session - 10223 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10223 - Explore machine learning on Apple platforms (1440p).mp4"
rm "Session - 10223 temp.vtt"
rm "Session - 10223 temp.mp4"
rm "Session - 10223 temp.aac"

# 57
# Session 10116 - Explore multiview video playback in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10116 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10116 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10116 temp.vtt"
ffmpeg -i "Session - 10116 temp.mp4" -i "Session - 10116 temp.aac" -i "Session - 10116 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10116 - Explore multiview video playback in visionOS (1440p).mp4"
rm "Session - 10116 temp.vtt"
rm "Session - 10116 temp.mp4"
rm "Session - 10116 temp.aac"

# 58
# Session 10101 - Explore object tracking for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Explore object tracking for visionOS (1440p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 59
# Session 10217 - Explore Swift performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10217 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10217 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10217 temp.vtt"
ffmpeg -i "Session - 10217 temp.mp4" -i "Session - 10217 temp.aac" -i "Session - 10217 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10217 - Explore Swift performance (1440p).mp4"
rm "Session - 10217 temp.vtt"
rm "Session - 10217 temp.mp4"
rm "Session - 10217 temp.aac"

# 60
# Session 10216 - Explore the Swift on Server ecosystem
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10216 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10216 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10216 temp.vtt"
ffmpeg -i "Session - 10216 temp.mp4" -i "Session - 10216 temp.aac" -i "Session - 10216 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10216 - Explore the Swift on Server ecosystem (1440p).mp4"
rm "Session - 10216 temp.vtt"
rm "Session - 10216 temp.mp4"
rm "Session - 10216 temp.aac"

# 61
# Session 10109 - Explore wellbeing APIs in HealthKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - Explore wellbeing APIs in HealthKit (1440p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 62
# Session 10157 - Extend your app’s controls across the system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - Extend your app’s controls across the system (1440p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 63
# Session 10200 - Extend your Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10200 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10200 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10200 temp.vtt"
ffmpeg -i "Session - 10200 temp.mp4" -i "Session - 10200 temp.aac" -i "Session - 10200 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10200 - Extend your Xcode Cloud workflows (1440p).mp4"
rm "Session - 10200 temp.vtt"
rm "Session - 10200 temp.mp4"
rm "Session - 10200 temp.aac"

# 64
# Session 10074 - Get started with Dynamic Type
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/subtitles/eng/prog_index.m3u8 -c copy "Session - 10074 temp.vtt"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -i "Session - 10074 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10074 - Get started with Dynamic Type (1440p).mp4"
rm "Session - 10074 temp.vtt"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 65
# Session 10083 - Get started with HealthKit in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Get started with HealthKit in visionOS (1440p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 66
# Session 10168 - Get started with Writing Tools
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10168 temp.vtt"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -i "Session - 10168 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10168 - Get started with Writing Tools (1440p).mp4"
rm "Session - 10168 temp.vtt"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 67
# Session 10195 - Go further with Swift Testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10195 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10195 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10195 temp.vtt"
ffmpeg -i "Session - 10195 temp.mp4" -i "Session - 10195 temp.aac" -i "Session - 10195 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10195 - Go further with Swift Testing (1440p).mp4"
rm "Session - 10195 temp.vtt"
rm "Session - 10195 temp.mp4"
rm "Session - 10195 temp.aac"

# 68
# Session 10197 - Go small with Embedded Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/subtitles/eng/prog_index.m3u8 -c copy "Session - 10197 temp.vtt"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -i "Session - 10197 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10197 - Go small with Embedded Swift (1440p).mp4"
rm "Session - 10197 temp.vtt"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 69
# Session 10110 - Implement App Store Offers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Implement App Store Offers (1440p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 70
# Session 10139 - Introducing enterprise APIs for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10139/5/6269882C-FCC9-45DB-ADB4-DAAF5297CFEF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10139 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10139/5/6269882C-FCC9-45DB-ADB4-DAAF5297CFEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10139 temp.aac"
ffmpeg -i "Session - 10139 temp.mp4" -i "Session - 10139 temp.aac" -c copy "Session 10139 - Introducing enterprise APIs for visionOS (1440p).mp4"
rm "Session - 10139 temp.mp4"
rm "Session - 10139 temp.aac"

# 71
# Session 10162 - Keep colors consistent across captures
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - Keep colors consistent across captures (1440p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 72
# Session 10203 - Meet AccessorySetupKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10203 temp.vtt"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -i "Session - 10203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10203 - Meet AccessorySetupKit (1440p).mp4"
rm "Session - 10203 temp.vtt"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 73
# Session 10060 - Meet AdAttributionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10060 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10060 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10060 temp.vtt"
ffmpeg -i "Session - 10060 temp.mp4" -i "Session - 10060 temp.aac" -i "Session - 10060 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10060 - Meet AdAttributionKit (1440p).mp4"
rm "Session - 10060 temp.vtt"
rm "Session - 10060 temp.mp4"
rm "Session - 10060 temp.aac"

# 74
# Session 2023 - Meet FinanceKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 2023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 2023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 2023 temp.vtt"
ffmpeg -i "Session - 2023 temp.mp4" -i "Session - 2023 temp.aac" -i "Session - 2023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 2023 - Meet FinanceKit (1440p).mp4"
rm "Session - 2023 temp.vtt"
rm "Session - 2023 temp.mp4"
rm "Session - 2023 temp.aac"

# 75
# Session 10179 - Meet Swift Testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10179 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10179 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10179 temp.vtt"
ffmpeg -i "Session - 10179 temp.mp4" -i "Session - 10179 temp.aac" -i "Session - 10179 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10179 - Meet Swift Testing (1440p).mp4"
rm "Session - 10179 temp.vtt"
rm "Session - 10179 temp.mp4"
rm "Session - 10179 temp.aac"

# 76
# Session 10091 - Meet TabletopKit for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10091 temp.vtt"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -i "Session - 10091 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10091 - Meet TabletopKit for visionOS (1440p).mp4"
rm "Session - 10091 temp.vtt"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 77
# Session 10121 - Meet the Contact Access Button
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - Meet the Contact Access Button (1440p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 78
# Session 10111 - Meet the next generation of CarPlay architecture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10111 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10111 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10111 temp.vtt"
ffmpeg -i "Session - 10111 temp.mp4" -i "Session - 10111 temp.aac" -i "Session - 10111 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10111 - Meet the next generation of CarPlay architecture (1440p).mp4"
rm "Session - 10111 temp.vtt"
rm "Session - 10111 temp.mp4"
rm "Session - 10111 temp.aac"

# 79
# Session 10117 - Meet the Translation API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - Meet the Translation API (1440p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 80
# Session 10169 - Migrate your app to Swift 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10169 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10169 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10169 temp.vtt"
ffmpeg -i "Session - 10169 temp.mp4" -i "Session - 10169 temp.aac" -i "Session - 10169 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10169 - Migrate your app to Swift 6 (1440p).mp4"
rm "Session - 10169 temp.vtt"
rm "Session - 10169 temp.mp4"
rm "Session - 10169 temp.aac"

# 81
# Session 10207 - Migrate your TVML app to SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10207 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10207 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10207 temp.vtt"
ffmpeg -i "Session - 10207 temp.mp4" -i "Session - 10207 temp.aac" -i "Session - 10207 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10207 - Migrate your TVML app to SwiftUI (1440p).mp4"
rm "Session - 10207 temp.vtt"
rm "Session - 10207 temp.mp4"
rm "Session - 10207 temp.aac"

# 82
# Session 10065 - Optimize for the spatial web
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10065 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10065 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10065 temp.vtt"
ffmpeg -i "Session - 10065 temp.mp4" -i "Session - 10065 temp.aac" -i "Session - 10065 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10065 - Optimize for the spatial web (1440p).mp4"
rm "Session - 10065 temp.vtt"
rm "Session - 10065 temp.mp4"
rm "Session - 10065 temp.aac"

# 83
# Session 10186 - Optimize your 3D assets for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10186 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10186 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/subtitles/eng/prog_index.m3u8 -c copy "Session - 10186 temp.vtt"
ffmpeg -i "Session - 10186 temp.mp4" -i "Session - 10186 temp.aac" -i "Session - 10186 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10186 - Optimize your 3D assets for spatial computing (1440p).mp4"
rm "Session - 10186 temp.vtt"
rm "Session - 10186 temp.mp4"
rm "Session - 10186 temp.aac"

# 84
# Session 111977 - Platforms State of the Union 5-Minute Recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111977 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111977 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/subtitles/eng/prog_index.m3u8 -c copy "Session - 111977 temp.vtt"
ffmpeg -i "Session - 111977 temp.mp4" -i "Session - 111977 temp.aac" -i "Session - 111977 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111977 - Platforms State of the Union 5-Minute Recap (1440p).mp4"
rm "Session - 111977 temp.vtt"
rm "Session - 111977 temp.mp4"
rm "Session - 111977 temp.aac"

# 85
# Session 10089 - Port advanced games to Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - Port advanced games to Apple platforms (1440p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 86
# Session 10092 - Render Metal with passthrough in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/subtitles/eng/prog_index.m3u8 -c copy "Session - 10092 temp.vtt"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -i "Session - 10092 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10092 - Render Metal with passthrough in visionOS (1440p).mp4"
rm "Session - 10092 temp.vtt"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 87
# Session 10198 - Run, Break, Inspect - Explore effective debugging in LLDB
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10198 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10198 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/subtitles/eng/prog_index.m3u8 -c copy "Session - 10198 temp.vtt"
ffmpeg -i "Session - 10198 temp.mp4" -i "Session - 10198 temp.aac" -i "Session - 10198 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10198 - Run, Break, Inspect - Explore effective debugging in LLDB (1440p).mp4"
rm "Session - 10198 temp.vtt"
rm "Session - 10198 temp.mp4"
rm "Session - 10198 temp.aac"

# 88
# Session 10112 - Say hello to the next generation of CarPlay design system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10112 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10112 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/subtitles/eng/prog_index.m3u8 -c copy "Session - 10112 temp.vtt"
ffmpeg -i "Session - 10112 temp.mp4" -i "Session - 10112 temp.aac" -i "Session - 10112 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10112 - Say hello to the next generation of CarPlay design system (1440p).mp4"
rm "Session - 10112 temp.vtt"
rm "Session - 10112 temp.mp4"
rm "Session - 10112 temp.aac"

# 89
# Session 10214 - Squeeze the most out of Apple Pencil
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10214 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10214 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10214 temp.vtt"
ffmpeg -i "Session - 10214 temp.mp4" -i "Session - 10214 temp.aac" -i "Session - 10214 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10214 - Squeeze the most out of Apple Pencil (1440p).mp4"
rm "Session - 10214 temp.vtt"
rm "Session - 10214 temp.mp4"
rm "Session - 10214 temp.aac"

# 90
# Session 10125 - Streamline sign-in with passkey upgrades and credential managers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10125 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10125 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10125 temp.vtt"
ffmpeg -i "Session - 10125 temp.mp4" -i "Session - 10125 temp.aac" -i "Session - 10125 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10125 - Streamline sign-in with passkey upgrades and credential managers (1440p).mp4"
rm "Session - 10125 temp.vtt"
rm "Session - 10125 temp.mp4"
rm "Session - 10125 temp.aac"

# 91
# Session 10211 - Support real-time ML inference on the CPU
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10211 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10211 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/subtitles/eng/prog_index.m3u8 -c copy "Session - 10211 temp.vtt"
ffmpeg -i "Session - 10211 temp.mp4" -i "Session - 10211 temp.aac" -i "Session - 10211 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10211 - Support real-time ML inference on the CPU (1440p).mp4"
rm "Session - 10211 temp.vtt"
rm "Session - 10211 temp.mp4"
rm "Session - 10211 temp.aac"

# 92
# Session 10131 - Support semantic search with Core Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/subtitles/eng/prog_index.m3u8 -c copy "Session - 10131 temp.vtt"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -i "Session - 10131 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10131 - Support semantic search with Core Spotlight (1440p).mp4"
rm "Session - 10131 temp.vtt"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 93
# Session 10155 - Swift Charts - Vectorized and function plots
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Swift Charts - Vectorized and function plots (1440p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 94
# Session 10150 - SwiftUI essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10150 temp.vtt"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -i "Session - 10150 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10150 - SwiftUI essentials (1440p).mp4"
rm "Session - 10150 temp.vtt"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 95
# Session 10148 - Tailor macOS windows with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - Tailor macOS windows with SwiftUI (1440p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 96
# Session 10075 - Track model changes with SwiftData history
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Track model changes with SwiftData history (1440p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 97
# Session 10160 - Train your machine learning and AI models on Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Train your machine learning and AI models on Apple GPUs (1440p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 98
# Session 10097 - Unlock the power of places with MapKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/subtitles/eng/prog_index.m3u8 -c copy "Session - 10097 temp.vtt"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -i "Session - 10097 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10097 - Unlock the power of places with MapKit (1440p).mp4"
rm "Session - 10097 temp.vtt"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 99
# Session 10122 - Use CloudKit Console to monitor and optimize database activity
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Use CloudKit Console to monitor and optimize database activity (1440p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 100
# Session 10177 - Use HDR for dynamic image experiences in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10177 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10177 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10177 temp.vtt"
ffmpeg -i "Session - 10177 temp.mp4" -i "Session - 10177 temp.aac" -i "Session - 10177 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10177 - Use HDR for dynamic image experiences in your app (1440p).mp4"
rm "Session - 10177 temp.vtt"
rm "Session - 10177 temp.mp4"
rm "Session - 10177 temp.aac"

# 101
# Session 10134 - What’s new in App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10134 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10134 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10134 temp.vtt"
ffmpeg -i "Session - 10134 temp.mp4" -i "Session - 10134 temp.aac" -i "Session - 10134 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10134 - What’s new in App Intents (1440p).mp4"
rm "Session - 10134 temp.vtt"
rm "Session - 10134 temp.mp4"
rm "Session - 10134 temp.aac"

# 102
# Session 10063 - What’s new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10063 temp.vtt"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -i "Session - 10063 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10063 - What’s new in App Store Connect (1440p).mp4"
rm "Session - 10063 temp.vtt"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 103
# Session 10124 - What’s new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10124 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10124 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10124 temp.vtt"
ffmpeg -i "Session - 10124 temp.mp4" -i "Session - 10124 temp.aac" -i "Session - 10124 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10124 - What’s new in AppKit (1440p).mp4"
rm "Session - 10124 temp.vtt"
rm "Session - 10124 temp.mp4"
rm "Session - 10124 temp.aac"

# 104
# Session 10183 - What’s new in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10183 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10183 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/subtitles/eng/prog_index.m3u8 -c copy "Session - 10183 temp.vtt"
ffmpeg -i "Session - 10183 temp.mp4" -i "Session - 10183 temp.aac" -i "Session - 10183 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10183 - What’s new in Create ML (1440p).mp4"
rm "Session - 10183 temp.vtt"
rm "Session - 10183 temp.mp4"
rm "Session - 10183 temp.aac"

# 105
# Session 10143 - What’s new in device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - What’s new in device management (1440p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 106
# Session 10164 - What’s new in DockKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10164 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10164 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10164 temp.vtt"
ffmpeg -i "Session - 10164 temp.mp4" -i "Session - 10164 temp.aac" -i "Session - 10164 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10164 - What’s new in DockKit (1440p).mp4"
rm "Session - 10164 temp.vtt"
rm "Session - 10164 temp.mp4"
rm "Session - 10164 temp.aac"

# 107
# Session 10212 - What’s new in location authorization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10212 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10212 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10212 temp.vtt"
ffmpeg -i "Session - 10212 temp.mp4" -i "Session - 10212 temp.aac" -i "Session - 10212 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10212 - What’s new in location authorization (1440p).mp4"
rm "Session - 10212 temp.vtt"
rm "Session - 10212 temp.mp4"
rm "Session - 10212 temp.aac"

# 108
# Session 10123 - What’s new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10123 temp.vtt"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -i "Session - 10123 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10123 - What’s new in privacy (1440p).mp4"
rm "Session - 10123 temp.vtt"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 109
# Session 10105 - What’s new in Quick Look for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - What’s new in Quick Look for visionOS (1440p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 110
# Session 10188 - What’s new in SF Symbols 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10188 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10188 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10188 temp.vtt"
ffmpeg -i "Session - 10188 temp.mp4" -i "Session - 10188 temp.aac" -i "Session - 10188 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10188 - What’s new in SF Symbols 6 (1440p).mp4"
rm "Session - 10188 temp.vtt"
rm "Session - 10188 temp.mp4"
rm "Session - 10188 temp.aac"

# 111
# Session 10061 - What’s new in StoreKit and In-App Purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - What’s new in StoreKit and In-App Purchase (1440p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 112
# Session 10136 - What’s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - What’s new in Swift (1440p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 113
# Session 10137 - What’s new in SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - What’s new in SwiftData (1440p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 114
# Session 10144 - What’s new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10144 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10144 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10144 temp.vtt"
ffmpeg -i "Session - 10144 temp.mp4" -i "Session - 10144 temp.aac" -i "Session - 10144 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10144 - What’s new in SwiftUI (1440p).mp4"
rm "Session - 10144 temp.vtt"
rm "Session - 10144 temp.mp4"
rm "Session - 10144 temp.aac"

# 115
# Session 10118 - What’s new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/subtitles/eng/prog_index.m3u8 -c copy "Session - 10118 temp.vtt"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -i "Session - 10118 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10118 - What’s new in UIKit (1440p).mp4"
rm "Session - 10118 temp.vtt"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"

# 116
# Session 10106 - What’s new in USD and MaterialX
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - What’s new in USD and MaterialX (1440p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 117
# Session 10108 - What’s new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - What’s new in Wallet and Apple Pay (1440p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"

# 118
# Session 10205 - What’s new in watchOS 11
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10205 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10205 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/subtitles/eng/prog_index.m3u8 -c copy "Session - 10205 temp.vtt"
ffmpeg -i "Session - 10205 temp.mp4" -i "Session - 10205 temp.aac" -i "Session - 10205 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10205 - What’s new in watchOS 11 (1440p).mp4"
rm "Session - 10205 temp.vtt"
rm "Session - 10205 temp.mp4"
rm "Session - 10205 temp.aac"

# 119
# Session 10135 - What’s new in Xcode 16
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10135 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10135 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/subtitles/eng/prog_index.m3u8 -c copy "Session - 10135 temp.vtt"
ffmpeg -i "Session - 10135 temp.mp4" -i "Session - 10135 temp.aac" -i "Session - 10135 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10135 - What’s new in Xcode 16 (1440p).mp4"
rm "Session - 10135 temp.vtt"
rm "Session - 10135 temp.mp4"
rm "Session - 10135 temp.aac"

# 120
# Session 10149 - Work with windows in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - Work with windows in SwiftUI (1440p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 121
# Session 10181 - Xcode essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/subtitles/eng/prog_index.m3u8 -c copy "Session - 10181 temp.vtt"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -i "Session - 10181 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10181 - Xcode essentials (1440p).mp4"
rm "Session - 10181 temp.vtt"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"
