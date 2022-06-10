# Script to download all the WWDC 22 session videos in the highest 1080p video and audio
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
# WWDC22 Keynote
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/sdr_hvc_1080p_7000/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp.mp4"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp.aac"

ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/zh/zh.m3u8 -c copy "WWDC 2022 Keynote temp zh.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/de/de.m3u8 -c copy "WWDC 2022 Keynote temp de.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/en/en.m3u8 -c copy "WWDC 2022 Keynote temp en.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/fr/fr.m3u8 -c copy "WWDC 2022 Keynote temp fr.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/es/es.m3u8 -c copy "WWDC 2022 Keynote temp es.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/ja/ja.m3u8 -c copy "WWDC 2022 Keynote temp ja.vtt"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/cc/ko/ko.m3u8 -c copy "WWDC 2022 Keynote temp ko.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp atmos.mp4"
ffmpeg -i "WWDC 2022 Keynote temp.mp4" -i "WWDC 2022 Keynote temp atmos.mp4" -i "WWDC 2022 Keynote temp.aac" -i "WWDC 2022 Keynote temp zh.vtt" -i "WWDC 2022 Keynote temp de.vtt" -i "WWDC 2022 Keynote temp en.vtt" -i "WWDC 2022 Keynote temp fr.vtt" -i "WWDC 2022 Keynote temp es.vtt" -i "WWDC 2022 Keynote temp ja.vtt" -i "WWDC 2022 Keynote temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple WWDC 2022 Keynote Address (1080p).mp4"
rm "WWDC 2022 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2022 Keynote temp.mp4" -i "WWDC 2022 Keynote temp.aac" -c copy "Apple WWDC 2022 Keynote Address (1080p).mp4"

rm "WWDC 2022 Keynote temp.mp4"
rm "WWDC 2022 Keynote temp.aac"
rm "WWDC 2022 Keynote temp zh.vtt"
rm "WWDC 2022 Keynote temp de.vtt"
rm "WWDC 2022 Keynote temp en.vtt"
rm "WWDC 2022 Keynote temp fr.vtt"
rm "WWDC 2022 Keynote temp es.vtt"
rm "WWDC 2022 Keynote temp ja.vtt"
rm "WWDC 2022 Keynote temp ko.vtt"

# 2
# WWDC22 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp.aac"

ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/eng/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp en.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/zho/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp zh.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/jpn/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp ja.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/kor/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp ko.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/fra/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp fr.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/deu/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp de.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/subtitles/spa/prog_index.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp es.vtt"

ffmpeg -i "WWDC 2022 Platforms State of the Union temp.mp4" -i "WWDC 2022 Platforms State of the Union temp.aac" -i "WWDC 2022 Platforms State of the Union temp en.vtt" -i "WWDC 2022 Platforms State of the Union temp zh.vtt" -i "WWDC 2022 Platforms State of the Union temp ja.vtt" -i "WWDC 2022 Platforms State of the Union temp ko.vtt" -i "WWDC 2022 Platforms State of the Union temp fr.vtt" -i "WWDC 2022 Platforms State of the Union temp de.vtt" -i "WWDC 2022 Platforms State of the Union temp es.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng -map 3 -c:s:1 mov_text -metadata:s:s:1 language=zho -map 4 -c:s:2 mov_text -metadata:s:s:2 language=jpn -map 5 -c:s:3 mov_text -metadata:s:s:3 language=kor -map 6 -c:s:4 mov_text -metadata:s:s:4 language=fra -map 7 -c:s:5 mov_text -metadata:s:s:5 language=deu -map 8 -c:s:6 mov_text -metadata:s:s:6 language=spa "Apple WWDC 2022 Platforms State of the Union (1080p).mp4"

rm "WWDC 2022 Platforms State of the Union temp.mp4"
rm "WWDC 2022 Platforms State of the Union temp.aac"
rm "WWDC 2022 Platforms State of the Union temp en.vtt"
rm "WWDC 2022 Platforms State of the Union temp zh.vtt"
rm "WWDC 2022 Platforms State of the Union temp ja.vtt"
rm "WWDC 2022 Platforms State of the Union temp ko.vtt"
rm "WWDC 2022 Platforms State of the Union temp fr.vtt"
rm "WWDC 2022 Platforms State of the Union temp de.vtt"
rm "WWDC 2022 Platforms State of the Union temp es.vtt"

# 3
# 2022 Apple Design Awards
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "2022 Apple Design Awards temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "2022 Apple Design Awards temp.aac"

ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/subtitles/eng/prog_index.m3u8 -c copy "2022 Apple Design Awards temp en.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/subtitles/kor/prog_index.m3u8 -c copy "2022 Apple Design Awards temp ko.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/subtitles/zho/prog_index.m3u8 -c copy "2022 Apple Design Awards temp zh.vtt"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/103/3/AFC3701A-AC3C-4F5D-9AB3-1CDE42CB5763/subtitles/jpn/prog_index.m3u8 -c copy "2022 Apple Design Awards temp ja.vtt"

ffmpeg -i "2022 Apple Design Awards temp.mp4" -i "2022 Apple Design Awards temp.aac" -i "2022 Apple Design Awards temp en.vtt" -i "2022 Apple Design Awards temp ko.vtt" -i "2022 Apple Design Awards temp zh.vtt" -i "2022 Apple Design Awards temp ja.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng -map 3 -c:s:1 mov_text -metadata:s:s:1 language=kor -map 4 -c:s:2 mov_text -metadata:s:s:2 language=zho -map 5 -c:s:3 mov_text -metadata:s:s:3 language=jpn "2022 Apple Design Awards (1080p).mp4"

rm "2022 Apple Design Awards temp.mp4"
rm "2022 Apple Design Awards temp.aac"
rm "2022 Apple Design Awards temp en.vtt"
rm "2022 Apple Design Awards temp ko.vtt"
rm "2022 Apple Design Awards temp zh.vtt"
rm "2022 Apple Design Awards temp ja.vtt"

# 4
# Session 10063 - Accelerate machine learning with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10063 temp.vtt"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -i "Session - 10063 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10063 - Accelerate machine learning with Metal (1080p).mp4"
rm "Session - 10063 temp.vtt"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 5
# Session 10151 - Add accessibility to your Unity games
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10151 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10151 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10151/5/3F44347B-F0CF-4DFC-89A8-C801EE456545/subtitles/eng/prog_index.m3u8 -c copy "Session - 10151 temp.vtt"
ffmpeg -i "Session - 10151 temp.mp4" -i "Session - 10151 temp.aac" -i "Session - 10151 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10151 - Add accessibility to your Unity games (1080p).mp4"
rm "Session - 10151 temp.vtt"
rm "Session - 10151 temp.mp4"
rm "Session - 10151 temp.aac"

# 6
# Session 10026 - Add Live Text interaction to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10026 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10026 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10026 temp.vtt"
ffmpeg -i "Session - 10026 temp.mp4" -i "Session - 10026 temp.aac" -i "Session - 10026 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10026 - Add Live Text interaction to your app (1080p).mp4"
rm "Session - 10026 temp.vtt"
rm "Session - 10026 temp.mp4"
rm "Session - 10026 temp.aac"

# 7
# Session 10094 - Add Shared with You to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Add Shared with You to your app (1080p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 8
# Session 10046 - Adopt declarative device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10046 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10046 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/subtitles/eng/prog_index.m3u8 -c copy "Session - 10046 temp.vtt"
ffmpeg -i "Session - 10046 temp.mp4" -i "Session - 10046 temp.aac" -i "Session - 10046 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10046 - Adopt declarative device management (1080p).mp4"
rm "Session - 10046 temp.vtt"
rm "Session - 10046 temp.mp4"
rm "Session - 10046 temp.aac"

# 9
# Session 10071 - Adopt desktop-class editing interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10071 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10071 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10071/4/A7198C26-97D7-49C3-8FE7-907808F342DE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10071 temp.vtt"
ffmpeg -i "Session - 10071 temp.mp4" -i "Session - 10071 temp.aac" -i "Session - 10071 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10071 - Adopt desktop-class editing interactions (1080p).mp4"
rm "Session - 10071 temp.vtt"
rm "Session - 10071 temp.mp4"
rm "Session - 10071 temp.aac"

# 10
# Session 10158 - Adopt Variable Color in SF Symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10158/4/94078977-F8B3-4097-A94F-9C4931D9A1FE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10158 temp.vtt"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -i "Session - 10158 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10158 - Adopt Variable Color in SF Symbols (1080p).mp4"
rm "Session - 10158 temp.vtt"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 11
# Session 110361 - Author fast and reliable tests for Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110361 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110361 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/subtitles/eng/prog_index.m3u8 -c copy "Session - 110361 temp.vtt"
ffmpeg -i "Session - 110361 temp.mp4" -i "Session - 110361 temp.aac" -i "Session - 110361 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110361 - Author fast and reliable tests for Xcode Cloud (1080p).mp4"
rm "Session - 110361 temp.vtt"
rm "Session - 110361 temp.mp4"
rm "Session - 110361 temp.aac"

# 12
# Session 10103 - Boost performance with MetalFX Upscaling
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10103/7/0DA14AB6-97A2-4E95-A960-E27CBC5E5012/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10103/7/0DA14AB6-97A2-4E95-A960-E27CBC5E5012/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10103/7/0DA14AB6-97A2-4E95-A960-E27CBC5E5012/subtitles/eng/prog_index.m3u8 -c copy "Session - 10103 temp.vtt"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -i "Session - 10103 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10103 - Boost performance with MetalFX Upscaling (1080p).mp4"
rm "Session - 10103 temp.vtt"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 13
# Session 10018 - Bring Continuity Camera to your macOS app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10018 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10018 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10018/6/1C7686E9-BB02-4797-B131-7FA5BD1B6133/subtitles/eng/prog_index.m3u8 -c copy "Session - 10018 temp.vtt"
ffmpeg -i "Session - 10018 temp.mp4" -i "Session - 10018 temp.aac" -i "Session - 10018 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10018 - Bring Continuity Camera to your macOS app (1080p).mp4"
rm "Session - 10018 temp.vtt"
rm "Session - 10018 temp.mp4"
rm "Session - 10018 temp.aac"

# 14
# Session 10061 - Bring multiple windows to your SwiftUI app 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - Bring multiple windows to your SwiftUI app  (1080p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 15
# Session 110373 - Bring your driver to iPad with DriverKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110373 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110373 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110373/5/9E0B243C-9E0C-4E4E-91FF-AACD903146B2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110373 temp.vtt"
ffmpeg -i "Session - 110373 temp.mp4" -i "Session - 110373 temp.aac" -i "Session - 110373 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110373 - Bring your driver to iPad with DriverKit (1080p).mp4"
rm "Session - 110373 temp.vtt"
rm "Session - 110373 temp.mp4"
rm "Session - 110373 temp.aac"

# 16
# Session 10076 - Bring your iOS app to the Mac
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/subtitles/eng/prog_index.m3u8 -c copy "Session - 10076 temp.vtt"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -i "Session - 10076 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10076 - Bring your iOS app to the Mac (1080p).mp4"
rm "Session - 10076 temp.vtt"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 17
# Session 10128 - Bring your world into augmented reality
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10128 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10128 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10128/3/A48642CC-4EA4-478D-BC86-9AD9FE213885/subtitles/eng/prog_index.m3u8 -c copy "Session - 10128 temp.vtt"
ffmpeg -i "Session - 10128 temp.mp4" -i "Session - 10128 temp.aac" -i "Session - 10128 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10128 - Bring your world into augmented reality (1080p).mp4"
rm "Session - 10128 temp.vtt"
rm "Session - 10128 temp.mp4"
rm "Session - 10128 temp.aac"

# 18
# Session 10070 - Build a desktop-class iPad app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Build a desktop-class iPad app (1080p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 19
# Session 10133 - Build a productivity app for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10133 temp.vtt"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -i "Session - 10133 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10133 - Build a productivity app for Apple Watch (1080p).mp4"
rm "Session - 10133 temp.vtt"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 20
# Session 110339 - Build device-to-device interactions with Network Framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110339 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110339 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 110339 temp.vtt"
ffmpeg -i "Session - 110339 temp.mp4" -i "Session - 110339 temp.aac" -i "Session - 110339 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110339 - Build device-to-device interactions with Network Framework (1080p).mp4"
rm "Session - 110339 temp.vtt"
rm "Session - 110339 temp.mp4"
rm "Session - 110339 temp.aac"

# 21
# Session 10110 - Build global apps - Localization by example
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Build global apps - Localization by example (1080p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 22
# Session 110348 - Build your first app in Swift Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110348 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110348 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110348/5/EF06F7AC-5379-4AFF-A0AB-FD1413B78098/subtitles/eng/prog_index.m3u8 -c copy "Session - 110348 temp.vtt"
ffmpeg -i "Session - 110348 temp.mp4" -i "Session - 110348 temp.aac" -i "Session - 110348 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110348 - Build your first app in Swift Playgrounds (1080p).mp4"
rm "Session - 110348 temp.vtt"
rm "Session - 110348 temp.mp4"
rm "Session - 110348 temp.aac"

# 23
# Session 10025 - Capture machine-readable codes and text with VisionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10025 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10025 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10025/4/5DB691AA-D403-4394-885D-0F1F18772715/subtitles/eng/prog_index.m3u8 -c copy "Session - 10025 temp.vtt"
ffmpeg -i "Session - 10025 temp.mp4" -i "Session - 10025 temp.aac" -i "Session - 10025 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10025 - Capture machine-readable codes and text with VisionKit (1080p).mp4"
rm "Session - 10025 temp.vtt"
rm "Session - 10025 temp.mp4"
rm "Session - 10025 temp.aac"

# 24
# Session 10050 - Complications and widgets - Reloaded
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10050 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10050 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10050/5/358B551F-283C-4CD1-8172-DAC014727969/subtitles/eng/prog_index.m3u8 -c copy "Session - 10050 temp.vtt"
ffmpeg -i "Session - 10050 temp.mp4" -i "Session - 10050 temp.aac" -i "Session - 10050 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10050 - Complications and widgets - Reloaded (1080p).mp4"
rm "Session - 10050 temp.vtt"
rm "Session - 10050 temp.mp4"
rm "Session - 10050 temp.aac"

# 25
# Session 10020 - Compose advanced models with Create ML Components
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10020 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10020 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10020 temp.vtt"
ffmpeg -i "Session - 10020 temp.mp4" -i "Session - 10020 temp.aac" -i "Session - 10020 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10020 - Compose advanced models with Create ML Components (1080p).mp4"
rm "Session - 10020 temp.vtt"
rm "Session - 10020 temp.mp4"
rm "Session - 10020 temp.aac"

# 26
# Session 10056 - Compose custom layouts with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10056 temp.vtt"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -i "Session - 10056 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10056 - Compose custom layouts with SwiftUI (1080p).mp4"
rm "Session - 10056 temp.vtt"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 27
# Session 10147 - Create a great video playback experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Create a great video playback experience (1080p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 28
# Session 110379 - Create a more responsive media app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110379 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110379 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110379/3/072CE81E-54AA-400F-82CC-3667BB3549E1/subtitles/eng/prog_index.m3u8 -c copy "Session - 110379 temp.vtt"
ffmpeg -i "Session - 110379 temp.mp4" -i "Session - 110379 temp.aac" -i "Session - 110379 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110379 - Create a more responsive media app (1080p).mp4"
rm "Session - 110379 temp.vtt"
rm "Session - 110379 temp.mp4"
rm "Session - 110379 temp.aac"

# 29
# Session 10152 - Create accessible Single App Mode experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/subtitles/eng/prog_index.m3u8 -c copy "Session - 10152 temp.vtt"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -i "Session - 10152 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10152 - Create accessible Single App Mode experiences (1080p).mp4"
rm "Session - 10152 temp.vtt"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 30
# Session 10022 - Create camera extensions with Core Media IO
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10022 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10022 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10022 temp.vtt"
ffmpeg -i "Session - 10022 temp.mp4" -i "Session - 10022 temp.aac" -i "Session - 10022 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10022 - Create camera extensions with Core Media IO (1080p).mp4"
rm "Session - 10022 temp.vtt"
rm "Session - 10022 temp.mp4"
rm "Session - 10022 temp.aac"

# 31
# Session 10028 - Create custom catalogs at scale with ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10028 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10028 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10028 temp.vtt"
ffmpeg -i "Session - 10028 temp.mp4" -i "Session - 10028 temp.aac" -i "Session - 10028 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10028 - Create custom catalogs at scale with ShazamKit (1080p).mp4"
rm "Session - 10028 temp.vtt"
rm "Session - 10028 temp.mp4"
rm "Session - 10028 temp.aac"

# 32
# Session 110349 - Create engaging content for Swift Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110349 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110349 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/subtitles/eng/prog_index.m3u8 -c copy "Session - 110349 temp.vtt"
ffmpeg -i "Session - 110349 temp.mp4" -i "Session - 110349 temp.aac" -i "Session - 110349 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110349 - Create engaging content for Swift Playgrounds (1080p).mp4"
rm "Session - 110349 temp.vtt"
rm "Session - 110349 temp.mp4"
rm "Session - 110349 temp.aac"

# 33
# Session 10002 - Create macOS or Linux virtual machines
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10002/5/F229C2EC-A6BC-4671-91A0-65FBC9D71DDF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10002 temp.vtt"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -i "Session - 10002 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10002 - Create macOS or Linux virtual machines (1080p).mp4"
rm "Session - 10002 temp.vtt"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 34
# Session 10127 - Create parametric 3D room scans with RoomPlan
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10127 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10127 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10127/3/C6A70FDB-501E-42BB-A50E-9794D4050C07/subtitles/eng/prog_index.m3u8 -c copy "Session - 10127 temp.vtt"
ffmpeg -i "Session - 10127 temp.mp4" -i "Session - 10127 temp.aac" -i "Session - 10127 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10127 - Create parametric 3D room scans with RoomPlan (1080p).mp4"
rm "Session - 10127 temp.vtt"
rm "Session - 10127 temp.mp4"
rm "Session - 10127 temp.aac"

# 35
# Session 10100 - Create Safari Web Inspector Extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Create Safari Web Inspector Extensions (1080p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 36
# Session 110401 - Create Swift Package plugins
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110401 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110401 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/subtitles/eng/prog_index.m3u8 -c copy "Session - 110401 temp.vtt"
ffmpeg -i "Session - 110401 temp.mp4" -i "Session - 110401 temp.aac" -i "Session - 110401 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110401 - Create Swift Package plugins (1080p).mp4"
rm "Session - 110401 temp.vtt"
rm "Session - 110401 temp.mp4"
rm "Session - 110401 temp.aac"

# 37
# Session 10167 - Create your Privacy Nutrition Label 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10167 temp.vtt"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -i "Session - 10167 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10167 - Create your Privacy Nutrition Label  (1080p).mp4"
rm "Session - 10167 temp.vtt"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 38
# Session 110370 - Debug Swift debugging with LLDB
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110370 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110370 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/subtitles/eng/prog_index.m3u8 -c copy "Session - 110370 temp.vtt"
ffmpeg -i "Session - 110370 temp.mp4" -i "Session - 110370 temp.aac" -i "Session - 110370 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110370 - Debug Swift debugging with LLDB (1080p).mp4"
rm "Session - 110370 temp.vtt"
rm "Session - 110370 temp.mp4"
rm "Session - 110370 temp.aac"

# 39
# Session 110375 - Deep dive into Xcode Cloud for teams
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110375 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110375 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/subtitles/eng/prog_index.m3u8 -c copy "Session - 110375 temp.vtt"
ffmpeg -i "Session - 110375 temp.mp4" -i "Session - 110375 temp.aac" -i "Session - 110375 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110375 - Deep dive into Xcode Cloud for teams (1080p).mp4"
rm "Session - 110375 temp.vtt"
rm "Session - 110375 temp.mp4"
rm "Session - 110375 temp.aac"

# 40
# Session 10144 - Deliver reliable streams with HLS Content Steering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10144 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10144 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10144/3/B295073D-367F-4EAB-A65F-6FBB86ECDD6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10144 temp.vtt"
ffmpeg -i "Session - 10144 temp.mp4" -i "Session - 10144 temp.aac" -i "Session - 10144 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10144 - Deliver reliable streams with HLS Content Steering (1080p).mp4"
rm "Session - 10144 temp.vtt"
rm "Session - 10144 temp.mp4"
rm "Session - 10144 temp.aac"

# 41
# Session 110364 - Demystify parallelization in Xcode builds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110364 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110364 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 110364 temp.vtt"
ffmpeg -i "Session - 110364 temp.mp4" -i "Session - 110364 temp.aac" -i "Session - 110364 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110364 - Demystify parallelization in Xcode builds (1080p).mp4"
rm "Session - 110364 temp.vtt"
rm "Session - 110364 temp.mp4"
rm "Session - 110364 temp.aac"

# 42
# Session 110340 - Design an effective chart
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110340 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110340 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110340 temp.vtt"
ffmpeg -i "Session - 110340 temp.mp4" -i "Session - 110340 temp.aac" -i "Session - 110340 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110340 - Design an effective chart (1080p).mp4"
rm "Session - 110340 temp.vtt"
rm "Session - 110340 temp.mp4"
rm "Session - 110340 temp.aac"

# 43
# Session 110342 - Design app experiences with charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110342 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110342 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 110342 temp.vtt"
ffmpeg -i "Session - 110342 temp.mp4" -i "Session - 110342 temp.aac" -i "Session - 110342 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110342 - Design app experiences with charts (1080p).mp4"
rm "Session - 110342 temp.vtt"
rm "Session - 110342 temp.mp4"
rm "Session - 110342 temp.aac"

# 44
# Session 10169 - Design App Shortcuts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10169 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10169 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10169 temp.vtt"
ffmpeg -i "Session - 10169 temp.mp4" -i "Session - 10169 temp.aac" -i "Session - 10169 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10169 - Design App Shortcuts (1080p).mp4"
rm "Session - 10169 temp.vtt"
rm "Session - 10169 temp.mp4"
rm "Session - 10169 temp.aac"

# 45
# Session 10034 - Design for Arabic
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10034 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10034 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/subtitles/eng/prog_index.m3u8 -c copy "Session - 10034 temp.vtt"
ffmpeg -i "Session - 10034 temp.mp4" -i "Session - 10034 temp.aac" -i "Session - 10034 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10034 - Design for Arabic (1080p).mp4"
rm "Session - 10034 temp.vtt"
rm "Session - 10034 temp.mp4"
rm "Session - 10034 temp.aac"

# 46
# Session 110441 - Design for Arabic · صمّم بالعربي
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110441 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110441 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/subtitles/eng/prog_index.m3u8 -c copy "Session - 110441 temp.vtt"
ffmpeg -i "Session - 110441 temp.mp4" -i "Session - 110441 temp.aac" -i "Session - 110441 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110441 - Design for Arabic · صمّم بالعربي (1080p).mp4"
rm "Session - 110441 temp.vtt"
rm "Session - 110441 temp.mp4"
rm "Session - 110441 temp.aac"

# 47
# Session 10015 - Design for Collaboration with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/subtitles/eng/prog_index.m3u8 -c copy "Session - 10015 temp.vtt"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -i "Session - 10015 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10015 - Design for Collaboration with Messages (1080p).mp4"
rm "Session - 10015 temp.vtt"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 48
# Session 110353 - Design protocol interfaces in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110353 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110353 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110353 temp.vtt"
ffmpeg -i "Session - 110353 temp.mp4" -i "Session - 110353 temp.aac" -i "Session - 110353 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110353 - Design protocol interfaces in Swift (1080p).mp4"
rm "Session - 110353 temp.vtt"
rm "Session - 110353 temp.mp4"
rm "Session - 110353 temp.aac"

# 49
# Session 110429 - Discover advancements in iOS camera capture - Depth, focus, and multitasking
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110429 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110429 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/subtitles/eng/prog_index.m3u8 -c copy "Session - 110429 temp.vtt"
ffmpeg -i "Session - 110429 temp.mp4" -i "Session - 110429 temp.aac" -i "Session - 110429 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110429 - Discover advancements in iOS camera capture - Depth, focus, and multitasking (1080p).mp4"
rm "Session - 110429 temp.vtt"
rm "Session - 110429 temp.mp4"
rm "Session - 110429 temp.aac"

# 50
# Session 10126 - Discover ARKit 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10126 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10126 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/subtitles/eng/prog_index.m3u8 -c copy "Session - 10126 temp.vtt"
ffmpeg -i "Session - 10126 temp.mp4" -i "Session - 10126 temp.aac" -i "Session - 10126 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10126 - Discover ARKit 6 (1080p).mp4"
rm "Session - 10126 temp.vtt"
rm "Session - 10126 temp.mp4"
rm "Session - 10126 temp.aac"

# 51
# Session 10044 - Discover Benchmarks in App Analytics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10044 temp.vtt"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -i "Session - 10044 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10044 - Discover Benchmarks in App Analytics (1080p).mp4"
rm "Session - 10044 temp.vtt"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 52
# Session 10143 - Discover Managed Device Attestation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - Discover Managed Device Attestation (1080p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 53
# Session 10066 - Discover Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/5/E8711A5F-B118-4630-BC5C-BEDA558FE370/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/5/E8711A5F-B118-4630-BC5C-BEDA558FE370/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10066/5/E8711A5F-B118-4630-BC5C-BEDA558FE370/subtitles/eng/prog_index.m3u8 -c copy "Session - 10066 temp.vtt"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -i "Session - 10066 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10066 - Discover Metal 3 (1080p).mp4"
rm "Session - 10066 temp.vtt"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 54
# Session 10132 - Discover PhotoKit change history
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/subtitles/eng/prog_index.m3u8 -c copy "Session - 10132 temp.vtt"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -i "Session - 10132 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10132 - Discover PhotoKit change history (1080p).mp4"
rm "Session - 10132 temp.vtt"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"

# 55
# Session 10053 - Discover Sign in with Apple at Work & School
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/subtitles/eng/prog_index.m3u8 -c copy "Session - 10053 temp.vtt"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -i "Session - 10053 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10053 - Discover Sign in with Apple at Work & School (1080p).mp4"
rm "Session - 10053 temp.vtt"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 56
# Session 110380 - Display ads and interstitials in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110380 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110380 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/subtitles/eng/prog_index.m3u8 -c copy "Session - 110380 temp.vtt"
ffmpeg -i "Session - 110380 temp.mp4" -i "Session - 110380 temp.aac" -i "Session - 110380 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110380 - Display ads and interstitials in SharePlay (1080p).mp4"
rm "Session - 110380 temp.vtt"
rm "Session - 110380 temp.mp4"
rm "Session - 110380 temp.aac"

# 57
# Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/sdr_hvc_1080p_7000/prog_index.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/cc/en/en.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI (1080p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 57b HDR
# Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/hdr10_hvc_1080p_7000/prog_index.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/cc/en/en.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI (1080p HDR).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 58
# Session 110565 - Display HDR video in EDR with AVFoundation and Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110565 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110565 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/subtitles/eng/prog_index.m3u8 -c copy "Session - 110565 temp.vtt"
ffmpeg -i "Session - 110565 temp.mp4" -i "Session - 110565 temp.aac" -i "Session - 110565 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110565 - Display HDR video in EDR with AVFoundation and Metal (1080p).mp4"
rm "Session - 110565 temp.vtt"
rm "Session - 110565 temp.mp4"
rm "Session - 110565 temp.aac"

# 59
# Session 10032 - Dive into App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10032/6/69FD8F9D-5C29-4114-9C81-DF1ACC4B4BCA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10032 temp.vtt"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -i "Session - 10032 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10032 - Dive into App Intents (1080p).mp4"
rm "Session - 10032 temp.vtt"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 60
# Session 10142 - Efficiency awaits - Background tasks in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10142 temp.vtt"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -i "Session - 10142 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10142 - Efficiency awaits - Background tasks in SwiftUI (1080p).mp4"
rm "Session - 10142 temp.vtt"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 61
# Session 110351 - Eliminate data races using Swift Concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110351 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110351 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/subtitles/eng/prog_index.m3u8 -c copy "Session - 110351 temp.vtt"
ffmpeg -i "Session - 110351 temp.mp4" -i "Session - 110351 temp.aac" -i "Session - 110351 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110351 - Eliminate data races using Swift Concurrency (1080p).mp4"
rm "Session - 110351 temp.vtt"
rm "Session - 110351 temp.mp4"
rm "Session - 110351 temp.aac"

# 62
# Session 110352 - Embrace Swift generics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110352 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110352 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110352 temp.vtt"
ffmpeg -i "Session - 110352 temp.mp4" -i "Session - 110352 temp.aac" -i "Session - 110352 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110352 - Embrace Swift generics (1080p).mp4"
rm "Session - 110352 temp.vtt"
rm "Session - 110352 temp.mp4"
rm "Session - 110352 temp.aac"

# 63
# Session 10095 - Enhance collaboration experiences with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10095/5/DB09B90A-7453-4E3F-90E9-4AB7322DD253/subtitles/eng/prog_index.m3u8 -c copy "Session - 10095 temp.vtt"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -i "Session - 10095 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10095 - Enhance collaboration experiences with Messages (1080p).mp4"
rm "Session - 10095 temp.vtt"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 64
# Session 10117 - Enhance voice communication with Push to Talk
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10117/3/BC2A00F7-7836-4346-B4DD-143192926205/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - Enhance voice communication with Push to Talk (1080p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 65
# Session 10122 - Enhance your Sign in with Apple experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Enhance your Sign in with Apple experience (1080p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 66
# Session 10120 - Evolve your Core Data schema
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10120 temp.vtt"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -i "Session - 10120 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10120 - Evolve your Core Data schema (1080p).mp4"
rm "Session - 10120 temp.vtt"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 67
# Session 10166 - Explore App Tracking Transparency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Explore App Tracking Transparency (1080p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 68
# Session 110335 - Explore Apple Business Essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110335 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110335 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/subtitles/eng/prog_index.m3u8 -c copy "Session - 110335 temp.vtt"
ffmpeg -i "Session - 110335 temp.mp4" -i "Session - 110335 temp.aac" -i "Session - 110335 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110335 - Explore Apple Business Essentials (1080p).mp4"
rm "Session - 110335 temp.vtt"
rm "Session - 110335 temp.mp4"
rm "Session - 110335 temp.aac"

# 69
# Session 10113 - Explore EDR on iOS
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/sdr_hvc_1080p_7000/prog_index.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/cc/en/en.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Explore EDR on iOS (1080p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 69b HDR
# Session 10113 - Explore EDR on iOS
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/hdr10_hvc_1080p_7000/prog_index.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/cc/en/en.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Explore EDR on iOS (1080p HDR).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 70
# Session 10040 - Explore in-app purchase integration and migration
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/subtitles/eng/prog_index.m3u8 -c copy "Session - 10040 temp.vtt"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -i "Session - 10040 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10040 - Explore in-app purchase integration and migration (1080p).mp4"
rm "Session - 10040 temp.vtt"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 71
# Session 110338 - Explore media metadata publishing and playback interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110338 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110338 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/subtitles/eng/prog_index.m3u8 -c copy "Session - 110338 temp.vtt"
ffmpeg -i "Session - 110338 temp.mp4" -i "Session - 110338 temp.aac" -i "Session - 110338 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110338 - Explore media metadata publishing and playback interactions (1080p).mp4"
rm "Session - 110338 temp.vtt"
rm "Session - 110338 temp.mp4"
rm "Session - 110338 temp.aac"

# 72
# Session 110347 - Explore more content with MusicKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110347 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110347 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110347/3/9A5697EE-37FC-497A-AD9F-5033E026866E/subtitles/eng/prog_index.m3u8 -c copy "Session - 110347 temp.vtt"
ffmpeg -i "Session - 110347 temp.mp4" -i "Session - 110347 temp.aac" -i "Session - 110347 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110347 - Explore more content with MusicKit (1080p).mp4"
rm "Session - 110347 temp.vtt"
rm "Session - 110347 temp.mp4"
rm "Session - 110347 temp.aac"

# 73
# Session 10001 - Explore navigation design for iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10001 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10001 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10001 temp.vtt"
ffmpeg -i "Session - 10001 temp.mp4" -i "Session - 10001 temp.aac" -i "Session - 10001 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10001 - Explore navigation design for iOS (1080p).mp4"
rm "Session - 10001 temp.vtt"
rm "Session - 10001 temp.mp4"
rm "Session - 10001 temp.aac"

# 74
# Session 110341 - Explore SMS message filters
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110341 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110341 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/subtitles/eng/prog_index.m3u8 -c copy "Session - 110341 temp.vtt"
ffmpeg -i "Session - 110341 temp.mp4" -i "Session - 110341 temp.aac" -i "Session - 110341 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110341 - Explore SMS message filters (1080p).mp4"
rm "Session - 110341 temp.vtt"
rm "Session - 110341 temp.mp4"
rm "Session - 110341 temp.aac"

# 75
# Session 10017 - Explore the machine learning development experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10017 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10017 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/subtitles/eng/prog_index.m3u8 -c copy "Session - 10017 temp.vtt"
ffmpeg -i "Session - 10017 temp.mp4" -i "Session - 10017 temp.aac" -i "Session - 10017 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10017 - Explore the machine learning development experience (1080p).mp4"
rm "Session - 10017 temp.vtt"
rm "Session - 10017 temp.mp4"
rm "Session - 10017 temp.aac"

# 76
# Session 10141 - Explore USD tools and rendering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/subtitles/eng/prog_index.m3u8 -c copy "Session - 10141 temp.vtt"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -i "Session - 10141 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10141 - Explore USD tools and rendering (1080p).mp4"
rm "Session - 10141 temp.vtt"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 77
# Session 10107 - Get it right (to left)
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Get it right (to left) (1080p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 78
# Session 10016 - Get more mileage out of your app with CarPlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10016 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10016 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10016/4/4A58011C-EB98-4462-A8F7-8EDB8A69BBE7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10016 temp.vtt"
ffmpeg -i "Session - 10016 temp.mp4" -i "Session - 10016 temp.aac" -i "Session - 10016 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10016 - Get more mileage out of your app with CarPlay (1080p).mp4"
rm "Session - 10016 temp.vtt"
rm "Session - 10016 temp.mp4"
rm "Session - 10016 temp.aac"

# 79
# Session 110374 - Get the most out of Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110374 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110374 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110374/5/69623440-5AFC-4AFB-9641-DBC4EEF46379/subtitles/eng/prog_index.m3u8 -c copy "Session - 110374 temp.vtt"
ffmpeg -i "Session - 110374 temp.mp4" -i "Session - 110374 temp.aac" -i "Session - 110374 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110374 - Get the most out of Xcode Cloud (1080p).mp4"
rm "Session - 110374 temp.vtt"
rm "Session - 110374 temp.mp4"
rm "Session - 110374 temp.aac"

# 80
# Session 10135 - Get timely alerts from Bluetooth devices on watchOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10135 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10135 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10135/4/B6405ED7-98EE-473C-8174-144D5E72CA02/subtitles/eng/prog_index.m3u8 -c copy "Session - 10135 temp.vtt"
ffmpeg -i "Session - 10135 temp.mp4" -i "Session - 10135 temp.aac" -i "Session - 10135 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10135 - Get timely alerts from Bluetooth devices on watchOS (1080p).mp4"
rm "Session - 10135 temp.vtt"
rm "Session - 10135 temp.mp4"
rm "Session - 10135 temp.aac"

# 81
# Session 10019 - Get to know Create ML Components
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10019 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10019 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10019/4/CA2236CA-EAD0-454F-8556-FA583BA70590/subtitles/eng/prog_index.m3u8 -c copy "Session - 10019 temp.vtt"
ffmpeg -i "Session - 10019 temp.mp4" -i "Session - 10019 temp.aac" -i "Session - 10019 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10019 - Get to know Create ML Components (1080p).mp4"
rm "Session - 10019 temp.vtt"
rm "Session - 10019 temp.mp4"
rm "Session - 10019 temp.aac"

# 82
# Session 110344 - Get to know Developer Mode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110344 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110344 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110344/4/3BE29FF5-6545-4560-A014-79CD116180E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 110344 temp.vtt"
ffmpeg -i "Session - 110344 temp.mp4" -i "Session - 110344 temp.aac" -i "Session - 110344 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110344 - Get to know Developer Mode (1080p).mp4"
rm "Session - 110344 temp.vtt"
rm "Session - 110344 temp.mp4"
rm "Session - 110344 temp.aac"

# 83
# Session 10101 - Go bindless with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Go bindless with Metal 3 (1080p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 84
# Session 10051 - Go further with Complications in WidgetKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10051 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10051 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/subtitles/eng/prog_index.m3u8 -c copy "Session - 10051 temp.vtt"
ffmpeg -i "Session - 10051 temp.mp4" -i "Session - 10051 temp.aac" -i "Session - 10051 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10051 - Go further with Complications in WidgetKit (1080p).mp4"
rm "Session - 10051 temp.vtt"
rm "Session - 10051 temp.mp4"
rm "Session - 10051 temp.aac"

# 85
# Session 10136 - Hello Swift Charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10136/4/ED1436D1-9197-468B-8B26-5DAD9AEC3720/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - Hello Swift Charts (1080p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 86
# Session 10170 - Implement App Shortcuts with App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10170/3/30D42D9F-AF97-4B32-B470-C0A9B4D8C279/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Implement App Shortcuts with App Intents (1080p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 87
# Session 110404 - Implement proactive in-app purchase restore
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110404 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110404 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/subtitles/eng/prog_index.m3u8 -c copy "Session - 110404 temp.vtt"
ffmpeg -i "Session - 110404 temp.mp4" -i "Session - 110404 temp.aac" -i "Session - 110404 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110404 - Implement proactive in-app purchase restore (1080p).mp4"
rm "Session - 110404 temp.vtt"
rm "Session - 110404 temp.mp4"
rm "Session - 110404 temp.aac"

# 88
# Session 110363 - Improve app size and runtime performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110363 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110363 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/subtitles/eng/prog_index.m3u8 -c copy "Session - 110363 temp.vtt"
ffmpeg -i "Session - 110363 temp.mp4" -i "Session - 110363 temp.aac" -i "Session - 110363 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110363 - Improve app size and runtime performance (1080p).mp4"
rm "Session - 110363 temp.vtt"
rm "Session - 110363 temp.mp4"
rm "Session - 110363 temp.aac"

# 89
# Session 10079 - Improve DNS security for apps and servers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10079 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10079 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10079 temp.vtt"
ffmpeg -i "Session - 10079 temp.mp4" -i "Session - 10079 temp.aac" -i "Session - 10079 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10079 - Improve DNS security for apps and servers (1080p).mp4"
rm "Session - 10079 temp.vtt"
rm "Session - 10079 temp.mp4"
rm "Session - 10079 temp.aac"

# 90
# Session 110369 - Improve the discoverability of your Swift-DocC content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110369 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110369 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/subtitles/eng/prog_index.m3u8 -c copy "Session - 110369 temp.vtt"
ffmpeg -i "Session - 110369 temp.mp4" -i "Session - 110369 temp.aac" -i "Session - 110369 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110369 - Improve the discoverability of your Swift-DocC content (1080p).mp4"
rm "Session - 110369 temp.vtt"
rm "Session - 110369 temp.mp4"
rm "Session - 110369 temp.aac"

# 91
# Session 10093 - Integrate your custom collaboration app with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Integrate your custom collaboration app with Messages (1080p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 92
# Session 110362 - Link fast - Improve build and launch times
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110362 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110362 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/subtitles/eng/prog_index.m3u8 -c copy "Session - 110362 temp.vtt"
ffmpeg -i "Session - 110362 temp.mp4" -i "Session - 110362 temp.aac" -i "Session - 110362 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110362 - Link fast - Improve build and launch times (1080p).mp4"
rm "Session - 110362 temp.vtt"
rm "Session - 110362 temp.mp4"
rm "Session - 110362 temp.aac"

# 93
# Session 10104 - Load resources faster with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10104/4/E095D698-00CE-4A00-812C-4BA755CE26DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Load resources faster with Metal 3 (1080p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 94
# Session 10139 - Make a great SharePlay experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10139 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10139 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10139 temp.vtt"
ffmpeg -i "Session - 10139 temp.mp4" -i "Session - 10139 temp.aac" -i "Session - 10139 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10139 - Make a great SharePlay experience (1080p).mp4"
rm "Session - 10139 temp.vtt"
rm "Session - 10139 temp.mp4"
rm "Session - 10139 temp.aac"

# 95
# Session 10105 - Maximize your Metal ray tracing performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - Maximize your Metal ray tracing performance (1080p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 96
# Session 10006 - Meet Apple Maps Server APIs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10006 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10006 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10006/3/30C45DFC-CD54-4D31-894F-9954C9A58C93/subtitles/eng/prog_index.m3u8 -c copy "Session - 10006 temp.vtt"
ffmpeg -i "Session - 10006 temp.mp4" -i "Session - 10006 temp.aac" -i "Session - 10006 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10006 - Meet Apple Maps Server APIs (1080p).mp4"
rm "Session - 10006 temp.vtt"
rm "Session - 10006 temp.mp4"
rm "Session - 10006 temp.aac"

# 97
# Session 10148 - Meet Apple Music API and MusicKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - Meet Apple Music API and MusicKit (1080p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 98
# Session 110403 - Meet Background Assets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110403 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110403 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 110403 temp.vtt"
ffmpeg -i "Session - 110403 temp.mp4" -i "Session - 110403 temp.aac" -i "Session - 110403 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110403 - Meet Background Assets (1080p).mp4"
rm "Session - 110403 temp.vtt"
rm "Session - 110403 temp.mp4"
rm "Session - 110403 temp.aac"

# 99
# Session 10116 - Meet CKTool JS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10116 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10116 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10116 temp.vtt"
ffmpeg -i "Session - 10116 temp.mp4" -i "Session - 10116 temp.aac" -i "Session - 10116 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10116 - Meet CKTool JS (1080p).mp4"
rm "Session - 10116 temp.vtt"
rm "Session - 10116 temp.mp4"
rm "Session - 10116 temp.aac"

# 100
# Session 10069 - Meet desktop-class iPad
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10069/4/1646A8BA-EEFA-4533-A631-3BCDF704A4EB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10069 temp.vtt"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -i "Session - 10069 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10069 - Meet desktop-class iPad (1080p).mp4"
rm "Session - 10069 temp.vtt"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 101
# Session 110356 - Meet distributed actors in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110356 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110356 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110356 temp.vtt"
ffmpeg -i "Session - 110356 temp.mp4" -i "Session - 110356 temp.aac" -i "Session - 110356 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110356 - Meet distributed actors in Swift (1080p).mp4"
rm "Session - 110356 temp.vtt"
rm "Session - 110356 temp.mp4"
rm "Session - 110356 temp.aac"

# 102
# Session 10121 - Meet Focus filters
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10121/5/E497A884-24B9-4D6C-A35D-6F9BEEB985B6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - Meet Focus filters (1080p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 103
# Session 10092 - Meet passkeys
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10092/3/E39F623F-97FE-48C0-9987-898078EB9D8B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10092 temp.vtt"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -i "Session - 10092 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10092 - Meet passkeys (1080p).mp4"
rm "Session - 10092 temp.vtt"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 104
# Session 10156 - Meet ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10156 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10156 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/subtitles/eng/prog_index.m3u8 -c copy "Session - 10156 temp.vtt"
ffmpeg -i "Session - 10156 temp.mp4" -i "Session - 10156 temp.aac" -i "Session - 10156 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10156 - Meet ScreenCaptureKit (1080p).mp4"
rm "Session - 10156 temp.vtt"
rm "Session - 10156 temp.mp4"
rm "Session - 10156 temp.aac"

# 105
# Session 110355 - Meet Swift Async Algorithms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110355 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110355 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110355/4/459D7B80-E4A7-428F-ADA8-EF2543CE3350/subtitles/eng/prog_index.m3u8 -c copy "Session - 110355 temp.vtt"
ffmpeg -i "Session - 110355 temp.mp4" -i "Session - 110355 temp.aac" -i "Session - 110355 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110355 - Meet Swift Async Algorithms (1080p).mp4"
rm "Session - 110355 temp.vtt"
rm "Session - 110355 temp.mp4"
rm "Session - 110355 temp.aac"

# 106
# Session 110359 - Meet Swift Package plugins
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110359 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110359 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/subtitles/eng/prog_index.m3u8 -c copy "Session - 110359 temp.vtt"
ffmpeg -i "Session - 110359 temp.mp4" -i "Session - 110359 temp.aac" -i "Session - 110359 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110359 - Meet Swift Package plugins (1080p).mp4"
rm "Session - 110359 temp.vtt"
rm "Session - 110359 temp.mp4"
rm "Session - 110359 temp.aac"

# 107
# Session 110357 - Meet Swift Regex
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110357 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110357 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110357/3/8FEA2DD3-43EE-44FB-A856-53169F90D683/subtitles/eng/prog_index.m3u8 -c copy "Session - 110357 temp.vtt"
ffmpeg -i "Session - 110357 temp.mp4" -i "Session - 110357 temp.aac" -i "Session - 110357 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110357 - Meet Swift Regex (1080p).mp4"
rm "Session - 110357 temp.vtt"
rm "Session - 110357 temp.mp4"
rm "Session - 110357 temp.aac"

# 108
# Session 110381 - Meet the expanded San Francisco font family
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110381 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110381 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/subtitles/eng/prog_index.m3u8 -c copy "Session - 110381 temp.vtt"
ffmpeg -i "Session - 110381 temp.mp4" -i "Session - 110381 temp.aac" -i "Session - 110381 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110381 - Meet the expanded San Francisco font family (1080p).mp4"
rm "Session - 110381 temp.vtt"
rm "Session - 110381 temp.mp4"
rm "Session - 110381 temp.aac"

# 109
# Session 10062 - Meet Transferable
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10062 temp.vtt"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -i "Session - 10062 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10062 - Meet Transferable (1080p).mp4"
rm "Session - 10062 temp.vtt"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 110
# Session 10003 - Meet WeatherKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10003 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10003 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10003/5/C8AAE478-A435-4DA4-8256-F32941E32204/subtitles/eng/prog_index.m3u8 -c copy "Session - 10003 temp.vtt"
ffmpeg -i "Session - 10003 temp.mp4" -i "Session - 10003 temp.aac" -i "Session - 10003 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10003 - Meet WeatherKit (1080p).mp4"
rm "Session - 10003 temp.vtt"
rm "Session - 10003 temp.mp4"
rm "Session - 10003 temp.aac"

# 111
# Session 10098 - Meet Web Push for Safari
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10098/4/0243E8FF-8341-4FD5-BACD-CEB81B4730DF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10098 temp.vtt"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -i "Session - 10098 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10098 - Meet Web Push for Safari (1080p).mp4"
rm "Session - 10098 temp.vtt"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 112
# Session 10027 - Optimize your Core ML usage
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10027 temp.vtt"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -i "Session - 10027 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10027 - Optimize your Core ML usage (1080p).mp4"
rm "Session - 10027 temp.vtt"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 113
# Session 10119 - Optimize your use of Core Data and CloudKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/subtitles/eng/prog_index.m3u8 -c copy "Session - 10119 temp.vtt"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -i "Session - 10119 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10119 - Optimize your use of Core Data and CloudKit (1080p).mp4"
rm "Session - 10119 temp.vtt"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 114
# Session 10065 - Plug-in and play - Add Apple frameworks to your Unity game projects
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10065 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10065 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10065/5/C221E77C-502C-47CD-B0C4-9091B529DD77/subtitles/eng/prog_index.m3u8 -c copy "Session - 10065 temp.vtt"
ffmpeg -i "Session - 10065 temp.mp4" -i "Session - 10065 temp.aac" -i "Session - 10065 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10065 - Plug-in and play - Add Apple frameworks to your Unity game projects (1080p).mp4"
rm "Session - 10065 temp.vtt"
rm "Session - 10065 temp.mp4"
rm "Session - 10065 temp.aac"

# 115
# Session 10083 - Power down - Improve battery consumption
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Power down - Improve battery consumption (1080p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 116
# Session 10106 - Profile and optimize your game's memory
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - Profile and optimize your game's memory (1080p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 117
# Session 10160 - Program Metal in C++ with metal-cpp
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10160/5/F0ACC08B-EFC0-459E-AE6D-DEA492619F49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Program Metal in C++ with metal-cpp (1080p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 118
# Session 10131 - Qualities of great AR experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10131/4/AE5E1692-81D5-4EF7-A74E-667A4D426D71/subtitles/eng/prog_index.m3u8 -c copy "Session - 10131 temp.vtt"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -i "Session - 10131 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10131 - Qualities of great AR experiences (1080p).mp4"
rm "Session - 10131 temp.vtt"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 119
# Session 10064 - Reach new players with Game Center dashboard
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10064 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10064 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10064 temp.vtt"
ffmpeg -i "Session - 10064 temp.mp4" -i "Session - 10064 temp.aac" -i "Session - 10064 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10064 - Reach new players with Game Center dashboard (1080p).mp4"
rm "Session - 10064 temp.vtt"
rm "Session - 10064 temp.mp4"
rm "Session - 10064 temp.aac"

# 120
# Session 10078 - Reduce networking delays for a more responsive app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10078 temp.vtt"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -i "Session - 10078 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10078 - Reduce networking delays for a more responsive app (1080p).mp4"
rm "Session - 10078 temp.vtt"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 121
# Session 10077 - Replace CAPTCHAs with Private Access Tokens
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10077 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10077 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10077 temp.vtt"
ffmpeg -i "Session - 10077 temp.mp4" -i "Session - 10077 temp.aac" -i "Session - 10077 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10077 - Replace CAPTCHAs with Private Access Tokens (1080p).mp4"
rm "Session - 10077 temp.vtt"
rm "Session - 10077 temp.mp4"
rm "Session - 10077 temp.aac"

# 122
# Session 10159 - Scale compute workloads across Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Scale compute workloads across Apple GPUs (1080p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 123
# Session 110367 - Simplify C++ templates with concepts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110367 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110367 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 110367 temp.vtt"
ffmpeg -i "Session - 110367 temp.mp4" -i "Session - 110367 temp.aac" -i "Session - 110367 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110367 - Simplify C++ templates with concepts (1080p).mp4"
rm "Session - 110367 temp.vtt"
rm "Session - 110367 temp.mp4"
rm "Session - 110367 temp.aac"

# 124
# Session 10108 - Streamline local authorization flows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - Streamline local authorization flows (1080p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"

# 125
# Session 110384 - Support multiple users in tvOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110384 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110384 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/subtitles/eng/prog_index.m3u8 -c copy "Session - 110384 temp.vtt"
ffmpeg -i "Session - 110384 temp.mp4" -i "Session - 110384 temp.aac" -i "Session - 110384 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110384 - Support multiple users in tvOS apps (1080p).mp4"
rm "Session - 110384 temp.vtt"
rm "Session - 110384 temp.mp4"
rm "Session - 110384 temp.aac"

# 126
# Session 10137 - Swift Charts - Raise the bar 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - Swift Charts - Raise the bar  (1080p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 127
# Session 110358 - Swift Regex - Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110358 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110358 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/subtitles/eng/prog_index.m3u8 -c copy "Session - 110358 temp.vtt"
ffmpeg -i "Session - 110358 temp.mp4" -i "Session - 110358 temp.aac" -i "Session - 110358 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110358 - Swift Regex - Beyond the basics (1080p).mp4"
rm "Session - 110358 temp.vtt"
rm "Session - 110358 temp.mp4"
rm "Session - 110358 temp.aac"

# 128
# Session 110343 - SwiftUI on iPad - Add toolbars, titles, and more
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110343 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110343 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/subtitles/eng/prog_index.m3u8 -c copy "Session - 110343 temp.vtt"
ffmpeg -i "Session - 110343 temp.mp4" -i "Session - 110343 temp.aac" -i "Session - 110343 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110343 - SwiftUI on iPad - Add toolbars, titles, and more (1080p).mp4"
rm "Session - 110343 temp.vtt"
rm "Session - 110343 temp.mp4"
rm "Session - 110343 temp.aac"

# 129
# Session 10058 - SwiftUI on iPad - Organize your interface
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/subtitles/eng/prog_index.m3u8 -c copy "Session - 10058 temp.vtt"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -i "Session - 10058 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10058 - SwiftUI on iPad - Organize your interface (1080p).mp4"
rm "Session - 10058 temp.vtt"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"

# 130
# Session 10155 - Take ScreenCaptureKit to the next level
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Take ScreenCaptureKit to the next level (1080p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 131
# Session 10102 - Target and optimize GPU binaries with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Target and optimize GPU binaries with Metal 3 (1080p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 132
# Session 10059 - The craft of SwiftUI API design - Progressive disclosure
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10059 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10059 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10059 temp.vtt"
ffmpeg -i "Session - 10059 temp.mp4" -i "Session - 10059 temp.aac" -i "Session - 10059 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10059 - The craft of SwiftUI API design - Progressive disclosure (1080p).mp4"
rm "Session - 10059 temp.vtt"
rm "Session - 10059 temp.mp4"
rm "Session - 10059 temp.aac"

# 133
# Session 10054 - The SwiftUI cookbook for navigation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10054/4/E85249AE-F795-40DC-BD9E-A3E385906FE6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10054 temp.vtt"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -i "Session - 10054 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10054 - The SwiftUI cookbook for navigation (1080p).mp4"
rm "Session - 10054 temp.vtt"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 134
# Session 10082 - Track down hangs with Xcode and on-device detection
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10082 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10082 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/subtitles/eng/prog_index.m3u8 -c copy "Session - 10082 temp.vtt"
ffmpeg -i "Session - 10082 temp.mp4" -i "Session - 10082 temp.aac" -i "Session - 10082 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10082 - Track down hangs with Xcode and on-device detection (1080p).mp4"
rm "Session - 10082 temp.vtt"
rm "Session - 10082 temp.mp4"
rm "Session - 10082 temp.aac"

# 135
# Session 10162 - Transform your geometry with Metal mesh shaders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/5/9408DC15-0B03-4DD9-8ADE-161821D0E7FC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/5/9408DC15-0B03-4DD9-8ADE-161821D0E7FC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/5/9408DC15-0B03-4DD9-8ADE-161821D0E7FC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - Transform your geometry with Metal mesh shaders (1080p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 136
# Session 10129 - Understand USD fundamentals
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10129 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10129 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10129 temp.vtt"
ffmpeg -i "Session - 10129 temp.mp4" -i "Session - 10129 temp.aac" -i "Session - 10129 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10129 - Understand USD fundamentals (1080p).mp4"
rm "Session - 10129 temp.vtt"
rm "Session - 10129 temp.mp4"
rm "Session - 10129 temp.aac"

# 137
# Session 10075 - Use SwiftUI with AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Use SwiftUI with AppKit (1080p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 138
# Session 10072 - Use SwiftUI with UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10072 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10072 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10072 temp.vtt"
ffmpeg -i "Session - 10072 temp.mp4" -i "Session - 10072 temp.aac" -i "Session - 10072 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10072 - Use SwiftUI with UIKit (1080p).mp4"
rm "Session - 10072 temp.vtt"
rm "Session - 10072 temp.mp4"
rm "Session - 10072 temp.aac"

# 139
# Session 110360 - Use Xcode for server-side development
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110360 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110360 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110360 temp.vtt"
ffmpeg -i "Session - 110360 temp.mp4" -i "Session - 110360 temp.aac" -i "Session - 110360 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110360 - Use Xcode for server-side development (1080p).mp4"
rm "Session - 110360 temp.vtt"
rm "Session - 110360 temp.mp4"
rm "Session - 110360 temp.aac"

# 140
# Session 110371 - Use Xcode to develop a multiplatform app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110371 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110371 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/subtitles/eng/prog_index.m3u8 -c copy "Session - 110371 temp.vtt"
ffmpeg -i "Session - 110371 temp.mp4" -i "Session - 110371 temp.aac" -i "Session - 110371 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110371 - Use Xcode to develop a multiplatform app (1080p).mp4"
rm "Session - 110371 temp.vtt"
rm "Session - 110371 temp.mp4"
rm "Session - 110371 temp.aac"

# 141
# Session 110350 - Visualize and optimize Swift concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110350 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110350 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110350/4/3B87EB1E-4E88-4D11-817A-16852AEA794C/subtitles/eng/prog_index.m3u8 -c copy "Session - 110350 temp.vtt"
ffmpeg -i "Session - 110350 temp.mp4" -i "Session - 110350 temp.aac" -i "Session - 110350 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110350 - Visualize and optimize Swift concurrency (1080p).mp4"
rm "Session - 110350 temp.vtt"
rm "Session - 110350 temp.mp4"
rm "Session - 110350 temp.aac"

# 142
# Session 10097 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10097/4/1195D4FF-4AF5-48B0-BB92-948D01AF942B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10097 temp.vtt"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -i "Session - 10097 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10097 - What's new in App Clips (1080p).mp4"
rm "Session - 10097 temp.vtt"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 143
# Session 10043 - What's new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10043 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10043 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10043 temp.vtt"
ffmpeg -i "Session - 10043 temp.mp4" -i "Session - 10043 temp.aac" -i "Session - 10043 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10043 - What's new in App Store Connect (1080p).mp4"
rm "Session - 10043 temp.vtt"
rm "Session - 10043 temp.mp4"
rm "Session - 10043 temp.aac"

# 144
# Session 10074 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10074/3/1BF7E42D-BA6E-467E-9A03-1973DCC5E9A5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10074 temp.vtt"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -i "Session - 10074 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10074 - What's new in AppKit (1080p).mp4"
rm "Session - 10074 temp.vtt"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 145
# Session 110332 - What's new in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110332 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110332 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110332/5/6B7CFC73-E018-439B-8755-EA807A72DEA3/subtitles/eng/prog_index.m3u8 -c copy "Session - 110332 temp.vtt"
ffmpeg -i "Session - 110332 temp.mp4" -i "Session - 110332 temp.aac" -i "Session - 110332 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110332 - What's new in Create ML (1080p).mp4"
rm "Session - 110332 temp.vtt"
rm "Session - 110332 temp.mp4"
rm "Session - 110332 temp.aac"

# 146
# Session 10005 - What's new in HealthKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10005 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10005 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10005 temp.vtt"
ffmpeg -i "Session - 10005 temp.mp4" -i "Session - 10005 temp.aac" -i "Session - 10005 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10005 - What's new in HealthKit (1080p).mp4"
rm "Session - 10005 temp.vtt"
rm "Session - 10005 temp.mp4"
rm "Session - 10005 temp.aac"

# 147
# Session 10045 - What's new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10045/3/F899BEB5-EBE4-422E-AE52-AEF752A194A0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10045 temp.vtt"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -i "Session - 10045 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10045 - What's new in managing Apple devices (1080p).mp4"
rm "Session - 10045 temp.vtt"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 148
# Session 10035 - What's new in MapKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10035 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10035 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10035 temp.vtt"
ffmpeg -i "Session - 10035 temp.mp4" -i "Session - 10035 temp.aac" -i "Session - 10035 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10035 - What's new in MapKit (1080p).mp4"
rm "Session - 10035 temp.vtt"
rm "Session - 10035 temp.mp4"
rm "Session - 10035 temp.aac"

# 149
# Session 10008 - What's new in Nearby Interaction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10008 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10008 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10008/5/BB4E3444-7C8E-42CC-B427-08DA670C9D41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10008 temp.vtt"
ffmpeg -i "Session - 10008 temp.mp4" -i "Session - 10008 temp.aac" -i "Session - 10008 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10008 - What's new in Nearby Interaction (1080p).mp4"
rm "Session - 10008 temp.vtt"
rm "Session - 10008 temp.mp4"
rm "Session - 10008 temp.aac"

# 150
# Session 10089 - What's new in PDFKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - What's new in PDFKit (1080p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 151
# Session 10048 - What's new in Safari and WebKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10048/4/8DF121DF-6825-4FBB-B570-A75F5A44CCB7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10048 temp.vtt"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -i "Session - 10048 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10048 - What's new in Safari and WebKit (1080p).mp4"
rm "Session - 10048 temp.vtt"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 152
# Session 110336 - What's new in Screen Time API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110336 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110336 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/subtitles/eng/prog_index.m3u8 -c copy "Session - 110336 temp.vtt"
ffmpeg -i "Session - 110336 temp.mp4" -i "Session - 110336 temp.aac" -i "Session - 110336 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110336 - What's new in Screen Time API (1080p).mp4"
rm "Session - 110336 temp.vtt"
rm "Session - 110336 temp.mp4"
rm "Session - 110336 temp.aac"

# 153
# Session 10157 - What's new in SF Symbols 4
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10157/3/A3A24118-7045-4049-9392-6B10E8CDD489/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - What's new in SF Symbols 4 (1080p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 154
# Session 10140 - What's new in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10140/3/7F5B5E00-19E6-4DBE-A169-044C9D0418F0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - What's new in SharePlay (1080p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 155
# Session 10039 - What's new in StoreKit testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10039 temp.vtt"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -i "Session - 10039 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10039 - What's new in StoreKit testing (1080p).mp4"
rm "Session - 10039 temp.vtt"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 156
# Session 110354 - What's new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110354 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110354 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110354/5/BFF5625D-B11D-4C9D-B82B-E7A89A669475/subtitles/eng/prog_index.m3u8 -c copy "Session - 110354 temp.vtt"
ffmpeg -i "Session - 110354 temp.mp4" -i "Session - 110354 temp.aac" -i "Session - 110354 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110354 - What's new in Swift (1080p).mp4"
rm "Session - 110354 temp.vtt"
rm "Session - 110354 temp.mp4"
rm "Session - 110354 temp.aac"

# 157
# Session 110368 - What's new in Swift-DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110368 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110368 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/subtitles/eng/prog_index.m3u8 -c copy "Session - 110368 temp.vtt"
ffmpeg -i "Session - 110368 temp.mp4" -i "Session - 110368 temp.aac" -i "Session - 110368 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110368 - What's new in Swift-DocC (1080p).mp4"
rm "Session - 110368 temp.vtt"
rm "Session - 110368 temp.mp4"
rm "Session - 110368 temp.aac"

# 158
# Session 10052 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10052/5/241B4005-877E-40CD-91AA-4CE0714BB2E6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10052 temp.vtt"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -i "Session - 10052 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10052 - What's new in SwiftUI (1080p).mp4"
rm "Session - 10052 temp.vtt"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 159
# Session 10090 - What's new in TextKit and text views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10090 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10090 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10090 temp.vtt"
ffmpeg -i "Session - 10090 temp.mp4" -i "Session - 10090 temp.aac" -i "Session - 10090 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10090 - What's new in TextKit and text views (1080p).mp4"
rm "Session - 10090 temp.vtt"
rm "Session - 10090 temp.mp4"
rm "Session - 10090 temp.aac"

# 160
# Session 10023 - What's new in the Photos picker
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/subtitles/eng/prog_index.m3u8 -c copy "Session - 10023 temp.vtt"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -i "Session - 10023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10023 - What's new in the Photos picker (1080p).mp4"
rm "Session - 10023 temp.vtt"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 161
# Session 10068 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10068/4/CD436E87-CE6B-4E99-A7EA-66C5A424B38B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10068 temp.vtt"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -i "Session - 10068 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10068 - What's new in UIKit (1080p).mp4"
rm "Session - 10068 temp.vtt"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 162
# Session 10024 - What's new in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10024 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10024 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10024 temp.vtt"
ffmpeg -i "Session - 10024 temp.mp4" -i "Session - 10024 temp.aac" -i "Session - 10024 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10024 - What's new in Vision (1080p).mp4"
rm "Session - 10024 temp.vtt"
rm "Session - 10024 temp.mp4"
rm "Session - 10024 temp.aac"

# 163
# Session 10153 - What's new in web accessibility
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - What's new in web accessibility (1080p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 164
# Session 10049 - What's new in WKWebView
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10049 temp.vtt"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -i "Session - 10049 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10049 - What's new in WKWebView (1080p).mp4"
rm "Session - 10049 temp.vtt"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"

# 165
# Session 110427 - What's new in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110427 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110427 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110427/5/60E9EBA5-592E-48D0-9429-A85E40C4C9F0/subtitles/eng/prog_index.m3u8 -c copy "Session - 110427 temp.vtt"
ffmpeg -i "Session - 110427 temp.mp4" -i "Session - 110427 temp.aac" -i "Session - 110427 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110427 - What's new in Xcode (1080p).mp4"
rm "Session - 110427 temp.vtt"
rm "Session - 110427 temp.mp4"
rm "Session - 110427 temp.aac"

# 166
# Session 10007 - What's new with in-app purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10007 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10007 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10007/4/2E07F67B-3E73-4DC2-A300-93EB4AF56295/subtitles/eng/prog_index.m3u8 -c copy "Session - 10007 temp.vtt"
ffmpeg -i "Session - 10007 temp.mp4" -i "Session - 10007 temp.aac" -i "Session - 10007 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10007 - What's new with in-app purchase (1080p).mp4"
rm "Session - 10007 temp.vtt"
rm "Session - 10007 temp.mp4"
rm "Session - 10007 temp.aac"

# 167
# Session 10038 - What's new with SKAdNetwork
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10038 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10038 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10038 temp.vtt"
ffmpeg -i "Session - 10038 temp.mp4" -i "Session - 10038 temp.aac" -i "Session - 10038 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10038 - What's new with SKAdNetwork (1080p).mp4"
rm "Session - 10038 temp.vtt"
rm "Session - 10038 temp.mp4"
rm "Session - 10038 temp.aac"

# 168
# Session 10149 - What’s new in AVQT
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - What’s new in AVQT (1080p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 169
# Session 10115 - What’s new in CloudKit Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - What’s new in CloudKit Console (1080p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 170
# Session 110345 - What’s new in Endpoint Security
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110345 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110345 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/subtitles/eng/prog_index.m3u8 -c copy "Session - 110345 temp.vtt"
ffmpeg -i "Session - 110345 temp.mp4" -i "Session - 110345 temp.aac" -i "Session - 110345 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110345 - What’s new in Endpoint Security (1080p).mp4"
rm "Session - 110345 temp.vtt"
rm "Session - 110345 temp.mp4"
rm "Session - 110345 temp.aac"

# 171
# Session 10145 - What’s new in HLS Interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/subtitles/eng/prog_index.m3u8 -c copy "Session - 10145 temp.vtt"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -i "Session - 10145 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10145 - What’s new in HLS Interstitials (1080p).mp4"
rm "Session - 10145 temp.vtt"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 172
# Session 10009 - What’s new in iPad app design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10009 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10009 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/subtitles/eng/prog_index.m3u8 -c copy "Session - 10009 temp.vtt"
ffmpeg -i "Session - 10009 temp.mp4" -i "Session - 10009 temp.aac" -i "Session - 10009 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10009 - What’s new in iPad app design (1080p).mp4"
rm "Session - 10009 temp.vtt"
rm "Session - 10009 temp.mp4"
rm "Session - 10009 temp.aac"

# 173
# Session 10109 - What’s new in notarization for Mac apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10109/3/AC093573-81B2-4A1E-BA66-50E413DF5660/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - What’s new in notarization for Mac apps (1080p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 174
# Session 10096 - What’s new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - What’s new in privacy (1080p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 175
# Session 10099 - What’s new in Safari Web Extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10099 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10099 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/subtitles/eng/prog_index.m3u8 -c copy "Session - 10099 temp.vtt"
ffmpeg -i "Session - 10099 temp.mp4" -i "Session - 10099 temp.aac" -i "Session - 10099 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10099 - What’s new in Safari Web Extensions (1080p).mp4"
rm "Session - 10099 temp.vtt"
rm "Session - 10099 temp.mp4"
rm "Session - 10099 temp.aac"

# 176
# Session 10041 - What’s new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10041 temp.vtt"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -i "Session - 10041 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10041 - What’s new in Wallet and Apple Pay (1080p).mp4"
rm "Session - 10041 temp.vtt"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"

# 177
# Session 10037 - Writing for interfaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/subtitles/eng/prog_index.m3u8 -c copy "Session - 10037 temp.vtt"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -i "Session - 10037 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10037 - Writing for interfaces (1080p).mp4"
rm "Session - 10037 temp.vtt"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"

# 178
# Session 110933 - WWDC22 Friday recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110933/1/CF0900A1-24C8-4C33-B6D1-18B2343DC206/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110933 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110933/1/CF0900A1-24C8-4C33-B6D1-18B2343DC206/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110933 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110933/1/CF0900A1-24C8-4C33-B6D1-18B2343DC206/subtitles/eng/prog_index.m3u8 -c copy "Session - 110933 temp.vtt"
ffmpeg -i "Session - 110933 temp.mp4" -i "Session - 110933 temp.aac" -i "Session - 110933 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110933 - WWDC22 Friday recap (1080p).mp4"
rm "Session - 110933 temp.vtt"
rm "Session - 110933 temp.mp4"
rm "Session - 110933 temp.aac"

# 179
# Session 110929 - WWDC22 Monday recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110929/1/E9996C71-5D71-46C7-BC47-4A26302DA7D6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110929 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110929/1/E9996C71-5D71-46C7-BC47-4A26302DA7D6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110929 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110929/1/E9996C71-5D71-46C7-BC47-4A26302DA7D6/subtitles/eng/prog_index.m3u8 -c copy "Session - 110929 temp.vtt"
ffmpeg -i "Session - 110929 temp.mp4" -i "Session - 110929 temp.aac" -i "Session - 110929 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110929 - WWDC22 Monday recap (1080p).mp4"
rm "Session - 110929 temp.vtt"
rm "Session - 110929 temp.mp4"
rm "Session - 110929 temp.aac"

# 180
# Session 110932 - WWDC22 Thursday recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110932/1/FAD2EDA0-088A-4ECC-A98A-4448F5568116/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110932 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110932/1/FAD2EDA0-088A-4ECC-A98A-4448F5568116/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110932 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110932/1/FAD2EDA0-088A-4ECC-A98A-4448F5568116/subtitles/eng/prog_index.m3u8 -c copy "Session - 110932 temp.vtt"
ffmpeg -i "Session - 110932 temp.mp4" -i "Session - 110932 temp.aac" -i "Session - 110932 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110932 - WWDC22 Thursday recap (1080p).mp4"
rm "Session - 110932 temp.vtt"
rm "Session - 110932 temp.mp4"
rm "Session - 110932 temp.aac"

# 181
# Session 110930 - WWDC22 Tuesday recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110930/1/73202A76-09C0-4221-9529-CA4DE5847169/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110930 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110930/1/73202A76-09C0-4221-9529-CA4DE5847169/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110930 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110930/1/73202A76-09C0-4221-9529-CA4DE5847169/subtitles/eng/prog_index.m3u8 -c copy "Session - 110930 temp.vtt"
ffmpeg -i "Session - 110930 temp.mp4" -i "Session - 110930 temp.aac" -i "Session - 110930 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110930 - WWDC22 Tuesday recap (1080p).mp4"
rm "Session - 110930 temp.vtt"
rm "Session - 110930 temp.mp4"
rm "Session - 110930 temp.aac"

# 182
# Session 110931 - WWDC22 Wednesday recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110931/1/B3A83EB2-B46E-432E-92E9-9F5D15D6E793/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 110931 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110931/1/B3A83EB2-B46E-432E-92E9-9F5D15D6E793/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110931 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110931/1/B3A83EB2-B46E-432E-92E9-9F5D15D6E793/subtitles/eng/prog_index.m3u8 -c copy "Session - 110931 temp.vtt"
ffmpeg -i "Session - 110931 temp.mp4" -i "Session - 110931 temp.aac" -i "Session - 110931 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110931 - WWDC22 Wednesday recap (1080p).mp4"
rm "Session - 110931 temp.vtt"
rm "Session - 110931 temp.mp4"
rm "Session - 110931 temp.aac"
