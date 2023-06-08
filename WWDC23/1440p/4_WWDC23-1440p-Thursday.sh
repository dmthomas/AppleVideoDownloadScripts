# Script to download Thursday's WWDC 23 session videos in the highest 1440p video and audio
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
# Session 10258 - Animate symbols in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10258 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10258 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10258/4/F5972AFA-C206-4702-9005-E146CE71FC29/subtitles/eng/prog_index.m3u8 -c copy "Session - 10258 temp.vtt"
ffmpeg -i "Session - 10258 temp.mp4" -i "Session - 10258 temp.aac" -i "Session - 10258 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10258 - Animate symbols in your app (1440p).mp4"
rm "Session - 10258 temp.vtt"
rm "Session - 10258 temp.mp4"
rm "Session - 10258 temp.aac"

# 2
# Session 10170 - Beyond the basics of structured concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10170/5/4608ED1F-4D83-4444-83A0-DF3EACCE4369/subtitles/eng/prog_index.m3u8 -c copy "Session - 10170 temp.vtt"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -i "Session - 10170 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10170 - Beyond the basics of structured concurrency (1440p).mp4"
rm "Session - 10170 temp.vtt"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 3
# Session 10023 - Build a multi-device workout app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10023/4/4BFDA0EE-E7FB-44E3-BB58-F46D18A9802C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10023 temp.vtt"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -i "Session - 10023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10023 - Build a multi-device workout app (1440p).mp4"
rm "Session - 10023 temp.vtt"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 4
# Session 10056 - Build better document-based apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10056/4/288B8B11-EFDD-4A1E-8F4E-B5C863A03ADC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10056 temp.vtt"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -i "Session - 10056 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10056 - Build better document-based apps (1440p).mp4"
rm "Session - 10056 temp.vtt"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 5
# Session 10006 - Build robust and resumable file transfers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10006 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10006 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10006/4/62804C33-C167-4D42-9E12-390AED4A4EE1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10006 temp.vtt"
ffmpeg -i "Session - 10006 temp.mp4" -i "Session - 10006 temp.aac" -i "Session - 10006 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10006 - Build robust and resumable file transfers (1440p).mp4"
rm "Session - 10006 temp.vtt"
rm "Session - 10006 temp.mp4"
rm "Session - 10006 temp.aac"

# 6
# Session 10087 - Build spatial SharePlay experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10087/4/36E3D439-2B36-408C-9249-3929F2E75FBD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10087 temp.vtt"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -i "Session - 10087 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10087 - Build spatial SharePlay experiences (1440p).mp4"
rm "Session - 10087 temp.vtt"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 7
# Session 10274 - Create 3D models for Quick Look spatial experiences 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10274 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10274 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10274/4/4A316968-7638-42C9-AAD2-2B26F8A8B1F5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10274 temp.vtt"
ffmpeg -i "Session - 10274 temp.mp4" -i "Session - 10274 temp.aac" -i "Session - 10274 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10274 - Create 3D models for Quick Look spatial experiences  (1440p).mp4"
rm "Session - 10274 temp.vtt"
rm "Session - 10274 temp.mp4"
rm "Session - 10274 temp.aac"

# 8
# Session 10070 - Create a great spatial playback experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10070/5/8192B69D-E456-4AA8-94E8-9B102FFA6A3A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Create a great spatial playback experience (1440p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 9
# Session 10278 - Create practical workflows in Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10278 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10278 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10278/4/A5414C99-EB05-48CC-B09F-9A322FBEF0C6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10278 temp.vtt"
ffmpeg -i "Session - 10278 temp.mp4" -i "Session - 10278 temp.aac" -i "Session - 10278 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10278 - Create practical workflows in Xcode Cloud (1440p).mp4"
rm "Session - 10278 temp.vtt"
rm "Session - 10278 temp.mp4"
rm "Session - 10278 temp.aac"

# 10
# Session 10160 - Demystify SwiftUI performance
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10160/4/0FB203F2-03CD-4D44-B33B-C568C5A64F63/subtitles/eng/prog_index.m3u8 -c copy "Session - 10160 temp.vtt"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -i "Session - 10160 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10160 - Demystify SwiftUI performance (1440p).mp4"
rm "Session - 10160 temp.vtt"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 11
# Session 10194 - Design dynamic Live Activities 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10194 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10194 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10194/5/1F92A457-3B0A-4F2A-A29C-9EC6753BEC87/subtitles/eng/prog_index.m3u8 -c copy "Session - 10194 temp.vtt"
ffmpeg -i "Session - 10194 temp.mp4" -i "Session - 10194 temp.aac" -i "Session - 10194 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10194 - Design dynamic Live Activities  (1440p).mp4"
rm "Session - 10194 temp.vtt"
rm "Session - 10194 temp.mp4"
rm "Session - 10194 temp.aac"

# 12
# Session 10193 - Design Shortcuts for Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10193 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10193 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10193/4/A4E5EF33-9EA3-4609-AB6E-A3E7DF0923FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10193 temp.vtt"
ffmpeg -i "Session - 10193 temp.mp4" -i "Session - 10193 temp.aac" -i "Session - 10193 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10193 - Design Shortcuts for Spotlight (1440p).mp4"
rm "Session - 10193 temp.vtt"
rm "Session - 10193 temp.mp4"
rm "Session - 10193 temp.aac"

# 13
# Session 10085 - Discover Quick Look for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10085/4/6383EC8A-F55A-4286-A743-31FE670C9CD7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10085 temp.vtt"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -i "Session - 10085 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10085 - Discover Quick Look for spatial computing (1440p).mp4"
rm "Session - 10085 temp.vtt"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 14
# Session 10254 - Do more with Managed Apple IDs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10254 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10254 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10254/4/3B910C3D-7545-4B14-8026-F17576CCE0E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10254 temp.vtt"
ffmpeg -i "Session - 10254 temp.mp4" -i "Session - 10254 temp.aac" -i "Session - 10254 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10254 - Do more with Managed Apple IDs (1440p).mp4"
rm "Session - 10254 temp.vtt"
rm "Session - 10254 temp.mp4"
rm "Session - 10254 temp.aac"

# 15
# Session 10122 - Explore media formats for the web
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10122/6/8D4F2F56-BA71-41C2-987B-9C8D656D60AF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10122 temp.vtt"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -i "Session - 10122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10122 - Explore media formats for the web (1440p).mp4"
rm "Session - 10122 temp.vtt"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 16
# Session 10037 - Explore pie charts and interactivity in Swift Charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10037/4/77026DAB-A5CB-4FD8-8516-5E63DD12C236/subtitles/eng/prog_index.m3u8 -c copy "Session - 10037 temp.vtt"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -i "Session - 10037 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10037 - Explore pie charts and interactivity in Swift Charts (1440p).mp4"
rm "Session - 10037 temp.vtt"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"

# 17
# Session 10095 - Explore rendering for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10095/4/CCE7B88E-E0C4-4BA3-87E7-9C1D644FA6CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10095 temp.vtt"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -i "Session - 10095 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10095 - Explore rendering for spatial computing (1440p).mp4"
rm "Session - 10095 temp.vtt"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 18
# Session 10033 - Extend Speech Synthesis with personal and custom voices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10033 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10033 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10033/4/2BED83CA-28F2-4B53-ACB4-EF89AB371676/subtitles/eng/prog_index.m3u8 -c copy "Session - 10033 temp.vtt"
ffmpeg -i "Session - 10033 temp.mp4" -i "Session - 10033 temp.aac" -i "Session - 10033 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10033 - Extend Speech Synthesis with personal and custom voices (1440p).mp4"
rm "Session - 10033 temp.vtt"
rm "Session - 10033 temp.mp4"
rm "Session - 10033 temp.aac"

# 19
# Session 10111 - Go beyond the window with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10111 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10111 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10111/4/D880BF62-C9CB-46EC-B2A2-802877B189DB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10111 temp.vtt"
ffmpeg -i "Session - 10111 temp.mp4" -i "Session - 10111 temp.aac" -i "Session - 10111 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10111 - Go beyond the window with SwiftUI (1440p).mp4"
rm "Session - 10111 temp.vtt"
rm "Session - 10111 temp.mp4"
rm "Session - 10111 temp.aac"

# 20
# Session 10049 - Improve Core ML integration with async prediction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10049/4/2E4BF7CE-8624-47ED-90A6-AFF972EEF0D8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10049 temp.vtt"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -i "Session - 10049 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10049 - Improve Core ML integration with async prediction (1440p).mp4"
rm "Session - 10049 temp.vtt"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"

# 21
# Session 10304 - Integrate with motorized iPhone stands using DockKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10304 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10304 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10304/4/F0FF6E30-0DEE-40FF-B969-616952919D33/subtitles/eng/prog_index.m3u8 -c copy "Session - 10304 temp.vtt"
ffmpeg -i "Session - 10304 temp.mp4" -i "Session - 10304 temp.aac" -i "Session - 10304 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10304 - Integrate with motorized iPhone stands using DockKit (1440p).mp4"
rm "Session - 10304 temp.vtt"
rm "Session - 10304 temp.mp4"
rm "Session - 10304 temp.aac"

# 22
# Session 10147 - Meet Core Location Monitor
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10147/4/D414CF50-4EF2-43CA-B57D-0FB2F054F2FA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Meet Core Location Monitor (1440p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 23
# Session 10143 - Meet the App Store Server Library 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10143/4/2A530FC7-FDC1-4CB7-AE05-57F3F22675C7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10143 temp.vtt"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -i "Session - 10143 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10143 - Meet the App Store Server Library  (1440p).mp4"
rm "Session - 10143 temp.vtt"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 24
# Session 10189 - Migrate to SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10189 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10189 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10189/4/87485DA7-96D9-41FA-979E-1D0224B540C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10189 temp.vtt"
ffmpeg -i "Session - 10189 temp.mp4" -i "Session - 10189 temp.aac" -i "Session - 10189 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10189 - Migrate to SwiftData (1440p).mp4"
rm "Session - 10189 temp.vtt"
rm "Session - 10189 temp.mp4"
rm "Session - 10189 temp.aac"

# 25
# Session 10127 - Optimize GPU renderers with Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10127 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10127 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10127/4/3C0D2C8A-18E1-4D60-8A77-71F7166622AE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10127 temp.vtt"
ffmpeg -i "Session - 10127 temp.mp4" -i "Session - 10127 temp.aac" -i "Session - 10127 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10127 - Optimize GPU renderers with Metal (1440p).mp4"
rm "Session - 10127 temp.vtt"
rm "Session - 10127 temp.mp4"
rm "Session - 10127 temp.aac"

# 26
# Session 10050 - Optimize machine learning for Metal apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10050 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10050 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10050/3/F8F473D7-87C0-4FB5-91DD-2E665CFC4239/subtitles/eng/prog_index.m3u8 -c copy "Session - 10050 temp.vtt"
ffmpeg -i "Session - 10050 temp.mp4" -i "Session - 10050 temp.aac" -i "Session - 10050 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10050 - Optimize machine learning for Metal apps (1440p).mp4"
rm "Session - 10050 temp.vtt"
rm "Session - 10050 temp.mp4"
rm "Session - 10050 temp.aac"

# 27
# Session 10266 - Protect your Mac app with environment constraints
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10266 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10266 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10266/4/24189FC4-EAA7-44E2-B039-930BF35F451F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10266 temp.vtt"
ffmpeg -i "Session - 10266 temp.mp4" -i "Session - 10266 temp.aac" -i "Session - 10266 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10266 - Protect your Mac app with environment constraints (1440p).mp4"
rm "Session - 10266 temp.vtt"
rm "Session - 10266 temp.mp4"
rm "Session - 10266 temp.aac"

# 28
# Session 10250 - Prototype with Xcode Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10250 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10250 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10250/3/A3F1820C-593C-4DF2-A36B-F95FA81B1BBC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10250 temp.vtt"
ffmpeg -i "Session - 10250 temp.mp4" -i "Session - 10250 temp.aac" -i "Session - 10250 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10250 - Prototype with Xcode Playgrounds (1440p).mp4"
rm "Session - 10250 temp.vtt"
rm "Session - 10250 temp.mp4"
rm "Session - 10250 temp.aac"

# 29
# Session 10004 - Reduce network delays with L4S
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10004 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10004 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10004/4/49EBBF59-4DE7-42C2-AC03-9CD32C46DE74/subtitles/eng/prog_index.m3u8 -c copy "Session - 10004 temp.vtt"
ffmpeg -i "Session - 10004 temp.mp4" -i "Session - 10004 temp.aac" -i "Session - 10004 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10004 - Reduce network delays with L4S (1440p).mp4"
rm "Session - 10004 temp.vtt"
rm "Session - 10004 temp.mp4"
rm "Session - 10004 temp.aac"

# 30
# Session 10106 - Support external cameras in your iPadOS app 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10106/4/AE945003-3B1E-40CF-87F1-BD6F6E3EDD0F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10106 temp.vtt"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -i "Session - 10106 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10106 - Support external cameras in your iPadOS app  (1440p).mp4"
rm "Session - 10106 temp.vtt"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 31
# Session 10185 - Update Live Activities with push notifications
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10185 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10185 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10185/4/1867F512-50A9-4907-A90A-34A7E198BDB7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10185 temp.vtt"
ffmpeg -i "Session - 10185 temp.mp4" -i "Session - 10185 temp.aac" -i "Session - 10185 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10185 - Update Live Activities with push notifications (1440p).mp4"
rm "Session - 10185 temp.vtt"
rm "Session - 10185 temp.mp4"
rm "Session - 10185 temp.aac"

# 32
# Session 10047 - Use Core ML Tools for machine learning model compression
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10047 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10047 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10047/4/E4F2FB98-2605-4693-8FA8-978D1AD634F4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10047 temp.vtt"
ffmpeg -i "Session - 10047 temp.mp4" -i "Session - 10047 temp.aac" -i "Session - 10047 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10047 - Use Core ML Tools for machine learning model compression (1440p).mp4"
rm "Session - 10047 temp.vtt"
rm "Session - 10047 temp.mp4"
rm "Session - 10047 temp.aac"

# 33
# Session 10015 - What's new in App Store pre-orders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10015/4/1BACDF1D-18D0-4971-AED9-7DBB31B3926A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10015 temp.vtt"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -i "Session - 10015 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10015 - What's new in App Store pre-orders (1440p).mp4"
rm "Session - 10015 temp.vtt"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 34
# Session 10108 - What's new in Background Assets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10108/4/ABFECE71-93F9-4920-8A81-C99BB04A5FF3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - What's new in Background Assets (1440p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"

# 35
# Session 10186 - What's new in Core Data
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10186 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10186 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10186/4/169A3CA9-FA4A-40D0-A3A5-3635916BBCCE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10186 temp.vtt"
ffmpeg -i "Session - 10186 temp.mp4" -i "Session - 10186 temp.aac" -i "Session - 10186 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10186 - What's new in Core Data (1440p).mp4"
rm "Session - 10186 temp.vtt"
rm "Session - 10186 temp.mp4"
rm "Session - 10186 temp.aac"

# 36
# Session 10114 - What's new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10114/5/208CF134-3A8A-417E-8DF3-0B8A1F60B130/subtitles/eng/prog_index.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - What's new in Wallet and Apple Pay (1440p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 37
# Session 10136 - What’s new in ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10136/6/998A4D51-FB97-4CB9-959F-65B5827F9926/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - What’s new in ScreenCaptureKit (1440p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 38
# Session 10058 - What’s new with text and text interactions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10058/4/8038A20C-9E59-409E-9C2A-02B517C649A7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10058 temp.vtt"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -i "Session - 10058 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10058 - What’s new with text and text interactions (1440p).mp4"
rm "Session - 10058 temp.vtt"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"
