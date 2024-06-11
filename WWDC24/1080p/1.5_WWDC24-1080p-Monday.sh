# Script to download Monday's WWDC 24 session videos in the highest 1080p video and audio
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
# Session 111976 - 18 things from WWDC24
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 111976 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111976 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111976/1/FF5D2060-A995-4815-90EF-1E40B45F8C91/subtitles/eng/prog_index.m3u8 -c copy "Session - 111976 temp.vtt"
ffmpeg -i "Session - 111976 temp.mp4" -i "Session - 111976 temp.aac" -i "Session - 111976 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111976 - 18 things from WWDC24 (1080p).mp4"
rm "Session - 111976 temp.vtt"
rm "Session - 111976 temp.mp4"
rm "Session - 111976 temp.aac"

# 2
# Session 10067 - Bring context to today’s weather
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10067 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10067 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10067/5/24B0D3B9-2CAA-4132-B63B-EEA93B0837EF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10067 temp.vtt"
ffmpeg -i "Session - 10067 temp.mp4" -i "Session - 10067 temp.aac" -i "Session - 10067 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10067 - Bring context to today’s weather (1080p).mp4"
rm "Session - 10067 temp.vtt"
rm "Session - 10067 temp.mp4"
rm "Session - 10067 temp.aac"

# 3
# Session 10133 - Bring your app to Siri
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10133/4/8167BB3B-00DE-4F39-A88C-4A719DF29D02/subtitles/eng/prog_index.m3u8 -c copy "Session - 10133 temp.vtt"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -i "Session - 10133 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10133 - Bring your app to Siri (1080p).mp4"
rm "Session - 10133 temp.vtt"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 4
# Session 10210 - Bring your app’s core features to users with App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10210/4/6649F1E2-3988-4E91-8A3F-2A5414AA24BC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10210 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10210/4/6649F1E2-3988-4E91-8A3F-2A5414AA24BC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10210 temp.aac"
ffmpeg -i "Session - 10210 temp.mp4" -i "Session - 10210 temp.aac" -c copy "Session 10210 - Bring your app’s core features to users with App Intents (1080p).mp4"
rm "Session - 10210 temp.mp4"
rm "Session - 10210 temp.aac"

# 5
# Session 10068 - Bring your Live Activity to Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10068/4/C621DA91-3F64-481C-8D10-25A5C5FCD587/subtitles/eng/prog_index.m3u8 -c copy "Session - 10068 temp.vtt"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -i "Session - 10068 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10068 - Bring your Live Activity to Apple Watch (1080p).mp4"
rm "Session - 10068 temp.vtt"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 6
# Session 10159 - Bring your machine learning and AI models to Apple silicon
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10159/4/99560AA9-AD18-49FC-9F4D-5F08741EE3AC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Bring your machine learning and AI models to Apple silicon (1080p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 7
# Session 10166 - Build compelling spatial photo and video experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10166/5/6FC98319-6431-448D-9962-370826A7F6FC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10166 temp.vtt"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -i "Session - 10166 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10166 - Build compelling spatial photo and video experiences (1080p).mp4"
rm "Session - 10166 temp.vtt"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 8
# Session 10102 - Compose interactive 3D content in Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10102/4/5895A2B6-4F9A-4D45-A5F6-C7689F50F571/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Compose interactive 3D content in Reality Composer Pro (1080p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 9
# Session 10100 - Create enhanced spatial computing experiences with ARKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10100/4/3F3285E6-7223-427A-A3AE-169CFB35EB37/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Create enhanced spatial computing experiences with ARKit (1080p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 10
# Session 10085 - Design advanced games for Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10085/5/609DB92A-84CB-4E0B-A6C6-E14DB709877C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10085 temp.vtt"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -i "Session - 10085 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10085 - Design advanced games for Apple platforms (1080p).mp4"
rm "Session - 10085 temp.vtt"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 11
# Session 10086 - Design great visionOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10086/4/6FE0562D-9F68-4D33-93C8-EC567EB5E873/subtitles/eng/prog_index.m3u8 -c copy "Session - 10086 temp.vtt"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -i "Session - 10086 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10086 - Design great visionOS apps (1080p).mp4"
rm "Session - 10086 temp.vtt"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 12
# Session 10103 - Discover RealityKit APIs for iOS, macOS and visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10103/4/7209F458-1214-4B58-A6F3-94EED9BF15ED/subtitles/eng/prog_index.m3u8 -c copy "Session - 10103 temp.vtt"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -i "Session - 10103 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10103 - Discover RealityKit APIs for iOS, macOS and visionOS (1080p).mp4"
rm "Session - 10103 temp.vtt"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 13
# Session 10147 - Elevate your tab and sidebar experience in iPadOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10147/4/4B3986F3-DBA0-4C52-8A2E-783346D6D1BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10147 temp.vtt"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -i "Session - 10147 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10147 - Elevate your tab and sidebar experience in iPadOS (1080p).mp4"
rm "Session - 10147 temp.vtt"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 14
# Session 10114 - Enhance ad experiences with HLS interstitials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10114/4/EA8643B4-5978-424A-AFCE-5E8A7D6A6DF1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10114 temp.vtt"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -i "Session - 10114 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10114 - Enhance ad experiences with HLS interstitials (1080p).mp4"
rm "Session - 10114 temp.vtt"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 15
# Session 111801 - Enhance your spatial computing app with RealityKit audio
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 111801 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111801 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111801/4/8F764313-3800-4A2E-AD3F-92C75F4A02C2/subtitles/eng/prog_index.m3u8 -c copy "Session - 111801 temp.vtt"
ffmpeg -i "Session - 111801 temp.mp4" -i "Session - 111801 temp.aac" -i "Session - 111801 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111801 - Enhance your spatial computing app with RealityKit audio (1080p).mp4"
rm "Session - 111801 temp.vtt"
rm "Session - 111801 temp.mp4"
rm "Session - 111801 temp.aac"

# 16
# Session 10223 - Explore machine learning on Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10223 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10223 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10223/4/B42D308D-CF5B-4CC6-A7EA-97E52D3EE41D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10223 temp.vtt"
ffmpeg -i "Session - 10223 temp.mp4" -i "Session - 10223 temp.aac" -i "Session - 10223 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10223 - Explore machine learning on Apple platforms (1080p).mp4"
rm "Session - 10223 temp.vtt"
rm "Session - 10223 temp.mp4"
rm "Session - 10223 temp.aac"

# 17
# Session 10116 - Explore multiview video playback in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10116 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10116 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10116/4/E50DFC91-1CB7-4E9B-B204-72EA322434D8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10116 temp.vtt"
ffmpeg -i "Session - 10116 temp.mp4" -i "Session - 10116 temp.aac" -i "Session - 10116 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10116 - Explore multiview video playback in visionOS (1080p).mp4"
rm "Session - 10116 temp.vtt"
rm "Session - 10116 temp.mp4"
rm "Session - 10116 temp.aac"

# 18
# Session 10101 - Explore object tracking for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10101/4/6F54068C-B055-45B1-97A0-89AA6CFBDDD5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10101 temp.vtt"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -i "Session - 10101 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10101 - Explore object tracking for visionOS (1080p).mp4"
rm "Session - 10101 temp.vtt"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 19
# Session 10139 - Introducing enterprise APIs for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10139/4/E7140B6F-A877-45A2-B8B6-C1A6FB47140B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10139 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10139/4/E7140B6F-A877-45A2-B8B6-C1A6FB47140B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10139 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10139/4/E7140B6F-A877-45A2-B8B6-C1A6FB47140B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10139 temp.vtt"
ffmpeg -i "Session - 10139 temp.mp4" -i "Session - 10139 temp.aac" -i "Session - 10139 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10139 - Introducing enterprise APIs for visionOS (1080p).mp4"
rm "Session - 10139 temp.vtt"
rm "Session - 10139 temp.mp4"
rm "Session - 10139 temp.aac"

# 20
# Session 10179 - Meet Swift Testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10179 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10179 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10179/4/E0A34162-D87D-4510-A438-67CBEABAB16B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10179 temp.vtt"
ffmpeg -i "Session - 10179 temp.mp4" -i "Session - 10179 temp.aac" -i "Session - 10179 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10179 - Meet Swift Testing (1080p).mp4"
rm "Session - 10179 temp.vtt"
rm "Session - 10179 temp.mp4"
rm "Session - 10179 temp.aac"

# 21
# Session 10111 - Meet the next generation of CarPlay architecture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10111 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10111 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10111/4/BB2E8107-78FC-467A-8714-E96538C02AEB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10111 temp.vtt"
ffmpeg -i "Session - 10111 temp.mp4" -i "Session - 10111 temp.aac" -i "Session - 10111 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10111 - Meet the next generation of CarPlay architecture (1080p).mp4"
rm "Session - 10111 temp.vtt"
rm "Session - 10111 temp.mp4"
rm "Session - 10111 temp.aac"

# 22
# Session 10169 - Migrate your app to Swift 6
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10169 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10169 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10169/6/4E4B2CB2-ABE3-49B7-AA2B-D97C6BF13B49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10169 temp.vtt"
ffmpeg -i "Session - 10169 temp.mp4" -i "Session - 10169 temp.aac" -i "Session - 10169 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10169 - Migrate your app to Swift 6 (1080p).mp4"
rm "Session - 10169 temp.vtt"
rm "Session - 10169 temp.mp4"
rm "Session - 10169 temp.aac"

# 23
# Session 10089 - Port advanced games to Apple platforms
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10089/5/DFD23E3B-AB98-42B1-9219-9C8B1FCD44EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10089 temp.vtt"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -i "Session - 10089 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10089 - Port advanced games to Apple platforms (1080p).mp4"
rm "Session - 10089 temp.vtt"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 24
# Session 10112 - Say hello to the next generation of CarPlay design system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10112 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10112 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10112/5/AD039C5C-EB45-47FB-887E-3DCDABC70719/subtitles/eng/prog_index.m3u8 -c copy "Session - 10112 temp.vtt"
ffmpeg -i "Session - 10112 temp.mp4" -i "Session - 10112 temp.aac" -i "Session - 10112 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10112 - Say hello to the next generation of CarPlay design system (1080p).mp4"
rm "Session - 10112 temp.vtt"
rm "Session - 10112 temp.mp4"
rm "Session - 10112 temp.aac"

# 25
# Session 10155 - Swift Charts - Vectorized and function plots
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10155/4/61F720F1-1AED-48CC-A380-9E1D01E87E4A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Swift Charts - Vectorized and function plots (1080p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 26
# Session 10150 - SwiftUI essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10150/4/43B9EF68-FA39-44B2-9CCD-82D0EB4CA44D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10150 temp.vtt"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -i "Session - 10150 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10150 - SwiftUI essentials (1080p).mp4"
rm "Session - 10150 temp.vtt"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 27
# Session 10124 - What’s new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10124 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10124 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10124/6/75BDBA0D-71A3-435A-8E9E-AE18B78981B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10124 temp.vtt"
ffmpeg -i "Session - 10124 temp.mp4" -i "Session - 10124 temp.aac" -i "Session - 10124 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10124 - What’s new in AppKit (1080p).mp4"
rm "Session - 10124 temp.vtt"
rm "Session - 10124 temp.mp4"
rm "Session - 10124 temp.aac"

# 28
# Session 10061 - What’s new in StoreKit and In-App Purchase
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10061/4/283D5AFD-5540-405F-A385-1B9CBB0474D4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - What’s new in StoreKit and In-App Purchase (1080p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 29
# Session 10136 - What’s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10136/4/14B6AAA9-EB58-4299-AA9B-A1F804631E6C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10136 temp.vtt"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -i "Session - 10136 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10136 - What’s new in Swift (1080p).mp4"
rm "Session - 10136 temp.vtt"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 30
# Session 10137 - What’s new in SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10137/4/44213251-C991-4280-BBF1-5CA6AFCA5222/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - What’s new in SwiftData (1080p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 31
# Session 10144 - What’s new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10144 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10144 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10144/4/8A69C683-3259-454B-9F94-5BBE98999A1B/subtitles/eng/prog_index.m3u8 -c copy "Session - 10144 temp.vtt"
ffmpeg -i "Session - 10144 temp.mp4" -i "Session - 10144 temp.aac" -i "Session - 10144 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10144 - What’s new in SwiftUI (1080p).mp4"
rm "Session - 10144 temp.vtt"
rm "Session - 10144 temp.mp4"
rm "Session - 10144 temp.aac"

# 32
# Session 10118 - What’s new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10118/4/16FC914B-F442-41A4-AFF4-5047A3FF7125/subtitles/eng/prog_index.m3u8 -c copy "Session - 10118 temp.vtt"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -i "Session - 10118 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10118 - What’s new in UIKit (1080p).mp4"
rm "Session - 10118 temp.vtt"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"

# 33
# Session 10205 - What’s new in watchOS 11
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10205 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10205 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10205/4/01F99B0C-DA17-41F9-854B-7C36FA9FD965/subtitles/eng/prog_index.m3u8 -c copy "Session - 10205 temp.vtt"
ffmpeg -i "Session - 10205 temp.mp4" -i "Session - 10205 temp.aac" -i "Session - 10205 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10205 - What’s new in watchOS 11 (1080p).mp4"
rm "Session - 10205 temp.vtt"
rm "Session - 10205 temp.mp4"
rm "Session - 10205 temp.aac"

# 34
# Session 10135 - What’s new in Xcode 16
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10135 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10135 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10135/4/A6AD3D2B-72D9-43AE-901E-8AFDBA304007/subtitles/eng/prog_index.m3u8 -c copy "Session - 10135 temp.vtt"
ffmpeg -i "Session - 10135 temp.mp4" -i "Session - 10135 temp.aac" -i "Session - 10135 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10135 - What’s new in Xcode 16 (1080p).mp4"
rm "Session - 10135 temp.vtt"
rm "Session - 10135 temp.mp4"
rm "Session - 10135 temp.aac"
