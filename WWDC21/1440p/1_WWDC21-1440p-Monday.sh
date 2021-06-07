# Script to download Monday's WWDC 21 session videos in the highest 1440p video and audio
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

# WWDC21 Keynote
ffmpeg -i https://p-events-delivery.akamaized.net/1805asrvgvurxcrkewleraugwqathmvg/vod_FbRMWBEvqAdggApZaUoqQJkJWhojfMfh/sdr_hvc_1440p_8100/prog_index.m3u8 -c copy "WWDC 2021 Keynote temp.mp4"
ffmpeg -i https://p-events-delivery.akamaized.net/1805asrvgvurxcrkewleraugwqathmvg/vod_FbRMWBEvqAdggApZaUoqQJkJWhojfMfh/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2021 Keynote temp.aac"
ffmpeg -i "WWDC 2021 Keynote temp.mp4" -i "WWDC 2021 Keynote temp.aac" -c copy "Apple WWDC 2021 Keynote Address (1440p).mp4"
rm "WWDC 2021 Keynote temp.mp4"
rm "WWDC 2021 Keynote temp.aac"