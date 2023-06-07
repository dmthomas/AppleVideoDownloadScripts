# Script to download Wednesday's WWDC 23 session videos in the highest 1440p video and audio
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
# Session 10159 - Beyond scroll views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10159/4/DCE1F4A7-9E0E-4F48-B70A-6C44D758769E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10159 temp.vtt"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -i "Session - 10159 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10159 - Beyond scroll views (1440p).mp4"
rm "Session - 10159 temp.vtt"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 2
# Session 10028 - Bring widgets to life
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10028 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10028 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10028/4/3BBB0693-B39D-476B-AC4A-2F1A8BB53FCE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10028 temp.vtt"
ffmpeg -i "Session - 10028 temp.mp4" -i "Session - 10028 temp.aac" -i "Session - 10028 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10028 - Bring widgets to life (1440p).mp4"
rm "Session - 10028 temp.vtt"
rm "Session - 10028 temp.mp4"
rm "Session - 10028 temp.aac"

# 3
# Session 10093 - Bring your Unity VR app to a fully immersive space
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10093/4/D52AC313-8624-4177-BB94-C2F64F591723/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Bring your Unity VR app to a fully immersive space (1440p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 4
# Session 10036 - Build accessible apps with SwiftUI and UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10036 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10036 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10036/4/BB960BFD-F982-4800-8060-5674B049AC5A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10036 temp.vtt"
ffmpeg -i "Session - 10036 temp.mp4" -i "Session - 10036 temp.aac" -i "Session - 10036 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10036 - Build accessible apps with SwiftUI and UIKit (1440p).mp4"
rm "Session - 10036 temp.vtt"
rm "Session - 10036 temp.mp4"
rm "Session - 10036 temp.aac"

# 5
# Session 10154 - Build an app with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10154 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10154 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10154/6/00F52EA1-7867-49C3-9DA6-88D0D9D637E1/subtitles/eng/prog_index.m3u8 -c copy "Session - 10154 temp.vtt"
ffmpeg -i "Session - 10154 temp.mp4" -i "Session - 10154 temp.aac" -i "Session - 10154 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10154 - Build an app with SwiftData (1440p).mp4"
rm "Session - 10154 temp.vtt"
rm "Session - 10154 temp.mp4"
rm "Session - 10154 temp.aac"

# 6
# Session 10252 - Build programmatic UI with Xcode Previews
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10252 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10252 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10252/5/28C78519-19B7-468C-A50B-4960D801E332/subtitles/eng/prog_index.m3u8 -c copy "Session - 10252 temp.vtt"
ffmpeg -i "Session - 10252 temp.mp4" -i "Session - 10252 temp.aac" -i "Session - 10252 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10252 - Build programmatic UI with Xcode Previews (1440p).mp4"
rm "Session - 10252 temp.vtt"
rm "Session - 10252 temp.mp4"
rm "Session - 10252 temp.aac"

# 7
# Session 10029 - Build widgets for the Smart Stack on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10029 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10029 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10029/5/A6F20D9A-932C-44D8-99FA-FBFE3D6E5CBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10029 temp.vtt"
ffmpeg -i "Session - 10029 temp.mp4" -i "Session - 10029 temp.aac" -i "Session - 10029 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10029 - Build widgets for the Smart Stack on Apple Watch (1440p).mp4"
rm "Session - 10029 temp.vtt"
rm "Session - 10029 temp.mp4"
rm "Session - 10029 temp.aac"

# 8
# Session 10105 - Create a more responsive camera experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10105/4/E34149DA-EEF7-4E25-A6B3-DDEB0BB7BF1C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10105 temp.vtt"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -i "Session - 10105 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10105 - Create a more responsive camera experience (1440p).mp4"
rm "Session - 10105 temp.vtt"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 9
# Session 10257 - Create animated symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10257 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10257 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10257/4/8BAB2E01-3308-47DF-AF21-49268DE79899/subtitles/eng/prog_index.m3u8 -c copy "Session - 10257 temp.vtt"
ffmpeg -i "Session - 10257 temp.mp4" -i "Session - 10257 temp.aac" -i "Session - 10257 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10257 - Create animated symbols (1440p).mp4"
rm "Session - 10257 temp.vtt"
rm "Session - 10257 temp.mp4"
rm "Session - 10257 temp.aac"

# 10
# Session 10088 - Create immersive Unity apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10088 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10088 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10088/5/77EBB91E-9B3E-41DC-AF08-623919A9F182/subtitles/eng/prog_index.m3u8 -c copy "Session - 10088 temp.vtt"
ffmpeg -i "Session - 10088 temp.mp4" -i "Session - 10088 temp.aac" -i "Session - 10088 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10088 - Create immersive Unity apps (1440p).mp4"
rm "Session - 10088 temp.vtt"
rm "Session - 10088 temp.mp4"
rm "Session - 10088 temp.aac"

# 11
# Session 10007 - Create seamless experiences with Virtualization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10007 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10007 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10007/4/ADC7900A-352D-4B06-8285-22AFB8A66356/subtitles/eng/prog_index.m3u8 -c copy "Session - 10007 temp.vtt"
ffmpeg -i "Session - 10007 temp.mp4" -i "Session - 10007 temp.aac" -i "Session - 10007 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10007 - Create seamless experiences with Virtualization (1440p).mp4"
rm "Session - 10007 temp.vtt"
rm "Session - 10007 temp.mp4"
rm "Session - 10007 temp.aac"

# 12
# Session 10071 - Deliver video content for spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10071 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10071 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10071/4/F38AC007-2A42-4AFD-B0AA-EFC2EA0A8ECD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10071 temp.vtt"
ffmpeg -i "Session - 10071 temp.mp4" -i "Session - 10071 temp.aac" -i "Session - 10071 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10071 - Deliver video content for spatial experiences (1440p).mp4"
rm "Session - 10071 temp.vtt"
rm "Session - 10071 temp.mp4"
rm "Session - 10071 temp.aac"

# 13
# Session 10263 - Deploy passkeys at work
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10263 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10263 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10263/6/31A324CE-DD40-456B-A7DB-8660EF139277/subtitles/eng/prog_index.m3u8 -c copy "Session - 10263 temp.vtt"
ffmpeg -i "Session - 10263 temp.mp4" -i "Session - 10263 temp.aac" -i "Session - 10263 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10263 - Deploy passkeys at work (1440p).mp4"
rm "Session - 10263 temp.vtt"
rm "Session - 10263 temp.mp4"
rm "Session - 10263 temp.aac"

# 14
# Session 10309 - Design widgets for the Smart Stack on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10309 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10309 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10309/4/21D925C8-2EE0-4C96-9C68-96174159990A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10309 temp.vtt"
ffmpeg -i "Session - 10309 temp.mp4" -i "Session - 10309 temp.aac" -i "Session - 10309 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10309 - Design widgets for the Smart Stack on Apple Watch (1440p).mp4"
rm "Session - 10309 temp.vtt"
rm "Session - 10309 temp.mp4"
rm "Session - 10309 temp.aac"

# 15
# Session 10115 - Design with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10115/4/19F9A9B5-0463-4EA9-B5C4-E7BBFE8E1F66/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - Design with SwiftUI (1440p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 16
# Session 10052 - Discover Calendar and EventKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10052/5/B5C95345-FDF4-40FF-AFFB-350DD26BED61/subtitles/eng/prog_index.m3u8 -c copy "Session - 10052 temp.vtt"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -i "Session - 10052 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10052 - Discover Calendar and EventKit (1440p).mp4"
rm "Session - 10052 temp.vtt"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 17
# Session 10256 - Discover Continuity Camera for tvOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10256 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10256 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10256/4/8FFA5951-7695-4285-9C1D-B0D6D491F18C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10256 temp.vtt"
ffmpeg -i "Session - 10256 temp.mp4" -i "Session - 10256 temp.aac" -i "Session - 10256 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10256 - Discover Continuity Camera for tvOS (1440p).mp4"
rm "Session - 10256 temp.vtt"
rm "Session - 10256 temp.mp4"
rm "Session - 10256 temp.aac"

# 18
# Session 10081 - Enhance your spatial computing app with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10081 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10081 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10081/4/218C691E-8111-4A1A-925F-F43AB9832C41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10081 temp.vtt"
ffmpeg -i "Session - 10081 temp.mp4" -i "Session - 10081 temp.aac" -i "Session - 10081 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10081 - Enhance your spatial computing app with RealityKit (1440p).mp4"
rm "Session - 10081 temp.vtt"
rm "Session - 10081 temp.mp4"
rm "Session - 10081 temp.aac"

# 19
# Session 10091 - Evolve your ARKit app for spatial experiences
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10091/4/8582CCE8-B637-4A9F-94F5-69EE67ED58D4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10091 temp.vtt"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -i "Session - 10091 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10091 - Evolve your ARKit app for spatial experiences (1440p).mp4"
rm "Session - 10091 temp.vtt"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 20
# Session 111241 - Explore 3D body pose and person segmentation in Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 111241 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111241 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/111241/4/ABFB7CE2-6FB6-4998-BE3A-686BF10AC41E/subtitles/eng/prog_index.m3u8 -c copy "Session - 111241 temp.vtt"
ffmpeg -i "Session - 111241 temp.mp4" -i "Session - 111241 temp.aac" -i "Session - 111241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111241 - Explore 3D body pose and person segmentation in Vision (1440p).mp4"
rm "Session - 111241 temp.vtt"
rm "Session - 111241 temp.mp4"
rm "Session - 111241 temp.aac"

# 21
# Session 10041 - Explore advances in declarative device management 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10041/5/3291DDC3-9C1C-4F82-885B-351107EFC8AF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10041 temp.vtt"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -i "Session - 10041 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10041 - Explore advances in declarative device management  (1440p).mp4"
rm "Session - 10041 temp.vtt"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"

# 22
# Session 10103 - Explore enhancements to App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10103/4/D65BF0C4-53B8-450E-8B16-DF92AA76A73A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10103 temp.vtt"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -i "Session - 10103 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10103 - Explore enhancements to App Intents (1440p).mp4"
rm "Session - 10103 temp.vtt"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 23
# Session 10271 - Explore immersive sound design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10271 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10271 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10271/4/8EC963D4-5325-4F6F-8D6C-7C3DF535B0A2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10271 temp.vtt"
ffmpeg -i "Session - 10271 temp.mp4" -i "Session - 10271 temp.aac" -i "Session - 10271 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10271 - Explore immersive sound design (1440p).mp4"
rm "Session - 10271 temp.vtt"
rm "Session - 10271 temp.mp4"
rm "Session - 10271 temp.aac"

# 24
# Session 10202 - Explore materials in Reality Composer Pro
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10202 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10202 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10202/5/7DF5114E-91B3-4A42-AF97-D01AC560E3AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10202 temp.vtt"
ffmpeg -i "Session - 10202 temp.mp4" -i "Session - 10202 temp.aac" -i "Session - 10202 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10202 - Explore materials in Reality Composer Pro (1440p).mp4"
rm "Session - 10202 temp.vtt"
rm "Session - 10202 temp.mp4"
rm "Session - 10202 temp.aac"

# 25
# Session 10042 - Explore Natural Language multilingual models
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10042 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10042 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10042/5/6CB98B4D-64C7-4818-8DFE-12CF2EFAF5CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10042 temp.vtt"
ffmpeg -i "Session - 10042 temp.mp4" -i "Session - 10042 temp.aac" -i "Session - 10042 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10042 - Explore Natural Language multilingual models (1440p).mp4"
rm "Session - 10042 temp.vtt"
rm "Session - 10042 temp.mp4"
rm "Session - 10042 temp.aac"

# 26
# Session 10156 - Explore SwiftUI animation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10156 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10156 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10156/4/9C42B457-119B-4939-B635-598E91D22BD6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10156 temp.vtt"
ffmpeg -i "Session - 10156 temp.mp4" -i "Session - 10156 temp.aac" -i "Session - 10156 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10156 - Explore SwiftUI animation (1440p).mp4"
rm "Session - 10156 temp.vtt"
rm "Session - 10156 temp.mp4"
rm "Session - 10156 temp.aac"

# 27
# Session 10175 - Fix failures faster with Xcode test reports
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10175 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10175 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10175/6/2DA62902-FA90-4651-8713-E60599F43E83/subtitles/eng/prog_index.m3u8 -c copy "Session - 10175 temp.vtt"
ffmpeg -i "Session - 10175 temp.mp4" -i "Session - 10175 temp.aac" -i "Session - 10175 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10175 - Fix failures faster with Xcode test reports (1440p).mp4"
rm "Session - 10175 temp.vtt"
rm "Session - 10175 temp.mp4"
rm "Session - 10175 temp.aac"

# 28
# Session 10060 - Get started with privacy manifests
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10060 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10060 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10060/4/FF91AF30-61BD-4DCA-A65E-9D3CD75DA679/subtitles/eng/prog_index.m3u8 -c copy "Session - 10060 temp.vtt"
ffmpeg -i "Session - 10060 temp.mp4" -i "Session - 10060 temp.aac" -i "Session - 10060 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10060 - Get started with privacy manifests (1440p).mp4"
rm "Session - 10060 temp.vtt"
rm "Session - 10060 temp.mp4"
rm "Session - 10060 temp.aac"

# 29
# Session 10161 - Inspectors in SwiftUI - Discover the details
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10161/4/8290EAC4-2BB0-4766-AABF-FEC196606758/subtitles/eng/prog_index.m3u8 -c copy "Session - 10161 temp.vtt"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -i "Session - 10161 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10161 - Inspectors in SwiftUI - Discover the details (1440p).mp4"
rm "Session - 10161 temp.vtt"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 30
# Session 10146 - Meet Core Location for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10146/4/17F61886-5FF3-42B0-969D-5B6FB86820B2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10146 temp.vtt"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -i "Session - 10146 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10146 - Meet Core Location for spatial computing (1440p).mp4"
rm "Session - 10146 temp.vtt"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 31
# Session 10268 - Meet mergeable libraries
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10268 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10268 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10268/4/8ABBA81C-E5D8-4695-A921-FE326B1AC4E3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10268 temp.vtt"
ffmpeg -i "Session - 10268 temp.mp4" -i "Session - 10268 temp.aac" -i "Session - 10268 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10268 - Meet mergeable libraries (1440p).mp4"
rm "Session - 10268 temp.vtt"
rm "Session - 10268 temp.mp4"
rm "Session - 10268 temp.aac"

# 32
# Session 10191 - Meet Object Capture for iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10191 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10191 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10191/4/4163D349-9555-463C-B8F1-0839D7BC6E49/subtitles/eng/prog_index.m3u8 -c copy "Session - 10191 temp.vtt"
ffmpeg -i "Session - 10191 temp.mp4" -i "Session - 10191 temp.aac" -i "Session - 10191 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10191 - Meet Object Capture for iOS (1440p).mp4"
rm "Session - 10191 temp.vtt"
rm "Session - 10191 temp.mp4"
rm "Session - 10191 temp.aac"

# 33
# Session 10025 - Meet Push Notifications Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10025 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10025 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10025/4/A630204A-7F9E-49E8-9B21-ADC3517405E0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10025 temp.vtt"
ffmpeg -i "Session - 10025 temp.mp4" -i "Session - 10025 temp.aac" -i "Session - 10025 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10025 - Meet Push Notifications Console (1440p).mp4"
rm "Session - 10025 temp.vtt"
rm "Session - 10025 temp.mp4"
rm "Session - 10025 temp.aac"

# 34
# Session 10099 - Meet RealityKit Trace
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10099 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10099 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10099/5/3AFC66A2-7703-40D9-BB5A-874A5091FE1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10099 temp.vtt"
ffmpeg -i "Session - 10099 temp.mp4" -i "Session - 10099 temp.aac" -i "Session - 10099 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10099 - Meet RealityKit Trace (1440p).mp4"
rm "Session - 10099 temp.vtt"
rm "Session - 10099 temp.mp4"
rm "Session - 10099 temp.aac"

# 35
# Session 10172 - Mix Swift and C++
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10172 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10172 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10172/4/58243B95-F51E-4E6A-96C8-B85E8102E450/subtitles/eng/prog_index.m3u8 -c copy "Session - 10172 temp.vtt"
ffmpeg -i "Session - 10172 temp.mp4" -i "Session - 10172 temp.aac" -i "Session - 10172 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10172 - Mix Swift and C++ (1440p).mp4"
rm "Session - 10172 temp.vtt"
rm "Session - 10172 temp.mp4"
rm "Session - 10172 temp.aac"

# 36
# Session 10195 - Model your schema with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10195 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10195 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10195/4/1FEA69A1-120E-4305-8976-D2E1D1530A13/subtitles/eng/prog_index.m3u8 -c copy "Session - 10195 temp.vtt"
ffmpeg -i "Session - 10195 temp.mp4" -i "Session - 10195 temp.aac" -i "Session - 10195 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10195 - Model your schema with SwiftData (1440p).mp4"
rm "Session - 10195 temp.vtt"
rm "Session - 10195 temp.mp4"
rm "Session - 10195 temp.aac"

# 37
# Session 10100 - Optimize app power and performance for spatial computing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10100 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10100 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10100/4/174B83C9-684A-4C6F-832F-54135856AE47/subtitles/eng/prog_index.m3u8 -c copy "Session - 10100 temp.vtt"
ffmpeg -i "Session - 10100 temp.mp4" -i "Session - 10100 temp.aac" -i "Session - 10100 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10100 - Optimize app power and performance for spatial computing (1440p).mp4"
rm "Session - 10100 temp.vtt"
rm "Session - 10100 temp.mp4"
rm "Session - 10100 temp.aac"

# 38
# Session 10150 - Optimize CarPlay for vehicle systems
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10150/4/21F9E94A-7EFC-455B-B168-18C2B8CB5965/subtitles/eng/prog_index.m3u8 -c copy "Session - 10150 temp.vtt"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -i "Session - 10150 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10150 - Optimize CarPlay for vehicle systems (1440p).mp4"
rm "Session - 10150 temp.vtt"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 39
# Session 10262 - Rediscover Safari developer features
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10262 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10262 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10262/4/5A68BE0E-CC0F-4DF7-8982-F315B0ED6A2D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10262 temp.vtt"
ffmpeg -i "Session - 10262 temp.mp4" -i "Session - 10262 temp.aac" -i "Session - 10262 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10262 - Rediscover Safari developer features (1440p).mp4"
rm "Session - 10262 temp.vtt"
rm "Session - 10262 temp.mp4"
rm "Session - 10262 temp.aac"

# 40
# Session 10224 - Simplify distribution in Xcode and Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10224 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10224 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10224/4/3FB069F4-A143-41C4-945E-76651EFF81CF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10224 temp.vtt"
ffmpeg -i "Session - 10224 temp.mp4" -i "Session - 10224 temp.aac" -i "Session - 10224 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10224 - Simplify distribution in Xcode and Xcode Cloud (1440p).mp4"
rm "Session - 10224 temp.vtt"
rm "Session - 10224 temp.mp4"
rm "Session - 10224 temp.aac"

# 41
# Session 10113 - Take SwiftUI to the next dimension
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10113/5/00AAFA9F-AFE8-473B-BAB6-201545F4DF62/subtitles/eng/prog_index.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Take SwiftUI to the next dimension (1440p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 42
# Session 10031 - Update your app for watchOS 10
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10031 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10031 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10031/4/365BFCEA-3567-4F2E-85DC-D6DF144F9B5C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10031 temp.vtt"
ffmpeg -i "Session - 10031 temp.mp4" -i "Session - 10031 temp.aac" -i "Session - 10031 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10031 - Update your app for watchOS 10 (1440p).mp4"
rm "Session - 10031 temp.vtt"
rm "Session - 10031 temp.mp4"
rm "Session - 10031 temp.aac"

# 43
# Session 10061 - Verify app dependencies with digital signatures
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10061/4/69744A23-9D87-4A87-B1D5-DC13BE88274F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10061 temp.vtt"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -i "Session - 10061 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10061 - Verify app dependencies with digital signatures (1440p).mp4"
rm "Session - 10061 temp.vtt"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 44
# Session 10178 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10178 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10178 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10178/4/9DD6B041-9DA7-4F78-82A1-B2E17AFA61CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10178 temp.vtt"
ffmpeg -i "Session - 10178 temp.mp4" -i "Session - 10178 temp.aac" -i "Session - 10178 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10178 - What's new in App Clips (1440p).mp4"
rm "Session - 10178 temp.vtt"
rm "Session - 10178 temp.mp4"
rm "Session - 10178 temp.aac"

# 45
# Session 10117 - What's new in App Store Connect
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10117/5/371EF10F-F98C-4AC5-B998-FD7FD3267F98/subtitles/eng/prog_index.m3u8 -c copy "Session - 10117 temp.vtt"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -i "Session - 10117 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10117 - What's new in App Store Connect (1440p).mp4"
rm "Session - 10117 temp.vtt"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 46
# Session 10014 - What's new in App Store pricing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10014 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10014 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10014/3/15FBC5E9-0A1F-49D3-9CDA-466E88D8E22E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10014 temp.vtt"
ffmpeg -i "Session - 10014 temp.mp4" -i "Session - 10014 temp.aac" -i "Session - 10014 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10014 - What's new in App Store pricing (1440p).mp4"
rm "Session - 10014 temp.vtt"
rm "Session - 10014 temp.mp4"
rm "Session - 10014 temp.aac"

# 47
# Session 10141 - What's new in App Store server APIs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10141/4/D21B22C2-4C48-48FB-93A7-3B2712DBBDD9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10141 temp.vtt"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -i "Session - 10141 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10141 - What's new in App Store server APIs (1440p).mp4"
rm "Session - 10141 temp.vtt"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 48
# Session 10054 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10054/4/80B02B85-8293-43F0-A6B1-210B6B6DD1F7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10054 temp.vtt"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -i "Session - 10054 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10054 - What's new in AppKit (1440p).mp4"
rm "Session - 10054 temp.vtt"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 49
# Session 10121 - What's new in CSS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10121/5/583EB542-47B3-45F4-B7D2-35C88ED597C7/subtitles/eng/prog_index.m3u8 -c copy "Session - 10121 temp.vtt"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -i "Session - 10121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10121 - What's new in CSS (1440p).mp4"
rm "Session - 10121 temp.vtt"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 50
# Session 10053 - What's new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10053/4/8CAD0D27-5BB4-4640-9746-4DCBD46161DF/subtitles/eng/prog_index.m3u8 -c copy "Session - 10053 temp.vtt"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -i "Session - 10053 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10053 - What's new in privacy (1440p).mp4"
rm "Session - 10053 temp.vtt"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 51
# Session 10235 - What's new in voice processing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10235 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10235 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10235/4/78AFC6EE-45CE-4229-AB90-1DE57152E4BA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10235 temp.vtt"
ffmpeg -i "Session - 10235 temp.mp4" -i "Session - 10235 temp.aac" -i "Session - 10235 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10235 - What's new in voice processing (1440p).mp4"
rm "Session - 10235 temp.vtt"
rm "Session - 10235 temp.mp4"
rm "Session - 10235 temp.aac"

# 52
# Session 10273 - Work with Reality Composer Pro content in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10273 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10273 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10273/5/056632D0-3346-457D-97ED-B1F066A11C1A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10273 temp.vtt"
ffmpeg -i "Session - 10273 temp.mp4" -i "Session - 10273 temp.aac" -i "Session - 10273 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10273 - Work with Reality Composer Pro content in Xcode (1440p).mp4"
rm "Session - 10273 temp.vtt"
rm "Session - 10273 temp.mp4"
rm "Session - 10273 temp.aac"

# 53
# Session 10128 - Your guide to Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10128 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10128 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2023/10128/5/D57CE53D-520E-44FB-99BA-4E63AA58C47C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10128 temp.vtt"
ffmpeg -i "Session - 10128 temp.mp4" -i "Session - 10128 temp.aac" -i "Session - 10128 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10128 - Your guide to Metal ray tracing (1440p).mp4"
rm "Session - 10128 temp.vtt"
rm "Session - 10128 temp.mp4"
rm "Session - 10128 temp.aac"
