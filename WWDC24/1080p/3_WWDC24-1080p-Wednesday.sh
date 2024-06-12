# Script to download Wednesday's WWDC 24 session videos in the highest 1080p video and audio
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
# Session 10172 - Break into the RealityKit debugger
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10172 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10172 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10172/4/F5FD7DC0-A6BA-481C-B21E-AE269E0B8A1E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10172 temp.vtt"
ffmpeg -i "Session - 10172 temp.mp4" -i "Session - 10172 temp.aac" -i "Session - 10172 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10172 - Break into the RealityKit debugger (1080p).mp4"
rm "Session - 10172 temp.vtt"
rm "Session - 10172 temp.mp4"
rm "Session - 10172 temp.aac"

# 2
# Session 10093 - Bring your iOS or iPadOS game to visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10093/4/5B27E6E6-BA2A-4D7E-99D7-E3B10B2074D2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Bring your iOS or iPadOS game to visionOS (1080p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 3
# Session 10069 - Broadcast updates to your Live Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10069/4/4BD768EC-9A6C-492A-ADB0-C17EF9F7110C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10069 temp.vtt"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -i "Session - 10069 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10069 - Broadcast updates to your Live Activities (1080p).mp4"
rm "Session - 10069 temp.vtt"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 4
# Session 10204 - Build a great Lock Screen camera capture experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/8/BE620A6A-5F29-46B9-AC37-2A1FEDB7832E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10204 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/8/BE620A6A-5F29-46B9-AC37-2A1FEDB7832E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10204 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10204/8/BE620A6A-5F29-46B9-AC37-2A1FEDB7832E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10204 temp.vtt"
ffmpeg -i "Session - 10204 temp.mp4" -i "Session - 10204 temp.aac" -i "Session - 10204 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10204 - Build a great Lock Screen camera capture experience (1080p).mp4"
rm "Session - 10204 temp.vtt"
rm "Session - 10204 temp.mp4"
rm "Session - 10204 temp.aac"

# 5
# Session 10066 - Build immersive web experiences with WebXR
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10066/4/688EE2E3-325B-40BE-B36E-7067500DE40B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10066 temp.vtt"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -i "Session - 10066 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10066 - Build immersive web experiences with WebXR (1080p).mp4"
rm "Session - 10066 temp.vtt"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 6
# Session 10185 - Build multilingual-ready apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10185 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10185 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10185/4/B7C5A64E-515C-41CE-A821-E441DE74E0A1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10185 temp.vtt"
ffmpeg -i "Session - 10185 temp.mp4" -i "Session - 10185 temp.aac" -i "Session - 10185 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10185 - Build multilingual-ready apps (1080p).mp4"
rm "Session - 10185 temp.vtt"
rm "Session - 10185 temp.mp4"
rm "Session - 10185 temp.aac"

# 7
# Session 10152 - Create custom hover effects in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10152/5/A8C4BDC1-D218-446B-AABE-C4419C65C6A6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10152 temp.vtt"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -i "Session - 10152 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10152 - Create custom hover effects in visionOS (1080p).mp4"
rm "Session - 10152 temp.vtt"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 8
# Session 10070 - Customize feature discovery with TipKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10070/5/8C64605E-ECD1-4D14-8B43-D7E3E751FAA3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Customize feature discovery with TipKit (1080p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 9
# Session 10171 - Demystify explicitly built modules
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10171/4/7E1A626A-DE4F-4DEB-A2D9-ECCAAD10A34F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10171 temp.vtt"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -i "Session - 10171 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10171 - Demystify explicitly built modules (1080p).mp4"
rm "Session - 10171 temp.vtt"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 10
# Session 10146 - Demystify SwiftUI containers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10146/4/F3988ADA-0BF0-447C-BE07-01C07F99F11E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10146 temp.vtt"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -i "Session - 10146 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10146 - Demystify SwiftUI containers (1080p).mp4"
rm "Session - 10146 temp.vtt"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 11
# Session 10176 - Design App Intents for system experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10176/4/A71031F6-5E78-4CA6-87CC-F203DCA5A133/subtitles/eng/prog_index.m3u8 -c copy "Session - 10176 temp.vtt"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -i "Session - 10176 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10176 - Design App Intents for system experiences (1080p).mp4"
rm "Session - 10176 temp.vtt"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 12
# Session 10096 - Design interactive experiences for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10096/4/493AE4D4-4D20-4746-BDD1-EC9EFC0DE948/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - Design interactive experiences for visionOS (1080p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 13
# Session 10107 - Discover area mode for Object Capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10107/4/94F3C53B-10C1-4E39-8B9F-33A5BA561420/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Discover area mode for Object Capture (1080p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 14
# Session 10113 - Discover media performance metrics in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10113/4/FADD3DD1-246C-483B-BA77-5D9BE374E39B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Discover media performance metrics in AVFoundation (1080p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 15
# Session 10163 - Discover Swift enhancements in the Vision framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10163 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10163 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10163/4/3380F229-CDBE-487A-8ACF-708A4D32CB79/subtitles/eng/prog_index.m3u8 -c copy "Session - 10163 temp.vtt"
ffmpeg -i "Session - 10163 temp.mp4" -i "Session - 10163 temp.aac" -i "Session - 10163 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10163 - Discover Swift enhancements in the Vision framework (1080p).mp4"
rm "Session - 10163 temp.vtt"
rm "Session - 10163 temp.mp4"
rm "Session - 10163 temp.aac"

# 16
# Session 10209 - Enhanced suggestions for your journaling app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10209 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10209 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10209/5/B042C450-AC1C-4278-BAA3-1D35E738E141/subtitles/eng/prog_index.m3u8 -c copy "Session - 10209 temp.vtt"
ffmpeg -i "Session - 10209 temp.mp4" -i "Session - 10209 temp.aac" -i "Session - 10209 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10209 - Enhanced suggestions for your journaling app (1080p).mp4"
rm "Session - 10209 temp.vtt"
rm "Session - 10209 temp.mp4"
rm "Session - 10209 temp.aac"

# 17
# Session 10062 - Explore App Store server APIs for In-App Purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10062/4/1FA107E6-CAC2-4A88-978C-59A194F8B613/subtitles/eng/prog_index.m3u8 -c copy "Session - 10062 temp.vtt"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -i "Session - 10062 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10062 - Explore App Store server APIs for In-App Purchase (1080p).mp4"
rm "Session - 10062 temp.vtt"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 18
# Session 10216 - Explore the Swift on Server ecosystem
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10216 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10216 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10216/4/DB423F7B-5B55-47AE-958F-68C8BF6077A6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10216 temp.vtt"
ffmpeg -i "Session - 10216 temp.mp4" -i "Session - 10216 temp.aac" -i "Session - 10216 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10216 - Explore the Swift on Server ecosystem (1080p).mp4"
rm "Session - 10216 temp.vtt"
rm "Session - 10216 temp.mp4"
rm "Session - 10216 temp.aac"

# 19
# Session 10083 - Get started with HealthKit in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10083 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10083 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10083/4/3EDC61A5-EEBF-48EB-9CB9-9AC6F587005E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10083 temp.vtt"
ffmpeg -i "Session - 10083 temp.mp4" -i "Session - 10083 temp.aac" -i "Session - 10083 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10083 - Get started with HealthKit in visionOS (1080p).mp4"
rm "Session - 10083 temp.vtt"
rm "Session - 10083 temp.mp4"
rm "Session - 10083 temp.aac"

# 20
# Session 10162 - Keep colors consistent across captures
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10162/4/8F68B3B4-3EF6-4291-8940-FC4AD3151DAC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - Keep colors consistent across captures (1080p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 21
# Session 10117 - Meet the Translation API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10117/4/A394FB66-E7F5-4CB3-B2ED-697AD5C8CC7B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - Meet the Translation API (1080p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 22
# Session 10186 - Optimize your 3D assets for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10186 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10186 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10186/4/D1CE3777-9DAD-4412-B8BD-30EEF377C927/subtitles/eng/prog_index.m3u8 -c copy "Session - 10186 temp.vtt"
ffmpeg -i "Session - 10186 temp.mp4" -i "Session - 10186 temp.aac" -i "Session - 10186 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10186 - Optimize your 3D assets for spatial computing (1080p).mp4"
rm "Session - 10186 temp.vtt"
rm "Session - 10186 temp.mp4"
rm "Session - 10186 temp.aac"

# 23
# Session 10198 - Run, Break, Inspect - Explore effective debugging in LLDB
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10198 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10198 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10198/4/A6D919A0-000B-4A54-AE83-6F261757D780/subtitles/eng/prog_index.m3u8 -c copy "Session - 10198 temp.vtt"
ffmpeg -i "Session - 10198 temp.mp4" -i "Session - 10198 temp.aac" -i "Session - 10198 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10198 - Run, Break, Inspect - Explore effective debugging in LLDB (1080p).mp4"
rm "Session - 10198 temp.vtt"
rm "Session - 10198 temp.mp4"
rm "Session - 10198 temp.aac"

# 24
# Session 10131 - Support semantic search with Core Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10131/5/537550D3-98A7-4C5B-B4BC-CD55CDAD3547/subtitles/eng/prog_index.m3u8 -c copy "Session - 10131 temp.vtt"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -i "Session - 10131 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10131 - Support semantic search with Core Spotlight (1080p).mp4"
rm "Session - 10131 temp.vtt"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 25
# Session 10148 - Tailor macOS windows with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10148/4/B76C6719-6B90-4EA9-9EDA-03C08C4A02AA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - Tailor macOS windows with SwiftUI (1080p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 26
# Session 10097 - Unlock the power of places with MapKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10097/4/D991C391-4CC9-4A32-A10F-9D4DC6D7B615/subtitles/eng/prog_index.m3u8 -c copy "Session - 10097 temp.vtt"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -i "Session - 10097 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10097 - Unlock the power of places with MapKit (1080p).mp4"
rm "Session - 10097 temp.vtt"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 27
# Session 10212 - What’s new in location authorization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10212 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10212 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10212/4/4E06515C-912A-4159-8C07-9468D1209F8F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10212 temp.vtt"
ffmpeg -i "Session - 10212 temp.mp4" -i "Session - 10212 temp.aac" -i "Session - 10212 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10212 - What’s new in location authorization (1080p).mp4"
rm "Session - 10212 temp.vtt"
rm "Session - 10212 temp.mp4"
rm "Session - 10212 temp.aac"

# 28
# Session 10123 - What’s new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10123/4/E2DC4225-17E5-4A2E-9F66-DE96A0D8C44B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10123 temp.vtt"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -i "Session - 10123 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10123 - What’s new in privacy (1080p).mp4"
rm "Session - 10123 temp.vtt"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 29
# Session 10188 - What’s new in SF Symbols 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10188 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10188 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10188/4/9CA82C68-1A72-425B-93F6-9CE006A119E4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10188 temp.vtt"
ffmpeg -i "Session - 10188 temp.mp4" -i "Session - 10188 temp.aac" -i "Session - 10188 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10188 - What’s new in SF Symbols 6 (1080p).mp4"
rm "Session - 10188 temp.vtt"
rm "Session - 10188 temp.mp4"
rm "Session - 10188 temp.aac"
