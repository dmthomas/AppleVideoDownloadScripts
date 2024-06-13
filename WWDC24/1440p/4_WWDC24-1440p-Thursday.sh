# Script to download Thursday's WWDC 24 session videos in the highest 1440p video and audio
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
# Session 10218 - Accelerate machine learning with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10218 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10218 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10218/4/170082E6-003F-44FE-BF57-99EA261406B4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10218 temp.vtt"
ffmpeg -i "Session - 10218 temp.mp4" -i "Session - 10218 temp.aac" -i "Session - 10218 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10218 - Accelerate machine learning with Metal (1440p).mp4"
rm "Session - 10218 temp.vtt"
rm "Session - 10218 temp.mp4"
rm "Session - 10218 temp.aac"

# 2
# Session 10140 - Add personality to your app through UX writing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10140/4/A5E944E8-26A4-4A88-98E9-50C631A5E102/subtitles/eng/prog_index.m3u8 -c copy "Session - 10140 temp.vtt"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -i "Session - 10140 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10140 - Add personality to your app through UX writing (1440p).mp4"
rm "Session - 10140 temp.vtt"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 3
# Session 10173 - Analyze heap memory
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10173 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10173 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10173/4/5ADD00F7-AAD5-4C66-A3ED-9FC7E27C7720/subtitles/eng/prog_index.m3u8 -c copy "Session - 10173 temp.vtt"
ffmpeg -i "Session - 10173 temp.mp4" -i "Session - 10173 temp.aac" -i "Session - 10173 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10173 - Analyze heap memory (1440p).mp4"
rm "Session - 10173 temp.vtt"
rm "Session - 10173 temp.mp4"
rm "Session - 10173 temp.aac"

# 4
# Session 10088 - Capture HDR content with ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10088 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10088 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10088/4/D333573B-E8F2-4420-8709-B8FE3095D56B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10088 temp.vtt"
ffmpeg -i "Session - 10088 temp.mp4" -i "Session - 10088 temp.aac" -i "Session - 10088 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10088 - Capture HDR content with ScreenCaptureKit (1440p).mp4"
rm "Session - 10088 temp.vtt"
rm "Session - 10088 temp.mp4"
rm "Session - 10088 temp.aac"

# 5
# Session 10170 - Consume noncopyable types in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10170/4/993789F1-AF44-4E20-8C66-BF59DAC6C1F6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Consume noncopyable types in Swift (1440p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 6
# Session 10151 - Create custom visual effects with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10151 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10151 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10151/4/8FDE6F53-E002-4F16-B401-64D22DFD6889/subtitles/eng/prog_index.m3u8 -c copy "Session - 10151 temp.vtt"
ffmpeg -i "Session - 10151 temp.mp4" -i "Session - 10151 temp.aac" -i "Session - 10151 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10151 - Create custom visual effects with SwiftUI (1440p).mp4"
rm "Session - 10151 temp.vtt"
rm "Session - 10151 temp.mp4"
rm "Session - 10151 temp.aac"

# 7
# Session 10201 - Customize spatial Persona templates in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10201 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10201 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10201/5/10E5E470-0946-416B-AEC8-E601A8CC6045/subtitles/eng/prog_index.m3u8 -c copy "Session - 10201 temp.vtt"
ffmpeg -i "Session - 10201 temp.mp4" -i "Session - 10201 temp.aac" -i "Session - 10201 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10201 - Customize spatial Persona templates in SharePlay (1440p).mp4"
rm "Session - 10201 temp.vtt"
rm "Session - 10201 temp.mp4"
rm "Session - 10201 temp.aac"

# 8
# Session 10217 - Explore Swift performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10217 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10217 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10217/5/8228D59A-1164-48DA-86CD-79F2191061DC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10217 temp.vtt"
ffmpeg -i "Session - 10217 temp.mp4" -i "Session - 10217 temp.aac" -i "Session - 10217 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10217 - Explore Swift performance (1440p).mp4"
rm "Session - 10217 temp.vtt"
rm "Session - 10217 temp.mp4"
rm "Session - 10217 temp.aac"

# 9
# Session 10200 - Extend your Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10200 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10200 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10200/5/28E5AAA4-9AE8-427A-B577-512070861A1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10200 temp.vtt"
ffmpeg -i "Session - 10200 temp.mp4" -i "Session - 10200 temp.aac" -i "Session - 10200 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10200 - Extend your Xcode Cloud workflows (1440p).mp4"
rm "Session - 10200 temp.vtt"
rm "Session - 10200 temp.mp4"
rm "Session - 10200 temp.aac"

# 10
# Session 10074 - Get started with Dynamic Type
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10074/4/3CB84B8B-3CC6-4EAB-AA46-E9FD7D160048/subtitles/eng/prog_index.m3u8 -c copy "Session - 10074 temp.vtt"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -i "Session - 10074 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10074 - Get started with Dynamic Type (1440p).mp4"
rm "Session - 10074 temp.vtt"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 11
# Session 10110 - Implement App Store Offers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10110/4/D12EC56F-E036-4B66-BC08-8F01A5D49690/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Implement App Store Offers (1440p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 12
# Session 10203 - Meet AccessorySetupKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10203/4/B5954562-4B78-4634-8C6B-7CDC4ED9E8B7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10203 temp.vtt"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -i "Session - 10203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10203 - Meet AccessorySetupKit (1440p).mp4"
rm "Session - 10203 temp.vtt"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 13
# Session 10121 - Meet the Contact Access Button
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10121/4/A4253FF7-546D-4248-9DFA-DACBFB567A90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - Meet the Contact Access Button (1440p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 14
# Session 10075 - Track model changes with SwiftData history
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10075/4/0F3D64B6-B594-42E8-8B59-2088D1B251F8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Track model changes with SwiftData history (1440p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 15
# Session 10160 - Train your machine learning and AI models on Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10160/4/1EF78DEB-091E-49EE-93FE-D764F58D45C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Train your machine learning and AI models on Apple GPUs (1440p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 16
# Session 10122 - Use CloudKit Console to monitor and optimize database activity
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10122/4/2EABAF45-AE74-4287-A9D1-CF9F23D51E90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Use CloudKit Console to monitor and optimize database activity (1440p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 17
# Session 10177 - Use HDR for dynamic image experiences in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10177 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10177 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10177/4/5F09C774-7C5B-4605-98F5-8C70C4A56CF0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10177 temp.vtt"
ffmpeg -i "Session - 10177 temp.mp4" -i "Session - 10177 temp.aac" -i "Session - 10177 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10177 - Use HDR for dynamic image experiences in your app (1440p).mp4"
rm "Session - 10177 temp.vtt"
rm "Session - 10177 temp.mp4"
rm "Session - 10177 temp.aac"

# 18
# Session 10063 - What’s new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10063/4/EF7DC136-639D-44B2-A7E2-6C0A41CD90DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10063 temp.vtt"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -i "Session - 10063 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10063 - What’s new in App Store Connect (1440p).mp4"
rm "Session - 10063 temp.vtt"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 19
# Session 10143 - What’s new in device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10143/4/DCF6DCB6-97B8-43FA-9BA4-4E73784D672E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - What’s new in device management (1440p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 20
# Session 10164 - What’s new in DockKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10164 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10164 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10164/6/8F2F8C99-F0C7-4729-89F5-C5DAF97A9C4A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10164 temp.vtt"
ffmpeg -i "Session - 10164 temp.mp4" -i "Session - 10164 temp.aac" -i "Session - 10164 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10164 - What’s new in DockKit (1440p).mp4"
rm "Session - 10164 temp.vtt"
rm "Session - 10164 temp.mp4"
rm "Session - 10164 temp.aac"

# 21
# Session 10105 - What’s new in Quick Look for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10105/5/9DD1E3E1-8BCD-498A-9045-F2251FFDF077/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - What’s new in Quick Look for visionOS (1440p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 22
# Session 10106 - What’s new in USD and MaterialX
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10106/5/6A686C28-DE5C-4ED5-A387-C03961DF852D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - What’s new in USD and MaterialX (1440p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 23
# Session 10108 - What’s new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10108/4/C63602CE-99FE-4290-B5EC-B7BBAA6A08FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - What’s new in Wallet and Apple Pay (1440p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"
