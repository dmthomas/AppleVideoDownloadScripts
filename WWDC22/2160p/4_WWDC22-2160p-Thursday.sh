# Script to download Thursday's WWDC 22 session videos in the highest 4K video and audio
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
# Session 10147 - Create a great video playback experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10147/5/B7675782-6F3F-4D44-B56D-06CCE29D9E22/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Create a great video playback experience (2160p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 2
# Session 10022 - Create camera extensions with Core Media IO
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10022 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10022 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10022/4/B324E885-0D9B-4F3F-A914-C25C8F4B5B1C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10022 temp.vtt"
ffmpeg -i "Session - 10022 temp.mp4" -i "Session - 10022 temp.aac" -i "Session - 10022 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10022 - Create camera extensions with Core Media IO (2160p).mp4"
rm "Session - 10022 temp.vtt"
rm "Session - 10022 temp.mp4"
rm "Session - 10022 temp.aac"

# 3
# Session 10100 - Create Safari Web Inspector Extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10100/8/7E160FF7-856D-4B6E-BE75-633EF8C15CA5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Create Safari Web Inspector Extensions (2160p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 4
# Session 110370 - Debug Swift debugging with LLDB
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110370 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110370 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110370/7/31CCC67C-D5AC-4493-AFB4-7B833E2B8162/subtitles/eng/prog_index.m3u8 -c copy "Session - 110370 temp.vtt"
ffmpeg -i "Session - 110370 temp.mp4" -i "Session - 110370 temp.aac" -i "Session - 110370 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110370 - Debug Swift debugging with LLDB (2160p).mp4"
rm "Session - 110370 temp.vtt"
rm "Session - 110370 temp.mp4"
rm "Session - 110370 temp.aac"

# 5
# Session 110375 - Deep dive into Xcode Cloud for teams
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110375 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110375 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110375/4/EFB62CCB-AFBC-4FB5-9589-E46AE38F7AB3/subtitles/eng/prog_index.m3u8 -c copy "Session - 110375 temp.vtt"
ffmpeg -i "Session - 110375 temp.mp4" -i "Session - 110375 temp.aac" -i "Session - 110375 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110375 - Deep dive into Xcode Cloud for teams (2160p).mp4"
rm "Session - 110375 temp.vtt"
rm "Session - 110375 temp.mp4"
rm "Session - 110375 temp.aac"

# 6
# Session 110364 - Demystify parallelization in Xcode builds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110364 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110364 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110364/4/BA2A87DE-2A6F-4BB2-A81F-2403413E96AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 110364 temp.vtt"
ffmpeg -i "Session - 110364 temp.mp4" -i "Session - 110364 temp.aac" -i "Session - 110364 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110364 - Demystify parallelization in Xcode builds (2160p).mp4"
rm "Session - 110364 temp.vtt"
rm "Session - 110364 temp.mp4"
rm "Session - 110364 temp.aac"

# 7
# Session 10034 - Design for Arabic
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10034 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10034 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10034/4/09670B48-23F9-4B12-87A7-05A34F146625/subtitles/eng/prog_index.m3u8 -c copy "Session - 10034 temp.vtt"
ffmpeg -i "Session - 10034 temp.mp4" -i "Session - 10034 temp.aac" -i "Session - 10034 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10034 - Design for Arabic (2160p).mp4"
rm "Session - 10034 temp.vtt"
rm "Session - 10034 temp.mp4"
rm "Session - 10034 temp.aac"

# 8
# Session 110441 - Design for Arabic · صمّم بالعربي
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110441 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110441 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110441/4/C8C3F26A-9D07-41B4-A006-585B5F484C08/subtitles/eng/prog_index.m3u8 -c copy "Session - 110441 temp.vtt"
ffmpeg -i "Session - 110441 temp.mp4" -i "Session - 110441 temp.aac" -i "Session - 110441 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110441 - Design for Arabic · صمّم بالعربي (2160p).mp4"
rm "Session - 110441 temp.vtt"
rm "Session - 110441 temp.mp4"
rm "Session - 110441 temp.aac"

# 9
# Session 10015 - Design for Collaboration with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10015/4/EE2F3B42-E5BA-4A10-99CE-3BBF209E1035/subtitles/eng/prog_index.m3u8 -c copy "Session - 10015 temp.vtt"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -i "Session - 10015 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10015 - Design for Collaboration with Messages (2160p).mp4"
rm "Session - 10015 temp.vtt"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 10
# Session 110353 - Design protocol interfaces in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110353 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110353 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110353/4/518CFD38-CEE9-4052-8DB9-6692741930F2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110353 temp.vtt"
ffmpeg -i "Session - 110353 temp.mp4" -i "Session - 110353 temp.aac" -i "Session - 110353 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110353 - Design protocol interfaces in Swift (2160p).mp4"
rm "Session - 110353 temp.vtt"
rm "Session - 110353 temp.mp4"
rm "Session - 110353 temp.aac"

# 11
# Session 10126 - Discover ARKit 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10126 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10126 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10126/4/042EC236-E96E-4969-A68A-1D379C84D647/subtitles/eng/prog_index.m3u8 -c copy "Session - 10126 temp.vtt"
ffmpeg -i "Session - 10126 temp.mp4" -i "Session - 10126 temp.aac" -i "Session - 10126 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10126 - Discover ARKit 6 (2160p).mp4"
rm "Session - 10126 temp.vtt"
rm "Session - 10126 temp.mp4"
rm "Session - 10126 temp.aac"

# 12
# Session 10132 - Discover PhotoKit change history
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10132/3/E1001357-38F4-429C-A7E2-495996D84893/subtitles/eng/prog_index.m3u8 -c copy "Session - 10132 temp.vtt"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -i "Session - 10132 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10132 - Discover PhotoKit change history (2160p).mp4"
rm "Session - 10132 temp.vtt"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"

# 13
# Session 10053 - Discover Sign in with Apple at Work & School
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10053/4/8898553F-A636-4C8D-AAAF-DE7463409879/subtitles/eng/prog_index.m3u8 -c copy "Session - 10053 temp.vtt"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -i "Session - 10053 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10053 - Discover Sign in with Apple at Work & School (2160p).mp4"
rm "Session - 10053 temp.vtt"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 14
# Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/cc/en/en.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI (2160p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 14b HDR
# Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/hdr10_hvc_2160p_20000/prog_index.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6610-wbTYzbGrJjXGpwDYrMCraMxm/cc/en/en.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Display EDR content with Core Image, Metal, and SwiftUI (2160p HDR).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 15
# Session 110565 - Display HDR video in EDR with AVFoundation and Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110565 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110565 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110565/4/46CD2F39-5184-416E-A4F4-E57AEAF92AC8/subtitles/eng/prog_index.m3u8 -c copy "Session - 110565 temp.vtt"
ffmpeg -i "Session - 110565 temp.mp4" -i "Session - 110565 temp.aac" -i "Session - 110565 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110565 - Display HDR video in EDR with AVFoundation and Metal (2160p).mp4"
rm "Session - 110565 temp.vtt"
rm "Session - 110565 temp.mp4"
rm "Session - 110565 temp.aac"

# 16
# Session 10122 - Enhance your Sign in with Apple experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10122/5/F35FC4AA-E76F-444D-85D0-77A76E7D3E15/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Enhance your Sign in with Apple experience (2160p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 17
# Session 10120 - Evolve your Core Data schema
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10120/5/7685DE64-40AC-4C35-9865-8CDA798501E4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10120 temp.vtt"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -i "Session - 10120 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10120 - Evolve your Core Data schema (2160p).mp4"
rm "Session - 10120 temp.vtt"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 18
# Session 10166 - Explore App Tracking Transparency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10166/3/144ECF3D-FAB1-44D1-A265-90946F21F612/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Explore App Tracking Transparency (2160p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 19
# Session 110335 - Explore Apple Business Essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110335 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110335 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110335/4/0F40B105-473E-42E2-A5BD-C33EE3C6B743/subtitles/eng/prog_index.m3u8 -c copy "Session - 110335 temp.vtt"
ffmpeg -i "Session - 110335 temp.mp4" -i "Session - 110335 temp.aac" -i "Session - 110335 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110335 - Explore Apple Business Essentials (2160p).mp4"
rm "Session - 110335 temp.vtt"
rm "Session - 110335 temp.mp4"
rm "Session - 110335 temp.aac"

# 20
# Session 10001 - Explore navigation design for iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10001 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10001 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10001/4/8F64C0B4-8E12-4C78-A0CB-8B7239AA5D4B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10001 temp.vtt"
ffmpeg -i "Session - 10001 temp.mp4" -i "Session - 10001 temp.aac" -i "Session - 10001 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10001 - Explore navigation design for iOS (2160p).mp4"
rm "Session - 10001 temp.vtt"
rm "Session - 10001 temp.mp4"
rm "Session - 10001 temp.aac"

# 21
# Session 10107 - Get it right (to left)
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10107 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10107 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10107/3/85B12DD5-27C3-420C-97F8-4C71326BB3D0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10107 temp.vtt"
ffmpeg -i "Session - 10107 temp.mp4" -i "Session - 10107 temp.aac" -i "Session - 10107 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10107 - Get it right (to left) (2160p).mp4"
rm "Session - 10107 temp.vtt"
rm "Session - 10107 temp.mp4"
rm "Session - 10107 temp.aac"

# 22
# Session 10101 - Go bindless with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10101/4/E7651C9D-CAC8-44A9-9BF8-8D0DC317F4A2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Go bindless with Metal 3 (2160p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 23
# Session 10051 - Go further with Complications in WidgetKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10051 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10051 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10051/3/912F72F4-A83D-4923-A276-8B231CB7D837/subtitles/eng/prog_index.m3u8 -c copy "Session - 10051 temp.vtt"
ffmpeg -i "Session - 10051 temp.mp4" -i "Session - 10051 temp.aac" -i "Session - 10051 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10051 - Go further with Complications in WidgetKit (2160p).mp4"
rm "Session - 10051 temp.vtt"
rm "Session - 10051 temp.mp4"
rm "Session - 10051 temp.aac"

# 24
# Session 110363 - Improve app size and runtime performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110363 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110363 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110363/4/4D40D7E0-771C-43BE-A0B9-7948E0C69CE0/subtitles/eng/prog_index.m3u8 -c copy "Session - 110363 temp.vtt"
ffmpeg -i "Session - 110363 temp.mp4" -i "Session - 110363 temp.aac" -i "Session - 110363 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110363 - Improve app size and runtime performance (2160p).mp4"
rm "Session - 110363 temp.vtt"
rm "Session - 110363 temp.mp4"
rm "Session - 110363 temp.aac"

# 25
# Session 10139 - Make a great SharePlay experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10139 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10139 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10139/5/67B2BB72-D5FC-4EAE-834D-E7D562F22A4D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10139 temp.vtt"
ffmpeg -i "Session - 10139 temp.mp4" -i "Session - 10139 temp.aac" -i "Session - 10139 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10139 - Make a great SharePlay experience (2160p).mp4"
rm "Session - 10139 temp.vtt"
rm "Session - 10139 temp.mp4"
rm "Session - 10139 temp.aac"

# 26
# Session 10105 - Maximize your Metal ray tracing performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10105/7/A0348CEB-F711-422B-9FA4-D1A0E1DB8BF8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - Maximize your Metal ray tracing performance (2160p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 27
# Session 110359 - Meet Swift Package plugins
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110359 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110359 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110359/6/0515ED86-51DB-430A-9521-E5DB4FC59C61/subtitles/eng/prog_index.m3u8 -c copy "Session - 110359 temp.vtt"
ffmpeg -i "Session - 110359 temp.mp4" -i "Session - 110359 temp.aac" -i "Session - 110359 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110359 - Meet Swift Package plugins (2160p).mp4"
rm "Session - 110359 temp.vtt"
rm "Session - 110359 temp.mp4"
rm "Session - 110359 temp.aac"

# 28
# Session 10064 - Reach new players with Game Center dashboard
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10064 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10064 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10064/9/B7DD74D7-2555-495C-9DA2-8A9B7D0C6D8B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10064 temp.vtt"
ffmpeg -i "Session - 10064 temp.mp4" -i "Session - 10064 temp.aac" -i "Session - 10064 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10064 - Reach new players with Game Center dashboard (2160p).mp4"
rm "Session - 10064 temp.vtt"
rm "Session - 10064 temp.mp4"
rm "Session - 10064 temp.aac"

# 29
# Session 10078 - Reduce networking delays for a more responsive app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10078/4/688F144C-0F4D-4F7B-B77A-F10A56978C49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10078 temp.vtt"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -i "Session - 10078 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10078 - Reduce networking delays for a more responsive app (2160p).mp4"
rm "Session - 10078 temp.vtt"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 30
# Session 110367 - Simplify C++ templates with concepts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110367 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110367 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110367/3/0C225661-78FA-4245-9A79-C80C825B2DBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 110367 temp.vtt"
ffmpeg -i "Session - 110367 temp.mp4" -i "Session - 110367 temp.aac" -i "Session - 110367 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110367 - Simplify C++ templates with concepts (2160p).mp4"
rm "Session - 110367 temp.vtt"
rm "Session - 110367 temp.mp4"
rm "Session - 110367 temp.aac"

# 31
# Session 110343 - SwiftUI on iPad - Add toolbars, titles, and more
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110343 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110343 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110343/4/61E55FAE-4837-4DAF-912C-8D101B7DF820/subtitles/eng/prog_index.m3u8 -c copy "Session - 110343 temp.vtt"
ffmpeg -i "Session - 110343 temp.mp4" -i "Session - 110343 temp.aac" -i "Session - 110343 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110343 - SwiftUI on iPad - Add toolbars, titles, and more (2160p).mp4"
rm "Session - 110343 temp.vtt"
rm "Session - 110343 temp.mp4"
rm "Session - 110343 temp.aac"

# 32
# Session 10058 - SwiftUI on iPad - Organize your interface
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10058/3/A2E41140-1058-4AFF-BF2C-5058A6588994/subtitles/eng/prog_index.m3u8 -c copy "Session - 10058 temp.vtt"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -i "Session - 10058 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10058 - SwiftUI on iPad - Organize your interface (2160p).mp4"
rm "Session - 10058 temp.vtt"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"

# 33
# Session 10059 - The craft of SwiftUI API design - Progressive disclosure
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10059 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10059 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10059/3/689200F0-E14A-4B93-A3B2-7D95D747540F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10059 temp.vtt"
ffmpeg -i "Session - 10059 temp.mp4" -i "Session - 10059 temp.aac" -i "Session - 10059 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10059 - The craft of SwiftUI API design - Progressive disclosure (2160p).mp4"
rm "Session - 10059 temp.vtt"
rm "Session - 10059 temp.mp4"
rm "Session - 10059 temp.aac"

# 34
# Session 10082 - Track down hangs with Xcode and on-device detection
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10082 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10082 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10082/5/31EEEDCE-D908-48E8-AEDA-A40811515F69/subtitles/eng/prog_index.m3u8 -c copy "Session - 10082 temp.vtt"
ffmpeg -i "Session - 10082 temp.mp4" -i "Session - 10082 temp.aac" -i "Session - 10082 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10082 - Track down hangs with Xcode and on-device detection (2160p).mp4"
rm "Session - 10082 temp.vtt"
rm "Session - 10082 temp.mp4"
rm "Session - 10082 temp.aac"

# 35
# Session 10162 - Transform your geometry with Metal mesh shaders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/4/73A0BA60-7BD8-4F42-A557-3317B53C7778/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10162 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/4/73A0BA60-7BD8-4F42-A557-3317B53C7778/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10162 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10162/4/73A0BA60-7BD8-4F42-A557-3317B53C7778/subtitles/eng/prog_index.m3u8 -c copy "Session - 10162 temp.vtt"
ffmpeg -i "Session - 10162 temp.mp4" -i "Session - 10162 temp.aac" -i "Session - 10162 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10162 - Transform your geometry with Metal mesh shaders (2160p).mp4"
rm "Session - 10162 temp.vtt"
rm "Session - 10162 temp.mp4"
rm "Session - 10162 temp.aac"

# 36
# Session 10075 - Use SwiftUI with AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10075/5/041C40B8-2F14-4B08-8406-CFCE8E85A1B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10075 temp.vtt"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -i "Session - 10075 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10075 - Use SwiftUI with AppKit (2160p).mp4"
rm "Session - 10075 temp.vtt"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 37
# Session 10072 - Use SwiftUI with UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10072 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10072 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10072/4/03036EB8-1A2E-4ADD-A5A3-C50A9AFA841C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10072 temp.vtt"
ffmpeg -i "Session - 10072 temp.mp4" -i "Session - 10072 temp.aac" -i "Session - 10072 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10072 - Use SwiftUI with UIKit (2160p).mp4"
rm "Session - 10072 temp.vtt"
rm "Session - 10072 temp.mp4"
rm "Session - 10072 temp.aac"

# 38
# Session 10043 - What's new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10043 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10043 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10043/3/F1797DDF-C678-4B65-9571-42C3B99B40B8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10043 temp.vtt"
ffmpeg -i "Session - 10043 temp.mp4" -i "Session - 10043 temp.aac" -i "Session - 10043 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10043 - What's new in App Store Connect (2160p).mp4"
rm "Session - 10043 temp.vtt"
rm "Session - 10043 temp.mp4"
rm "Session - 10043 temp.aac"

# 39
# Session 10035 - What's new in MapKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10035 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10035 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10035/5/78F0B50C-C39D-4819-88A0-A1167D43FD7E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10035 temp.vtt"
ffmpeg -i "Session - 10035 temp.mp4" -i "Session - 10035 temp.aac" -i "Session - 10035 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10035 - What's new in MapKit (2160p).mp4"
rm "Session - 10035 temp.vtt"
rm "Session - 10035 temp.mp4"
rm "Session - 10035 temp.aac"

# 40
# Session 10039 - What's new in StoreKit testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10039/5/38FCCB56-38F1-4E4D-B7D0-CF031642775A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10039 temp.vtt"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -i "Session - 10039 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10039 - What's new in StoreKit testing (2160p).mp4"
rm "Session - 10039 temp.vtt"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 41
# Session 10090 - What's new in TextKit and text views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10090 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10090 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10090/4/5A0AE4B4-BE39-434E-8B9E-0910F2FD152D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10090 temp.vtt"
ffmpeg -i "Session - 10090 temp.mp4" -i "Session - 10090 temp.aac" -i "Session - 10090 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10090 - What's new in TextKit and text views (2160p).mp4"
rm "Session - 10090 temp.vtt"
rm "Session - 10090 temp.mp4"
rm "Session - 10090 temp.aac"

# 42
# Session 10023 - What's new in the Photos picker
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10023/3/7AAE9501-211F-4201-B017-2AAC7F0C2556/subtitles/eng/prog_index.m3u8 -c copy "Session - 10023 temp.vtt"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -i "Session - 10023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10023 - What's new in the Photos picker (2160p).mp4"
rm "Session - 10023 temp.vtt"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 43
# Session 10024 - What's new in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10024 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10024 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10024/3/9BD19E63-1BFD-49E9-A941-5CA5A937682C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10024 temp.vtt"
ffmpeg -i "Session - 10024 temp.mp4" -i "Session - 10024 temp.aac" -i "Session - 10024 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10024 - What's new in Vision (2160p).mp4"
rm "Session - 10024 temp.vtt"
rm "Session - 10024 temp.mp4"
rm "Session - 10024 temp.aac"

# 44
# Session 10153 - What's new in web accessibility
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10153/6/390C5399-8CDD-4D3E-8701-29B14E042A94/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - What's new in web accessibility (2160p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 45
# Session 10145 - What’s new in HLS Interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10145/4/1BA9D9C4-C8EC-4D33-A67A-2DFEBD032041/subtitles/eng/prog_index.m3u8 -c copy "Session - 10145 temp.vtt"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -i "Session - 10145 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10145 - What’s new in HLS Interstitials (2160p).mp4"
rm "Session - 10145 temp.vtt"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 46
# Session 10037 - Writing for interfaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10037/6/63F99354-D35D-475C-8069-74E58C813299/subtitles/eng/prog_index.m3u8 -c copy "Session - 10037 temp.vtt"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -i "Session - 10037 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10037 - Writing for interfaces (2160p).mp4"
rm "Session - 10037 temp.vtt"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"
