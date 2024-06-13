# Script to download Tuesday's WWDC 24 session videos in the highest 4K video and audio
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
# Session 10184 - A Swift Tour - Explore Swift’s features and design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10184/4/9805A8C3-1B6A-43C6-AA4B-C8A8FBBECE62/subtitles/eng/prog_index.m3u8 -c copy "Session - 10184 temp.vtt"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -i "Session - 10184 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10184 - A Swift Tour - Explore Swift’s features and design (2160p).mp4"
rm "Session - 10184 temp.vtt"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 2
# Session 10220 - Bring expression to your app with Genmoji
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10220 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10220 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10220/5/66D08ED4-B7A1-415E-AB43-79704F82CE41/subtitles/eng/prog_index.m3u8 -c copy "Session - 10220 temp.vtt"
ffmpeg -i "Session - 10220 temp.mp4" -i "Session - 10220 temp.aac" -i "Session - 10220 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10220 - Bring expression to your app with Genmoji (2160p).mp4"
rm "Session - 10220 temp.vtt"
rm "Session - 10220 temp.mp4"
rm "Session - 10220 temp.aac"

# 3
# Session 10104 - Build a spatial drawing app with RealityKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10104/3/818182EE-A12C-4B8F-A02B-93B2C730BFF0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10104 temp.vtt"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -i "Session - 10104 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10104 - Build a spatial drawing app with RealityKit (2160p).mp4"
rm "Session - 10104 temp.vtt"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 4
# Session 10084 - Build custom swimming workouts with WorkoutKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10084 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10084 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10084/5/B6B1BB75-9C3C-4915-9878-B181CEC0C79C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10084 temp.vtt"
ffmpeg -i "Session - 10084 temp.mp4" -i "Session - 10084 temp.aac" -i "Session - 10084 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10084 - Build custom swimming workouts with WorkoutKit (2160p).mp4"
rm "Session - 10084 temp.vtt"
rm "Session - 10084 temp.mp4"
rm "Session - 10084 temp.aac"

# 5
# Session 10073 - Catch up on accessibility in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10073/5/769C76D4-F43B-4E18-A6DB-1E3F3A4A8648/subtitles/eng/prog_index.m3u8 -c copy "Session - 10073 temp.vtt"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -i "Session - 10073 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10073 - Catch up on accessibility in SwiftUI (2160p).mp4"
rm "Session - 10073 temp.vtt"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 6
# Session 10138 - Create a custom data store with SwiftData
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10138 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10138 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10138/4/A149C0AB-2AB1-48C1-B259-4D5621873D5F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10138 temp.vtt"
ffmpeg -i "Session - 10138 temp.mp4" -i "Session - 10138 temp.aac" -i "Session - 10138 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10138 - Create a custom data store with SwiftData (2160p).mp4"
rm "Session - 10138 temp.vtt"
rm "Session - 10138 temp.mp4"
rm "Session - 10138 temp.aac"

# 7
# Session 10087 - Create custom environments for your immersive apps in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10087/4/1BAC307D-DA03-4FDC-AB9B-F3B4494DE81E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10087 temp.vtt"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -i "Session - 10087 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10087 - Create custom environments for your immersive apps in visionOS (2160p).mp4"
rm "Session - 10087 temp.vtt"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 8
# Session 10161 - Deploy machine learning and AI models on-device with Core ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10161/4/47C857D9-30F3-4FA6-AD90-26916A33426D/subtitles/eng/prog_index.m3u8 -c copy "Session - 10161 temp.vtt"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -i "Session - 10161 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10161 - Deploy machine learning and AI models on-device with Core ML (2160p).mp4"
rm "Session - 10161 temp.vtt"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 9
# Session 10098 - Design Live Activities for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10098/7/25EEDB0F-2C34-42C4-A647-CD4ACBF973C5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10098 temp.vtt"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -i "Session - 10098 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10098 - Design Live Activities for Apple Watch (2160p).mp4"
rm "Session - 10098 temp.vtt"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 10
# Session 10153 - Dive deep into volumes and immersive spaces
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10153/4/0A359A0C-A9DB-4D61-872E-FCEA96763C78/subtitles/eng/prog_index.m3u8 -c copy "Session - 10153 temp.vtt"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -i "Session - 10153 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10153 - Dive deep into volumes and immersive spaces (2160p).mp4"
rm "Session - 10153 temp.vtt"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 11
# Session 10115 - Enhance the immersion of media viewing in custom environments
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10115/4/6A9F8C82-702C-4646-8039-A898373DFDAD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - Enhance the immersion of media viewing in custom environments (2160p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 12
# Session 10145 - Enhance your UI animations and transitions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10145/4/53B7DA20-6508-44CC-9BC6-86943CE6BF32/subtitles/eng/prog_index.m3u8 -c copy "Session - 10145 temp.vtt"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -i "Session - 10145 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10145 - Enhance your UI animations and transitions (2160p).mp4"
rm "Session - 10145 temp.vtt"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 13
# Session 10094 - Explore game input in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10094/8/0A68B37C-75FF-4E8E-BA54-BA0865E665A3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Explore game input in visionOS (2160p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 14
# Session 10109 - Explore wellbeing APIs in HealthKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10109/4/C6E12E83-F007-47F9-A74C-6DDC86BEE5AB/subtitles/eng/prog_index.m3u8 -c copy "Session - 10109 temp.vtt"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -i "Session - 10109 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10109 - Explore wellbeing APIs in HealthKit (2160p).mp4"
rm "Session - 10109 temp.vtt"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 15
# Session 10157 - Extend your app’s controls across the system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10157/5/5DC0FBFA-B601-4A2F-BE3D-40FBF3757522/subtitles/eng/prog_index.m3u8 -c copy "Session - 10157 temp.vtt"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -i "Session - 10157 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10157 - Extend your app’s controls across the system (2160p).mp4"
rm "Session - 10157 temp.vtt"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 16
# Session 10168 - Get started with Writing Tools
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10168/4/D8EBB581-CA62-4601-A3DF-BCF4C7805EBE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10168 temp.vtt"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -i "Session - 10168 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10168 - Get started with Writing Tools (2160p).mp4"
rm "Session - 10168 temp.vtt"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 17
# Session 10195 - Go further with Swift Testing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10195 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10195 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10195/4/7FBA1EC9-FB05-46DA-852F-C090FB5A53E6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10195 temp.vtt"
ffmpeg -i "Session - 10195 temp.mp4" -i "Session - 10195 temp.aac" -i "Session - 10195 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10195 - Go further with Swift Testing (2160p).mp4"
rm "Session - 10195 temp.vtt"
rm "Session - 10195 temp.mp4"
rm "Session - 10195 temp.aac"

# 18
# Session 10197 - Go small with Embedded Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10197/4/61F8D9DD-2B91-4545-AA09-253E16642E98/subtitles/eng/prog_index.m3u8 -c copy "Session - 10197 temp.vtt"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -i "Session - 10197 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10197 - Go small with Embedded Swift (2160p).mp4"
rm "Session - 10197 temp.vtt"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 19
# Session 10060 - Meet AdAttributionKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10060 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10060 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10060/4/54AEFA4B-C060-44FA-80EB-4D03E8B8A2B0/subtitles/eng/prog_index.m3u8 -c copy "Session - 10060 temp.vtt"
ffmpeg -i "Session - 10060 temp.mp4" -i "Session - 10060 temp.aac" -i "Session - 10060 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10060 - Meet AdAttributionKit (2160p).mp4"
rm "Session - 10060 temp.vtt"
rm "Session - 10060 temp.mp4"
rm "Session - 10060 temp.aac"

# 20
# Session 2023 - Meet FinanceKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 2023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 2023 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/2023/4/74A8DE5D-5007-4431-929F-17401D6F80CB/subtitles/eng/prog_index.m3u8 -c copy "Session - 2023 temp.vtt"
ffmpeg -i "Session - 2023 temp.mp4" -i "Session - 2023 temp.aac" -i "Session - 2023 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 2023 - Meet FinanceKit (2160p).mp4"
rm "Session - 2023 temp.vtt"
rm "Session - 2023 temp.mp4"
rm "Session - 2023 temp.aac"

# 21
# Session 10091 - Meet TabletopKit for visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10091/4/67E4D497-91F1-4537-9344-F08BBADDCD3F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10091 temp.vtt"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -i "Session - 10091 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10091 - Meet TabletopKit for visionOS (2160p).mp4"
rm "Session - 10091 temp.vtt"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 22
# Session 10207 - Migrate your TVML app to SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10207 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10207 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10207/4/F0BA61BC-1F1D-4128-A2A3-C92C121EEE6F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10207 temp.vtt"
ffmpeg -i "Session - 10207 temp.mp4" -i "Session - 10207 temp.aac" -i "Session - 10207 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10207 - Migrate your TVML app to SwiftUI (2160p).mp4"
rm "Session - 10207 temp.vtt"
rm "Session - 10207 temp.mp4"
rm "Session - 10207 temp.aac"

# 23
# Session 10065 - Optimize for the spatial web
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10065 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10065 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10065/7/3AFDD2F6-B764-49D8-AEAB-D5319918AD90/subtitles/eng/prog_index.m3u8 -c copy "Session - 10065 temp.vtt"
ffmpeg -i "Session - 10065 temp.mp4" -i "Session - 10065 temp.aac" -i "Session - 10065 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10065 - Optimize for the spatial web (2160p).mp4"
rm "Session - 10065 temp.vtt"
rm "Session - 10065 temp.mp4"
rm "Session - 10065 temp.aac"

# 24
# Session 111977 - Platforms State of the Union 5-Minute Recap
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 111977 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 111977 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/111977/1/0B66B228-1D2B-42E4-9609-B42FD8A37793/subtitles/eng/prog_index.m3u8 -c copy "Session - 111977 temp.vtt"
ffmpeg -i "Session - 111977 temp.mp4" -i "Session - 111977 temp.aac" -i "Session - 111977 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 111977 - Platforms State of the Union 5-Minute Recap (2160p).mp4"
rm "Session - 111977 temp.vtt"
rm "Session - 111977 temp.mp4"
rm "Session - 111977 temp.aac"

# 25
# Session 10092 - Render Metal with passthrough in visionOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10092/4/B9AC5FF0-C58C-4608-AC8D-7AD3A82ABD42/subtitles/eng/prog_index.m3u8 -c copy "Session - 10092 temp.vtt"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -i "Session - 10092 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10092 - Render Metal with passthrough in visionOS (2160p).mp4"
rm "Session - 10092 temp.vtt"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 26
# Session 10214 - Squeeze the most out of Apple Pencil
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10214 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10214 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10214/4/AFB648F1-CAD7-4F62-8916-9DF4372C33C4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10214 temp.vtt"
ffmpeg -i "Session - 10214 temp.mp4" -i "Session - 10214 temp.aac" -i "Session - 10214 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10214 - Squeeze the most out of Apple Pencil (2160p).mp4"
rm "Session - 10214 temp.vtt"
rm "Session - 10214 temp.mp4"
rm "Session - 10214 temp.aac"

# 27
# Session 10125 - Streamline sign-in with passkey upgrades and credential managers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10125 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10125 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10125/4/11A4C94C-65F3-4AE0-831C-EFE3BF97831C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10125 temp.vtt"
ffmpeg -i "Session - 10125 temp.mp4" -i "Session - 10125 temp.aac" -i "Session - 10125 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10125 - Streamline sign-in with passkey upgrades and credential managers (2160p).mp4"
rm "Session - 10125 temp.vtt"
rm "Session - 10125 temp.mp4"
rm "Session - 10125 temp.aac"

# 28
# Session 10211 - Support real-time ML inference on the CPU
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10211 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10211 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10211/4/1410E4EC-04F1-4A67-B7A5-F31E500B8306/subtitles/eng/prog_index.m3u8 -c copy "Session - 10211 temp.vtt"
ffmpeg -i "Session - 10211 temp.mp4" -i "Session - 10211 temp.aac" -i "Session - 10211 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10211 - Support real-time ML inference on the CPU (2160p).mp4"
rm "Session - 10211 temp.vtt"
rm "Session - 10211 temp.mp4"
rm "Session - 10211 temp.aac"

# 29
# Session 10134 - What’s new in App Intents
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10134 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10134 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10134/4/E85B53EC-BD7E-4A59-BCB5-4CECA88B76DE/subtitles/eng/prog_index.m3u8 -c copy "Session - 10134 temp.vtt"
ffmpeg -i "Session - 10134 temp.mp4" -i "Session - 10134 temp.aac" -i "Session - 10134 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10134 - What’s new in App Intents (2160p).mp4"
rm "Session - 10134 temp.vtt"
rm "Session - 10134 temp.mp4"
rm "Session - 10134 temp.aac"

# 30
# Session 10183 - What’s new in Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10183 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10183 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10183/5/B9B17A0E-A4B7-49D9-AE9A-9E66CF25D999/subtitles/eng/prog_index.m3u8 -c copy "Session - 10183 temp.vtt"
ffmpeg -i "Session - 10183 temp.mp4" -i "Session - 10183 temp.aac" -i "Session - 10183 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10183 - What’s new in Create ML (2160p).mp4"
rm "Session - 10183 temp.vtt"
rm "Session - 10183 temp.mp4"
rm "Session - 10183 temp.aac"

# 31
# Session 10149 - Work with windows in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10149/5/D0809E73-22CA-4A6A-9F6B-BC3C19A39167/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - Work with windows in SwiftUI (2160p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 32
# Session 10181 - Xcode essentials
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10181/4/39C00926-6B07-4887-86C2-95B4CF6C8745/subtitles/eng/prog_index.m3u8 -c copy "Session - 10181 temp.vtt"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -i "Session - 10181 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10181 - Xcode essentials (2160p).mp4"
rm "Session - 10181 temp.vtt"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"

# 33
# Session 10132 - Evolve your document launch experience
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2024/10132/4/F41D2CAF-097E-4793-B867-78798357CBBC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10132 temp.vtt"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -i "Session - 10132 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10132 - Evolve your document launch experience (2160p).mp4"
rm "Session - 10132 temp.vtt"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"