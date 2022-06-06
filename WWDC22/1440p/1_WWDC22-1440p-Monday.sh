# Script to download Monday's WWDC 22 session videos in the highest 1440p video and audio
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

# WWDC22 Keynote
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/sdr_hvc_1440p_8100/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp.mp4"
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp.aac"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -i https://events-delivery.apple.com/0205eyyhwbbqexozkwmgccegwnjyrktg/vod_main_KYVtRmtKMbxMmJHvKTwKJVQuxEmzBjPm/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "WWDC 2022 Keynote temp atmos.mp4"
ffmpeg -i "WWDC 2022 Keynote temp.mp4" -i "WWDC 2022 Keynote temp atmos.mp4" -i "WWDC 2022 Keynote temp.aac" -map 0 -map 1 -map 2 -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -c copy "Apple WWDC 2022 Keynote Address (1440p).mp4"
rm "WWDC 2022 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2022 Keynote temp.mp4" -i "WWDC 2022 Keynote temp.aac" -c copy "Apple WWDC 2022 Keynote Address (1080p).mp4"

rm "WWDC 2022 Keynote temp.mp4"
rm "WWDC 2022 Keynote temp.aac"

# WWDC22 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/102/3/29AB52D7-09CF-4A22-8C26-84AEB4A90097/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2022 Platforms State of the Union temp.aac"
ffmpeg -i "WWDC 2022 Platforms State of the Union temp.mp4" -i "WWDC 2022 Platforms State of the Union temp.aac" -c copy "WWDC 2022 Platforms State of the Union (1440p).mp4"
rm "WWDC 2022 Platforms State of the Union temp.mp4"
rm "WWDC 2022 Platforms State of the Union temp.aac"