# Script to download Tuesday's WWDC 21 session videos in the highest 1080p video and audio
# You may have to update ffmpeg before using this script. I needed version 4.3 or higher to successfully download the videos.
#
# If you want the lower bitrate audio, do a find/replace of "audio_english_192" with "audio_english_64"
# If you want lower bitrate or lower resolution video, do a find/replace of "hvc_1080p_5800" with any of the following:
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
# Session 10151 - Add accessibility to your Unity games
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10151 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10151 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/subtitles/eng/prog_index.m3u8 -c copy "Session - 10151 temp.vtt"
ffmpeg -i "Session - 10151 temp.mp4" -i "Session - 10151 temp.aac" -i "Session - 10151 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10151 - Add accessibility to your Unity games (1080p).mp4"
rm "Session - 10151 temp.vtt"
rm "Session - 10151 temp.mp4"
rm "Session - 10151 temp.aac"

# 2
# Session 10071 - Adopt desktop class editing interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10071 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10071 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10071 temp.vtt"
ffmpeg -i "Session - 10071 temp.mp4" -i "Session - 10071 temp.aac" -i "Session - 10071 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10071 - Adopt desktop class editing interactions (1080p).mp4"
rm "Session - 10071 temp.vtt"
rm "Session - 10071 temp.mp4"
rm "Session - 10071 temp.aac"

# 3
# Session 10158 - Adopt Variable Color in SF Symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10158 temp.vtt"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -i "Session - 10158 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10158 - Adopt Variable Color in SF Symbols (1080p).mp4"
rm "Session - 10158 temp.vtt"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 4
# Session 10018 - Bring Continuity Camera to your macOS app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10018 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10018 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/subtitles/eng/prog_index.m3u8 -c copy "Session - 10018 temp.vtt"
ffmpeg -i "Session - 10018 temp.mp4" -i "Session - 10018 temp.aac" -i "Session - 10018 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10018 - Bring Continuity Camera to your macOS app (1080p).mp4"
rm "Session - 10018 temp.vtt"
rm "Session - 10018 temp.mp4"
rm "Session - 10018 temp.aac"

# 5
# Session 110373 - Bring your driver to iPad with DriverKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110373 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110373 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110373 temp.vtt"
ffmpeg -i "Session - 110373 temp.mp4" -i "Session - 110373 temp.aac" -i "Session - 110373 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110373 - Bring your driver to iPad with DriverKit (1080p).mp4"
rm "Session - 110373 temp.vtt"
rm "Session - 110373 temp.mp4"
rm "Session - 110373 temp.aac"

# 6
# Session 10128 - Bring your world into augmented reality
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10128 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10128 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/subtitles/eng/prog_index.m3u8 -c copy "Session - 10128 temp.vtt"
ffmpeg -i "Session - 10128 temp.mp4" -i "Session - 10128 temp.aac" -i "Session - 10128 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10128 - Bring your world into augmented reality (1080p).mp4"
rm "Session - 10128 temp.vtt"
rm "Session - 10128 temp.mp4"
rm "Session - 10128 temp.aac"

# 7
# Session 110348 - Build your first app in Swift Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110348 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110348 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/subtitles/eng/prog_index.m3u8 -c copy "Session - 110348 temp.vtt"
ffmpeg -i "Session - 110348 temp.mp4" -i "Session - 110348 temp.aac" -i "Session - 110348 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110348 - Build your first app in Swift Playgrounds (1080p).mp4"
rm "Session - 110348 temp.vtt"
rm "Session - 110348 temp.mp4"
rm "Session - 110348 temp.aac"

# 8
# Session 10025 - Capture machine-readable codes and text with VisionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10025 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10025 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/subtitles/eng/prog_index.m3u8 -c copy "Session - 10025 temp.vtt"
ffmpeg -i "Session - 10025 temp.mp4" -i "Session - 10025 temp.aac" -i "Session - 10025 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10025 - Capture machine-readable codes and text with VisionKit (1080p).mp4"
rm "Session - 10025 temp.vtt"
rm "Session - 10025 temp.mp4"
rm "Session - 10025 temp.aac"

# 9
# Session 10050 - Complications and widgets - Reloaded
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10050 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10050 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/subtitles/eng/prog_index.m3u8 -c copy "Session - 10050 temp.vtt"
ffmpeg -i "Session - 10050 temp.mp4" -i "Session - 10050 temp.aac" -i "Session - 10050 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10050 - Complications and widgets - Reloaded (1080p).mp4"
rm "Session - 10050 temp.vtt"
rm "Session - 10050 temp.mp4"
rm "Session - 10050 temp.aac"

# 10
# Session 110379 - Create a more responsive media app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110379 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110379 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/subtitles/eng/prog_index.m3u8 -c copy "Session - 110379 temp.vtt"
ffmpeg -i "Session - 110379 temp.mp4" -i "Session - 110379 temp.aac" -i "Session - 110379 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110379 - Create a more responsive media app (1080p).mp4"
rm "Session - 110379 temp.vtt"
rm "Session - 110379 temp.mp4"
rm "Session - 110379 temp.aac"

# 11
# Session 10002 - Create macOS or Linux virtual machines
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10002 temp.vtt"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -i "Session - 10002 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10002 - Create macOS or Linux virtual machines (1080p).mp4"
rm "Session - 10002 temp.vtt"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 12
# Session 10127 - Create parametric 3D room scans with RoomPlan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10127 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10127 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/subtitles/eng/prog_index.m3u8 -c copy "Session - 10127 temp.vtt"
ffmpeg -i "Session - 10127 temp.mp4" -i "Session - 10127 temp.aac" -i "Session - 10127 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10127 - Create parametric 3D room scans with RoomPlan (1080p).mp4"
rm "Session - 10127 temp.vtt"
rm "Session - 10127 temp.mp4"
rm "Session - 10127 temp.aac"

# 13
# Session 10144 - Deliver reliable streams with HLS Content Steering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10144 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10144 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10144 temp.vtt"
ffmpeg -i "Session - 10144 temp.mp4" -i "Session - 10144 temp.aac" -i "Session - 10144 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10144 - Deliver reliable streams with HLS Content Steering (1080p).mp4"
rm "Session - 10144 temp.vtt"
rm "Session - 10144 temp.mp4"
rm "Session - 10144 temp.aac"

# 14
# Session 10066 - Discover Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/4/3B036508-C4CA-4DA9-AE0F-83A6E607ADF8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/4/3B036508-C4CA-4DA9-AE0F-83A6E607ADF8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/4/3B036508-C4CA-4DA9-AE0F-83A6E607ADF8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10066 temp.vtt"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -i "Session - 10066 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10066 - Discover Metal 3 (1080p).mp4"
rm "Session - 10066 temp.vtt"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 15
# Session 10032 - Dive into App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10032 temp.vtt"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -i "Session - 10032 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10032 - Dive into App Intents (1080p).mp4"
rm "Session - 10032 temp.vtt"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 16
# Session 10095 - Enhance collaboration experiences with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/subtitles/eng/prog_index.m3u8 -c copy "Session - 10095 temp.vtt"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -i "Session - 10095 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10095 - Enhance collaboration experiences with Messages (1080p).mp4"
rm "Session - 10095 temp.vtt"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 17
# Session 10117 - Enhance voice communication with Push to Talk
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - Enhance voice communication with Push to Talk (1080p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 18
# Session 110347 - Explore more content with MusicKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110347 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110347 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/subtitles/eng/prog_index.m3u8 -c copy "Session - 110347 temp.vtt"
ffmpeg -i "Session - 110347 temp.mp4" -i "Session - 110347 temp.aac" -i "Session - 110347 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110347 - Explore more content with MusicKit (1080p).mp4"
rm "Session - 110347 temp.vtt"
rm "Session - 110347 temp.mp4"
rm "Session - 110347 temp.aac"

# 19
# Session 10016 - Get more mileage out of your app with CarPlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10016 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10016 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10016 temp.vtt"
ffmpeg -i "Session - 10016 temp.mp4" -i "Session - 10016 temp.aac" -i "Session - 10016 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10016 - Get more mileage out of your app with CarPlay (1080p).mp4"
rm "Session - 10016 temp.vtt"
rm "Session - 10016 temp.mp4"
rm "Session - 10016 temp.aac"

# 20
# Session 110374 - Get the most out of Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110374 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110374 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/subtitles/eng/prog_index.m3u8 -c copy "Session - 110374 temp.vtt"
ffmpeg -i "Session - 110374 temp.mp4" -i "Session - 110374 temp.aac" -i "Session - 110374 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110374 - Get the most out of Xcode Cloud (1080p).mp4"
rm "Session - 110374 temp.vtt"
rm "Session - 110374 temp.mp4"
rm "Session - 110374 temp.aac"

# 21
# Session 10135 - Get timely alerts from Bluetooth devices on watchOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10135 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10135 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/subtitles/eng/prog_index.m3u8 -c copy "Session - 10135 temp.vtt"
ffmpeg -i "Session - 10135 temp.mp4" -i "Session - 10135 temp.aac" -i "Session - 10135 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10135 - Get timely alerts from Bluetooth devices on watchOS (1080p).mp4"
rm "Session - 10135 temp.vtt"
rm "Session - 10135 temp.mp4"
rm "Session - 10135 temp.aac"

# 22
# Session 10019 - Get to know Create ML Components
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10019 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10019 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/subtitles/eng/prog_index.m3u8 -c copy "Session - 10019 temp.vtt"
ffmpeg -i "Session - 10019 temp.mp4" -i "Session - 10019 temp.aac" -i "Session - 10019 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10019 - Get to know Create ML Components (1080p).mp4"
rm "Session - 10019 temp.vtt"
rm "Session - 10019 temp.mp4"
rm "Session - 10019 temp.aac"

# 23
# Session 110344 - Get to know Developer Mode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110344 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110344 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 110344 temp.vtt"
ffmpeg -i "Session - 110344 temp.mp4" -i "Session - 110344 temp.aac" -i "Session - 110344 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110344 - Get to know Developer Mode (1080p).mp4"
rm "Session - 110344 temp.vtt"
rm "Session - 110344 temp.mp4"
rm "Session - 110344 temp.aac"

# 24
# Session 10136 - Hello Swift Charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - Hello Swift Charts (1080p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 25
# Session 10170 - Implement App Shortcuts with App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Implement App Shortcuts with App Intents (1080p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 26
# Session 10104 - Load resources faster with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Load resources faster with Metal 3 (1080p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 27
# Session 10006 - Meet Apple Maps Server APIs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10006 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10006 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/subtitles/eng/prog_index.m3u8 -c copy "Session - 10006 temp.vtt"
ffmpeg -i "Session - 10006 temp.mp4" -i "Session - 10006 temp.aac" -i "Session - 10006 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10006 - Meet Apple Maps Server APIs (1080p).mp4"
rm "Session - 10006 temp.vtt"
rm "Session - 10006 temp.mp4"
rm "Session - 10006 temp.aac"

# 28
# Session 10069 - Meet desktop class iPad
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10069 temp.vtt"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -i "Session - 10069 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10069 - Meet desktop class iPad (1080p).mp4"
rm "Session - 10069 temp.vtt"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 29
# Session 10121 - Meet Focus filters
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - Meet Focus filters (1080p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 30
# Session 10092 - Meet passkeys
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10092 temp.vtt"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -i "Session - 10092 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10092 - Meet passkeys (1080p).mp4"
rm "Session - 10092 temp.vtt"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 31
# Session 110355 - Meet Swift Async Algorithms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110355 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110355 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/subtitles/eng/prog_index.m3u8 -c copy "Session - 110355 temp.vtt"
ffmpeg -i "Session - 110355 temp.mp4" -i "Session - 110355 temp.aac" -i "Session - 110355 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110355 - Meet Swift Async Algorithms (1080p).mp4"
rm "Session - 110355 temp.vtt"
rm "Session - 110355 temp.mp4"
rm "Session - 110355 temp.aac"

# 32
# Session 110357 - Meet Swift Regex
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110357 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110357 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/subtitles/eng/prog_index.m3u8 -c copy "Session - 110357 temp.vtt"
ffmpeg -i "Session - 110357 temp.mp4" -i "Session - 110357 temp.aac" -i "Session - 110357 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110357 - Meet Swift Regex (1080p).mp4"
rm "Session - 110357 temp.vtt"
rm "Session - 110357 temp.mp4"
rm "Session - 110357 temp.aac"

# 33
# Session 10003 - Meet WeatherKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10003 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10003 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/subtitles/eng/prog_index.m3u8 -c copy "Session - 10003 temp.vtt"
ffmpeg -i "Session - 10003 temp.mp4" -i "Session - 10003 temp.aac" -i "Session - 10003 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10003 - Meet WeatherKit (1080p).mp4"
rm "Session - 10003 temp.vtt"
rm "Session - 10003 temp.mp4"
rm "Session - 10003 temp.aac"

# 34
# Session 10098 - Meet Web Push for Safari
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10098 temp.vtt"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -i "Session - 10098 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10098 - Meet Web Push for Safari (1080p).mp4"
rm "Session - 10098 temp.vtt"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 35
# Session 10065 - Plug-in and play - Add Apple frameworks to your Unity game projects
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10065 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10065 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/subtitles/eng/prog_index.m3u8 -c copy "Session - 10065 temp.vtt"
ffmpeg -i "Session - 10065 temp.mp4" -i "Session - 10065 temp.aac" -i "Session - 10065 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10065 - Plug-in and play - Add Apple frameworks to your Unity game projects (1080p).mp4"
rm "Session - 10065 temp.vtt"
rm "Session - 10065 temp.mp4"
rm "Session - 10065 temp.aac"

# 36
# Session 10160 - Program Metal in C++ with metal-cpp
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Program Metal in C++ with metal-cpp (1080p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 37
# Session 10131 - Qualities of great AR experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/subtitles/eng/prog_index.m3u8 -c copy "Session - 10131 temp.vtt"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -i "Session - 10131 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10131 - Qualities of great AR experiences (1080p).mp4"
rm "Session - 10131 temp.vtt"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 38
# Session 10054 - The SwiftUI cookbook for navigation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10054 temp.vtt"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -i "Session - 10054 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10054 - The SwiftUI cookbook for navigation (1080p).mp4"
rm "Session - 10054 temp.vtt"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 39
# Session 110350 - Visualize and optimize Swift concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110350 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110350 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/subtitles/eng/prog_index.m3u8 -c copy "Session - 110350 temp.vtt"
ffmpeg -i "Session - 110350 temp.mp4" -i "Session - 110350 temp.aac" -i "Session - 110350 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110350 - Visualize and optimize Swift concurrency (1080p).mp4"
rm "Session - 110350 temp.vtt"
rm "Session - 110350 temp.mp4"
rm "Session - 110350 temp.aac"

# 40
# Session 10097 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10097 temp.vtt"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -i "Session - 10097 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10097 - What's new in App Clips (1080p).mp4"
rm "Session - 10097 temp.vtt"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 41
# Session 10074 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10074 temp.vtt"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -i "Session - 10074 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10074 - What's new in AppKit (1080p).mp4"
rm "Session - 10074 temp.vtt"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 42
# Session 110332 - What's new in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110332 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110332 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/subtitles/eng/prog_index.m3u8 -c copy "Session - 110332 temp.vtt"
ffmpeg -i "Session - 110332 temp.mp4" -i "Session - 110332 temp.aac" -i "Session - 110332 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110332 - What's new in Create ML (1080p).mp4"
rm "Session - 110332 temp.vtt"
rm "Session - 110332 temp.mp4"
rm "Session - 110332 temp.aac"

# 43
# Session 10045 - What's new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10045 temp.vtt"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -i "Session - 10045 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10045 - What's new in managing Apple devices (1080p).mp4"
rm "Session - 10045 temp.vtt"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 44
# Session 10008 - What's new in Nearby Interaction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10008 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10008 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10008 temp.vtt"
ffmpeg -i "Session - 10008 temp.mp4" -i "Session - 10008 temp.aac" -i "Session - 10008 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10008 - What's new in Nearby Interaction (1080p).mp4"
rm "Session - 10008 temp.vtt"
rm "Session - 10008 temp.mp4"
rm "Session - 10008 temp.aac"

# 45
# Session 10048 - What's new in Safari and WebKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10048 temp.vtt"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -i "Session - 10048 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10048 - What's new in Safari and WebKit (1080p).mp4"
rm "Session - 10048 temp.vtt"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 46
# Session 10157 - What's new in SF Symbols 4
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - What's new in SF Symbols 4 (1080p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 47
# Session 10140 - What's new in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - What's new in SharePlay (1080p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 48
# Session 110354 - What's new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110354 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110354 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/subtitles/eng/prog_index.m3u8 -c copy "Session - 110354 temp.vtt"
ffmpeg -i "Session - 110354 temp.mp4" -i "Session - 110354 temp.aac" -i "Session - 110354 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110354 - What's new in Swift (1080p).mp4"
rm "Session - 110354 temp.vtt"
rm "Session - 110354 temp.mp4"
rm "Session - 110354 temp.aac"

# 49
# Session 10052 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10052 temp.vtt"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -i "Session - 10052 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10052 - What's new in SwiftUI (1080p).mp4"
rm "Session - 10052 temp.vtt"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 50
# Session 10068 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10068 temp.vtt"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -i "Session - 10068 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10068 - What's new in UIKit (1080p).mp4"
rm "Session - 10068 temp.vtt"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 51
# Session 110427 - What's new in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110427 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110427 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/subtitles/eng/prog_index.m3u8 -c copy "Session - 110427 temp.vtt"
ffmpeg -i "Session - 110427 temp.mp4" -i "Session - 110427 temp.aac" -i "Session - 110427 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110427 - What's new in Xcode (1080p).mp4"
rm "Session - 110427 temp.vtt"
rm "Session - 110427 temp.mp4"
rm "Session - 110427 temp.aac"

# 52
# Session 10007 - What's new with in-app purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10007 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10007 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/subtitles/eng/prog_index.m3u8 -c copy "Session - 10007 temp.vtt"
ffmpeg -i "Session - 10007 temp.mp4" -i "Session - 10007 temp.aac" -i "Session - 10007 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10007 - What's new with in-app purchase (1080p).mp4"
rm "Session - 10007 temp.vtt"
rm "Session - 10007 temp.mp4"
rm "Session - 10007 temp.aac"

# 53
# Session 10109 - What’s new in notarization for Mac apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - What’s new in notarization for Mac apps (1080p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"
