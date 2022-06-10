# Script to download Friday's WWDC 22 session videos in the highest 4K video and audio
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

# 1
# Session 10063 - Accelerate machine learning with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10063/4/0942FD31-5504-40C2-A4E8-6AAAC31E459C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10063 temp.vtt"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -i "Session - 10063 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10063 - Accelerate machine learning with Metal (2160p).mp4"
rm "Session - 10063 temp.vtt"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 2
# Session 110361 - Author fast and reliable tests for Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110361 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110361 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110361/3/7FB8FB7D-976B-432E-A47D-05ADDFE1BD45/subtitles/eng/prog_index.m3u8 -c copy "Session - 110361 temp.vtt"
ffmpeg -i "Session - 110361 temp.mp4" -i "Session - 110361 temp.aac" -i "Session - 110361 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110361 - Author fast and reliable tests for Xcode Cloud (2160p).mp4"
rm "Session - 110361 temp.vtt"
rm "Session - 110361 temp.mp4"
rm "Session - 110361 temp.aac"

# 3
# Session 10061 - Bring multiple windows to your SwiftUI app 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10061/4/012AFD7A-B26E-4C25-9C6C-AB01D5336EA7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - Bring multiple windows to your SwiftUI app  (2160p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 4
# Session 110339 - Build device-to-device interactions with Network Framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110339 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110339 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110339/4/694E2DB9-0326-40B6-951C-7FF812E944EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 110339 temp.vtt"
ffmpeg -i "Session - 110339 temp.mp4" -i "Session - 110339 temp.aac" -i "Session - 110339 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110339 - Build device-to-device interactions with Network Framework (2160p).mp4"
rm "Session - 110339 temp.vtt"
rm "Session - 110339 temp.mp4"
rm "Session - 110339 temp.aac"

# 5
# Session 10152 - Create accessible Single App Mode experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10152/3/0694C884-66D5-46B5-BAC6-A6671661A771/subtitles/eng/prog_index.m3u8 -c copy "Session - 10152 temp.vtt"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -i "Session - 10152 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10152 - Create accessible Single App Mode experiences (2160p).mp4"
rm "Session - 10152 temp.vtt"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 6
# Session 10028 - Create custom catalogs at scale with ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10028 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10028 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10028/3/F2DB18FC-F40C-4FB9-A080-5202CE2794CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10028 temp.vtt"
ffmpeg -i "Session - 10028 temp.mp4" -i "Session - 10028 temp.aac" -i "Session - 10028 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10028 - Create custom catalogs at scale with ShazamKit (2160p).mp4"
rm "Session - 10028 temp.vtt"
rm "Session - 10028 temp.mp4"
rm "Session - 10028 temp.aac"

# 7
# Session 110401 - Create Swift Package plugins
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110401 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110401 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110401/6/E6B6BDA3-C922-4FC4-AF6B-EB6C290568A7/subtitles/eng/prog_index.m3u8 -c copy "Session - 110401 temp.vtt"
ffmpeg -i "Session - 110401 temp.mp4" -i "Session - 110401 temp.aac" -i "Session - 110401 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110401 - Create Swift Package plugins (2160p).mp4"
rm "Session - 110401 temp.vtt"
rm "Session - 110401 temp.mp4"
rm "Session - 110401 temp.aac"

# 8
# Session 10044 - Discover Benchmarks in App Analytics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10044/4/A6EC2B38-5E5C-44B0-8CB4-F4B0118ADE6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10044 temp.vtt"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -i "Session - 10044 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10044 - Discover Benchmarks in App Analytics (2160p).mp4"
rm "Session - 10044 temp.vtt"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 9
# Session 10143 - Discover Managed Device Attestation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10143/3/585D8CA2-12BF-4F97-8DDD-11A5561BD143/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - Discover Managed Device Attestation (2160p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 10
# Session 10142 - Efficiency awaits - Background tasks in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10142/4/D8D87522-CCCC-46BA-8C48-ECA2A5F9E36E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10142 temp.vtt"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -i "Session - 10142 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10142 - Efficiency awaits - Background tasks in SwiftUI (2160p).mp4"
rm "Session - 10142 temp.vtt"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 11
# Session 110338 - Explore media metadata publishing and playback interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110338 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110338 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110338/3/BCB38F17-7908-4BD8-8A7A-767EC8C59367/subtitles/eng/prog_index.m3u8 -c copy "Session - 110338 temp.vtt"
ffmpeg -i "Session - 110338 temp.mp4" -i "Session - 110338 temp.aac" -i "Session - 110338 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110338 - Explore media metadata publishing and playback interactions (2160p).mp4"
rm "Session - 110338 temp.vtt"
rm "Session - 110338 temp.mp4"
rm "Session - 110338 temp.aac"

# 12
# Session 110341 - Explore SMS message filters
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110341 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110341 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110341/3/B3803998-3525-4D12-A13D-CFE6C8435AAF/subtitles/eng/prog_index.m3u8 -c copy "Session - 110341 temp.vtt"
ffmpeg -i "Session - 110341 temp.mp4" -i "Session - 110341 temp.aac" -i "Session - 110341 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110341 - Explore SMS message filters (2160p).mp4"
rm "Session - 110341 temp.vtt"
rm "Session - 110341 temp.mp4"
rm "Session - 110341 temp.aac"

# 13
# Session 10017 - Explore the machine learning development experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10017 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10017 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10017/3/6F4C9F52-725A-4AD2-83BD-A3D43D29A914/subtitles/eng/prog_index.m3u8 -c copy "Session - 10017 temp.vtt"
ffmpeg -i "Session - 10017 temp.mp4" -i "Session - 10017 temp.aac" -i "Session - 10017 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10017 - Explore the machine learning development experience (2160p).mp4"
rm "Session - 10017 temp.vtt"
rm "Session - 10017 temp.mp4"
rm "Session - 10017 temp.aac"

# 14
# Session 110404 - Implement proactive in-app purchase restore
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110404 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110404 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110404/3/55253AC0-EEDC-49B5-884C-CE8F562CC023/subtitles/eng/prog_index.m3u8 -c copy "Session - 110404 temp.vtt"
ffmpeg -i "Session - 110404 temp.mp4" -i "Session - 110404 temp.aac" -i "Session - 110404 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110404 - Implement proactive in-app purchase restore (2160p).mp4"
rm "Session - 110404 temp.vtt"
rm "Session - 110404 temp.mp4"
rm "Session - 110404 temp.aac"

# 15
# Session 10079 - Improve DNS security for apps and servers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10079 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10079 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10079/5/31E85A57-3035-4B6A-9BA4-4A73D156F55E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10079 temp.vtt"
ffmpeg -i "Session - 10079 temp.mp4" -i "Session - 10079 temp.aac" -i "Session - 10079 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10079 - Improve DNS security for apps and servers (2160p).mp4"
rm "Session - 10079 temp.vtt"
rm "Session - 10079 temp.mp4"
rm "Session - 10079 temp.aac"

# 16
# Session 10083 - Power down - Improve battery consumption
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10083/4/B0CF7C82-605A-4F0E-9BF2-C1F540932B45/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Power down - Improve battery consumption (2160p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 17
# Session 10106 - Profile and optimize your game's memory
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10106/5/56A1A2BE-7EF5-4AA0-AE93-1F93BD885019/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - Profile and optimize your game's memory (2160p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 18
# Session 10159 - Scale compute workloads across Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10159/5/4B824E2A-E99A-492A-84EA-6F6ECC279EB3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Scale compute workloads across Apple GPUs (2160p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 19
# Session 110360 - Use Xcode for server-side development
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110360 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110360 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110360/3/95EF8495-F291-49FD-8958-276AC76C222D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110360 temp.vtt"
ffmpeg -i "Session - 110360 temp.mp4" -i "Session - 110360 temp.aac" -i "Session - 110360 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110360 - Use Xcode for server-side development (2160p).mp4"
rm "Session - 110360 temp.vtt"
rm "Session - 110360 temp.mp4"
rm "Session - 110360 temp.aac"

# 20
# Session 10089 - What's new in PDFKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10089/3/473B1E55-B2A6-42BB-AA96-EE2599D6E779/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - What's new in PDFKit (2160p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 21
# Session 110336 - What's new in Screen Time API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110336 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110336 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110336/4/DB808128-449E-420A-9FA1-E5CF7403B7FD/subtitles/eng/prog_index.m3u8 -c copy "Session - 110336 temp.vtt"
ffmpeg -i "Session - 110336 temp.mp4" -i "Session - 110336 temp.aac" -i "Session - 110336 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110336 - What's new in Screen Time API (2160p).mp4"
rm "Session - 110336 temp.vtt"
rm "Session - 110336 temp.mp4"
rm "Session - 110336 temp.aac"

# 22
# Session 10049 - What's new in WKWebView
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10049/3/47260DC4-814E-466D-AD96-D29DFC5459BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10049 temp.vtt"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -i "Session - 10049 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10049 - What's new in WKWebView (2160p).mp4"
rm "Session - 10049 temp.vtt"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"
