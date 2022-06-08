# Script to download Wednesday's WWDC 22 session videos in the highest 4K video and audio
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
# Session 10026 - Add Live Text interaction to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10026 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10026 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10026/3/346C760E-A60C-4D64-89A7-26C888CBBE0E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10026 temp.vtt"
ffmpeg -i "Session - 10026 temp.mp4" -i "Session - 10026 temp.aac" -i "Session - 10026 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10026 - Add Live Text interaction to your app (2160p).mp4"
rm "Session - 10026 temp.vtt"
rm "Session - 10026 temp.mp4"
rm "Session - 10026 temp.aac"

# 2
# Session 10094 - Add Shared with You to your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10094/4/6D2459BF-7717-4646-BE9A-E73C7E602DB9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10094 temp.vtt"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -i "Session - 10094 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10094 - Add Shared with You to your app (2160p).mp4"
rm "Session - 10094 temp.vtt"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 3
# Session 10046 - Adopt declarative device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10046 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10046 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10046/3/776B5FA8-B8C0-46DA-9EDE-7A0BE5F03772/subtitles/eng/prog_index.m3u8 -c copy "Session - 10046 temp.vtt"
ffmpeg -i "Session - 10046 temp.mp4" -i "Session - 10046 temp.aac" -i "Session - 10046 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10046 - Adopt declarative device management (2160p).mp4"
rm "Session - 10046 temp.vtt"
rm "Session - 10046 temp.mp4"
rm "Session - 10046 temp.aac"

# 4
# Session 10103 - Boost performance with MetalFX Upscaling
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10103/7/0DA14AB6-97A2-4E95-A960-E27CBC5E5012/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10103/7/0DA14AB6-97A2-4E95-A960-E27CBC5E5012/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -c copy "Session 10103 - Boost performance with MetalFX Upscaling (2160p).mp4"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 5
# Session 10076 - Bring your iOS app to the Mac
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10076/6/DC2BEEAC-6D3F-40B0-B9A7-0C46031B0C91/subtitles/eng/prog_index.m3u8 -c copy "Session - 10076 temp.vtt"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -i "Session - 10076 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10076 - Bring your iOS app to the Mac (2160p).mp4"
rm "Session - 10076 temp.vtt"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 6
# Session 10070 - Build a desktop-class iPad app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10070 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10070 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10070/3/03E2BD27-04DD-4C07-A662-B94B7F784C65/subtitles/eng/prog_index.m3u8 -c copy "Session - 10070 temp.vtt"
ffmpeg -i "Session - 10070 temp.mp4" -i "Session - 10070 temp.aac" -i "Session - 10070 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10070 - Build a desktop-class iPad app (2160p).mp4"
rm "Session - 10070 temp.vtt"
rm "Session - 10070 temp.mp4"
rm "Session - 10070 temp.aac"

# 7
# Session 10133 - Build a productivity app for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10133/4/BBFD71DD-1E5F-4843-861E-0D333BAA1A3F/subtitles/eng/prog_index.m3u8 -c copy "Session - 10133 temp.vtt"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -i "Session - 10133 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10133 - Build a productivity app for Apple Watch (2160p).mp4"
rm "Session - 10133 temp.vtt"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 8
# Session 10110 - Build global apps - Localization by example
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10110/3/9DDED4EB-547B-46DD-AEE5-9D3F2C60CFF8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10110 temp.vtt"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -i "Session - 10110 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10110 - Build global apps - Localization by example (2160p).mp4"
rm "Session - 10110 temp.vtt"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 9
# Session 10020 - Compose advanced models with Create ML Components
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10020 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10020 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10020/3/D44F2D64-E1DB-492F-9D23-1BFD26FF7EF2/subtitles/eng/prog_index.m3u8 -c copy "Session - 10020 temp.vtt"
ffmpeg -i "Session - 10020 temp.mp4" -i "Session - 10020 temp.aac" -i "Session - 10020 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10020 - Compose advanced models with Create ML Components (2160p).mp4"
rm "Session - 10020 temp.vtt"
rm "Session - 10020 temp.mp4"
rm "Session - 10020 temp.aac"

# 10
# Session 10056 - Compose custom layouts with SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10056/5/F52141E2-6868-4629-A64D-83E618CD6CD5/subtitles/eng/prog_index.m3u8 -c copy "Session - 10056 temp.vtt"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -i "Session - 10056 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10056 - Compose custom layouts with SwiftUI (2160p).mp4"
rm "Session - 10056 temp.vtt"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 11
# Session 110349 - Create engaging content for Swift Playgrounds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110349 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110349 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110349/4/767821EC-6C4C-4F9E-8C8D-1B231B8E1226/subtitles/eng/prog_index.m3u8 -c copy "Session - 110349 temp.vtt"
ffmpeg -i "Session - 110349 temp.mp4" -i "Session - 110349 temp.aac" -i "Session - 110349 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110349 - Create engaging content for Swift Playgrounds (2160p).mp4"
rm "Session - 110349 temp.vtt"
rm "Session - 110349 temp.mp4"
rm "Session - 110349 temp.aac"

# 12
# Session 10167 - Create your Privacy Nutrition Label 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10167/5/043ACD7F-3BC9-4AA1-A5BC-7DCCF91098EA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10167 temp.vtt"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -i "Session - 10167 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10167 - Create your Privacy Nutrition Label  (2160p).mp4"
rm "Session - 10167 temp.vtt"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 13
# Session 110340 - Design an effective chart
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110340 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110340 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110340/3/B5BDA6B6-597F-460B-A88C-959265B6715D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110340 temp.vtt"
ffmpeg -i "Session - 110340 temp.mp4" -i "Session - 110340 temp.aac" -i "Session - 110340 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110340 - Design an effective chart (2160p).mp4"
rm "Session - 110340 temp.vtt"
rm "Session - 110340 temp.mp4"
rm "Session - 110340 temp.aac"

# 14
# Session 110342 - Design app experiences with charts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110342 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110342 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110342/3/8AEC6435-2E81-4B94-BBED-35CCAD0AA0CA/subtitles/eng/prog_index.m3u8 -c copy "Session - 110342 temp.vtt"
ffmpeg -i "Session - 110342 temp.mp4" -i "Session - 110342 temp.aac" -i "Session - 110342 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110342 - Design app experiences with charts (2160p).mp4"
rm "Session - 110342 temp.vtt"
rm "Session - 110342 temp.mp4"
rm "Session - 110342 temp.aac"

# 15
# Session 10169 - Design App Shortcuts
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10169 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10169 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10169/5/8F7E31FB-73E9-405E-8031-74902FC37BB8/subtitles/eng/prog_index.m3u8 -c copy "Session - 10169 temp.vtt"
ffmpeg -i "Session - 10169 temp.mp4" -i "Session - 10169 temp.aac" -i "Session - 10169 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10169 - Design App Shortcuts (2160p).mp4"
rm "Session - 10169 temp.vtt"
rm "Session - 10169 temp.mp4"
rm "Session - 10169 temp.aac"

# 16
# Session 110429 - Discover advancements in iOS camera capture - Depth, focus, and multitasking
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110429 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110429 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110429/4/60E4BC61-632F-484F-AF90-EA3203042E76/subtitles/eng/prog_index.m3u8 -c copy "Session - 110429 temp.vtt"
ffmpeg -i "Session - 110429 temp.mp4" -i "Session - 110429 temp.aac" -i "Session - 110429 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110429 - Discover advancements in iOS camera capture - Depth, focus, and multitasking (2160p).mp4"
rm "Session - 110429 temp.vtt"
rm "Session - 110429 temp.mp4"
rm "Session - 110429 temp.aac"

# 17
# Session 110380 - Display ads and interstitials in SharePlay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110380 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110380 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110380/4/F37ED64E-304D-423D-B8FA-17687B8EC980/subtitles/eng/prog_index.m3u8 -c copy "Session - 110380 temp.vtt"
ffmpeg -i "Session - 110380 temp.mp4" -i "Session - 110380 temp.aac" -i "Session - 110380 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110380 - Display ads and interstitials in SharePlay (2160p).mp4"
rm "Session - 110380 temp.vtt"
rm "Session - 110380 temp.mp4"
rm "Session - 110380 temp.aac"

# 18
# Session 110351 - Eliminate data races using Swift Concurrency
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110351 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110351 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110351/3/2B82DC62-6057-4460-93F4-B99CF7073221/subtitles/eng/prog_index.m3u8 -c copy "Session - 110351 temp.vtt"
ffmpeg -i "Session - 110351 temp.mp4" -i "Session - 110351 temp.aac" -i "Session - 110351 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110351 - Eliminate data races using Swift Concurrency (2160p).mp4"
rm "Session - 110351 temp.vtt"
rm "Session - 110351 temp.mp4"
rm "Session - 110351 temp.aac"

# 19
# Session 110352 - Embrace Swift generics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110352 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110352 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110352/3/961EB9A0-3340-443A-8C57-8665B9034F1D/subtitles/eng/prog_index.m3u8 -c copy "Session - 110352 temp.vtt"
ffmpeg -i "Session - 110352 temp.mp4" -i "Session - 110352 temp.aac" -i "Session - 110352 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110352 - Embrace Swift generics (2160p).mp4"
rm "Session - 110352 temp.vtt"
rm "Session - 110352 temp.mp4"
rm "Session - 110352 temp.aac"

# 20
# Session 10113 - Explore EDR on iOS
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "Session - 10113 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/cc/en/en.m3u8 -c copy "Session - 10113 temp.aac"
ffmpeg -i https://events-delivery.apple.com/wwdc22/S6609-rUNWRhfHEGjdhBffWQLkyEHB/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Session - 10113 temp.vtt"
ffmpeg -i "Session - 10113 temp.mp4" -i "Session - 10113 temp.aac" -i "Session - 10113 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10113 - Explore EDR on iOS (2160p).mp4"
rm "Session - 10113 temp.vtt"
rm "Session - 10113 temp.mp4"
rm "Session - 10113 temp.aac"

# 21
# Session 10040 - Explore in-app purchase integration and migration
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10040/3/EA4705F8-227B-4C1A-81CF-328BB3CA9E68/subtitles/eng/prog_index.m3u8 -c copy "Session - 10040 temp.vtt"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -i "Session - 10040 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10040 - Explore in-app purchase integration and migration (2160p).mp4"
rm "Session - 10040 temp.vtt"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 22
# Session 10141 - Explore USD tools and rendering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10141/4/31DD4CF1-C4A2-4A5C-A3C8-B231788AE125/subtitles/eng/prog_index.m3u8 -c copy "Session - 10141 temp.vtt"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -i "Session - 10141 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10141 - Explore USD tools and rendering (2160p).mp4"
rm "Session - 10141 temp.vtt"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 23
# Session 110369 - Improve the discoverability of your Swift-DocC content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110369 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110369 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110369/4/7FCC1556-7EF4-4CFA-B757-DBCDC51B836A/subtitles/eng/prog_index.m3u8 -c copy "Session - 110369 temp.vtt"
ffmpeg -i "Session - 110369 temp.mp4" -i "Session - 110369 temp.aac" -i "Session - 110369 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110369 - Improve the discoverability of your Swift-DocC content (2160p).mp4"
rm "Session - 110369 temp.vtt"
rm "Session - 110369 temp.mp4"
rm "Session - 110369 temp.aac"

# 24
# Session 10093 - Integrate your custom collaboration app with Messages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10093 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10093 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10093/3/D9CE5DEB-FE73-4FEF-9993-9551EB58CBDC/subtitles/eng/prog_index.m3u8 -c copy "Session - 10093 temp.vtt"
ffmpeg -i "Session - 10093 temp.mp4" -i "Session - 10093 temp.aac" -i "Session - 10093 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10093 - Integrate your custom collaboration app with Messages (2160p).mp4"
rm "Session - 10093 temp.vtt"
rm "Session - 10093 temp.mp4"
rm "Session - 10093 temp.aac"

# 25
# Session 110362 - Link fast - Improve build and launch times
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110362 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110362 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110362/3/629CBACC-AF8F-4856-98CA-075275ADEAA4/subtitles/eng/prog_index.m3u8 -c copy "Session - 110362 temp.vtt"
ffmpeg -i "Session - 110362 temp.mp4" -i "Session - 110362 temp.aac" -i "Session - 110362 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110362 - Link fast - Improve build and launch times (2160p).mp4"
rm "Session - 110362 temp.vtt"
rm "Session - 110362 temp.mp4"
rm "Session - 110362 temp.aac"

# 26
# Session 10148 - Meet Apple Music API and MusicKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10148/4/ABD3D85D-6492-4E1A-B39A-BEBABBC5C075/subtitles/eng/prog_index.m3u8 -c copy "Session - 10148 temp.vtt"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -i "Session - 10148 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10148 - Meet Apple Music API and MusicKit (2160p).mp4"
rm "Session - 10148 temp.vtt"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 27
# Session 110403 - Meet Background Assets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110403 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110403 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110403/3/7B38146A-41F4-422B-A863-6E4277C76C6E/subtitles/eng/prog_index.m3u8 -c copy "Session - 110403 temp.vtt"
ffmpeg -i "Session - 110403 temp.mp4" -i "Session - 110403 temp.aac" -i "Session - 110403 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110403 - Meet Background Assets (2160p).mp4"
rm "Session - 110403 temp.vtt"
rm "Session - 110403 temp.mp4"
rm "Session - 110403 temp.aac"

# 28
# Session 10116 - Meet CKTool JS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10116 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10116 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10116/5/1DD917FC-5154-4B41-93E7-4D8731FB6D2E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10116 temp.vtt"
ffmpeg -i "Session - 10116 temp.mp4" -i "Session - 10116 temp.aac" -i "Session - 10116 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10116 - Meet CKTool JS (2160p).mp4"
rm "Session - 10116 temp.vtt"
rm "Session - 10116 temp.mp4"
rm "Session - 10116 temp.aac"

# 29
# Session 110356 - Meet distributed actors in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110356 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110356 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110356/6/AAC6A083-0D2D-4FFF-B60E-86EF01E37EE2/subtitles/eng/prog_index.m3u8 -c copy "Session - 110356 temp.vtt"
ffmpeg -i "Session - 110356 temp.mp4" -i "Session - 110356 temp.aac" -i "Session - 110356 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110356 - Meet distributed actors in Swift (2160p).mp4"
rm "Session - 110356 temp.vtt"
rm "Session - 110356 temp.mp4"
rm "Session - 110356 temp.aac"

# 30
# Session 10156 - Meet ScreenCaptureKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10156 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10156 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10156/3/740DABB6-6584-492E-AA71-A628E023B346/subtitles/eng/prog_index.m3u8 -c copy "Session - 10156 temp.vtt"
ffmpeg -i "Session - 10156 temp.mp4" -i "Session - 10156 temp.aac" -i "Session - 10156 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10156 - Meet ScreenCaptureKit (2160p).mp4"
rm "Session - 10156 temp.vtt"
rm "Session - 10156 temp.mp4"
rm "Session - 10156 temp.aac"

# 31
# Session 110381 - Meet the expanded San Francisco font family
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110381 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110381 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110381/5/23FB4AFE-1352-4B9D-A2C6-A3F7C232C022/subtitles/eng/prog_index.m3u8 -c copy "Session - 110381 temp.vtt"
ffmpeg -i "Session - 110381 temp.mp4" -i "Session - 110381 temp.aac" -i "Session - 110381 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110381 - Meet the expanded San Francisco font family (2160p).mp4"
rm "Session - 110381 temp.vtt"
rm "Session - 110381 temp.mp4"
rm "Session - 110381 temp.aac"

# 32
# Session 10062 - Meet Transferable
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10062/4/004375E4-2295-45FB-9D6D-20F1B8C3834C/subtitles/eng/prog_index.m3u8 -c copy "Session - 10062 temp.vtt"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -i "Session - 10062 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10062 - Meet Transferable (2160p).mp4"
rm "Session - 10062 temp.vtt"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 33
# Session 10027 - Optimize your Core ML usage
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10027/3/F6386488-80EB-46AC-BFEE-23B81B5E621A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10027 temp.vtt"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -i "Session - 10027 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10027 - Optimize your Core ML usage (2160p).mp4"
rm "Session - 10027 temp.vtt"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 34
# Session 10119 - Optimize your use of Core Data and CloudKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10119/4/8D4ACDA6-A3CE-4294-8DFE-B4CF5DE26D86/subtitles/eng/prog_index.m3u8 -c copy "Session - 10119 temp.vtt"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -i "Session - 10119 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10119 - Optimize your use of Core Data and CloudKit (2160p).mp4"
rm "Session - 10119 temp.vtt"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 35
# Session 10077 - Replace CAPTCHAs with Private Access Tokens
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10077 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10077 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10077/4/C35119F9-FA1E-478C-9638-E90C1153FACD/subtitles/eng/prog_index.m3u8 -c copy "Session - 10077 temp.vtt"
ffmpeg -i "Session - 10077 temp.mp4" -i "Session - 10077 temp.aac" -i "Session - 10077 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10077 - Replace CAPTCHAs with Private Access Tokens (2160p).mp4"
rm "Session - 10077 temp.vtt"
rm "Session - 10077 temp.mp4"
rm "Session - 10077 temp.aac"

# 36
# Session 10108 - Streamline local authorization flows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10108 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10108 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10108/4/1F8BF487-ABEF-47CD-AC84-C3AC2E35885A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10108 temp.vtt"
ffmpeg -i "Session - 10108 temp.mp4" -i "Session - 10108 temp.aac" -i "Session - 10108 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10108 - Streamline local authorization flows (2160p).mp4"
rm "Session - 10108 temp.vtt"
rm "Session - 10108 temp.mp4"
rm "Session - 10108 temp.aac"

# 37
# Session 110384 - Support multiple users in tvOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110384 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110384 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110384/6/1F377839-E110-4222-BBC2-B0424F6E635C/subtitles/eng/prog_index.m3u8 -c copy "Session - 110384 temp.vtt"
ffmpeg -i "Session - 110384 temp.mp4" -i "Session - 110384 temp.aac" -i "Session - 110384 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110384 - Support multiple users in tvOS apps (2160p).mp4"
rm "Session - 110384 temp.vtt"
rm "Session - 110384 temp.mp4"
rm "Session - 110384 temp.aac"

# 38
# Session 10137 - Swift Charts - Raise the bar 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10137/3/AB0A9BA9-E0B1-440B-98E6-E9C8A395FF34/subtitles/eng/prog_index.m3u8 -c copy "Session - 10137 temp.vtt"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -i "Session - 10137 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10137 - Swift Charts - Raise the bar  (2160p).mp4"
rm "Session - 10137 temp.vtt"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 39
# Session 110358 - Swift Regex - Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110358 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110358 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110358/6/CCCFE7E0-48F7-4D00-A8C1-6DB5E768F833/subtitles/eng/prog_index.m3u8 -c copy "Session - 110358 temp.vtt"
ffmpeg -i "Session - 110358 temp.mp4" -i "Session - 110358 temp.aac" -i "Session - 110358 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110358 - Swift Regex - Beyond the basics (2160p).mp4"
rm "Session - 110358 temp.vtt"
rm "Session - 110358 temp.mp4"
rm "Session - 110358 temp.aac"

# 40
# Session 10155 - Take ScreenCaptureKit to the next level
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10155 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10155 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10155/5/6A4BFEE6-F1BC-4E6A-9A03-13EBF7D38664/subtitles/eng/prog_index.m3u8 -c copy "Session - 10155 temp.vtt"
ffmpeg -i "Session - 10155 temp.mp4" -i "Session - 10155 temp.aac" -i "Session - 10155 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10155 - Take ScreenCaptureKit to the next level (2160p).mp4"
rm "Session - 10155 temp.vtt"
rm "Session - 10155 temp.mp4"
rm "Session - 10155 temp.aac"

# 41
# Session 10102 - Target and optimize GPU binaries with Metal 3
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10102/4/E03398C4-8CAE-4CA1-905A-22205249E038/subtitles/eng/prog_index.m3u8 -c copy "Session - 10102 temp.vtt"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -i "Session - 10102 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10102 - Target and optimize GPU binaries with Metal 3 (2160p).mp4"
rm "Session - 10102 temp.vtt"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 42
# Session 10129 - Understand USD fundamentals
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10129 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10129 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10129/6/FB8C0A23-9B2F-4564-B2C3-D48F6B53BB9A/subtitles/eng/prog_index.m3u8 -c copy "Session - 10129 temp.vtt"
ffmpeg -i "Session - 10129 temp.mp4" -i "Session - 10129 temp.aac" -i "Session - 10129 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10129 - Understand USD fundamentals (2160p).mp4"
rm "Session - 10129 temp.vtt"
rm "Session - 10129 temp.mp4"
rm "Session - 10129 temp.aac"

# 43
# Session 110371 - Use Xcode to develop a multiplatform app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110371 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110371 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110371/4/F41F7DFC-33C6-4BFA-9CC0-D212E30E6599/subtitles/eng/prog_index.m3u8 -c copy "Session - 110371 temp.vtt"
ffmpeg -i "Session - 110371 temp.mp4" -i "Session - 110371 temp.aac" -i "Session - 110371 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110371 - Use Xcode to develop a multiplatform app (2160p).mp4"
rm "Session - 110371 temp.vtt"
rm "Session - 110371 temp.mp4"
rm "Session - 110371 temp.aac"

# 44
# Session 10005 - What's new in HealthKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10005 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10005 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10005/4/55C7CDFC-2E36-4AC0-8E77-7327EBD9E0E9/subtitles/eng/prog_index.m3u8 -c copy "Session - 10005 temp.vtt"
ffmpeg -i "Session - 10005 temp.mp4" -i "Session - 10005 temp.aac" -i "Session - 10005 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10005 - What's new in HealthKit (2160p).mp4"
rm "Session - 10005 temp.vtt"
rm "Session - 10005 temp.mp4"
rm "Session - 10005 temp.aac"

# 45
# Session 110368 - What's new in Swift-DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110368 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110368 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110368/6/40936E45-C4DD-4831-B7B9-146B53027E76/subtitles/eng/prog_index.m3u8 -c copy "Session - 110368 temp.vtt"
ffmpeg -i "Session - 110368 temp.mp4" -i "Session - 110368 temp.aac" -i "Session - 110368 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110368 - What's new in Swift-DocC (2160p).mp4"
rm "Session - 110368 temp.vtt"
rm "Session - 110368 temp.mp4"
rm "Session - 110368 temp.aac"

# 46
# Session 10038 - What's new with SKAdNetwork
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10038 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10038 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10038/4/42910CBB-36EB-4C09-9234-DAB67E71BAA6/subtitles/eng/prog_index.m3u8 -c copy "Session - 10038 temp.vtt"
ffmpeg -i "Session - 10038 temp.mp4" -i "Session - 10038 temp.aac" -i "Session - 10038 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10038 - What's new with SKAdNetwork (2160p).mp4"
rm "Session - 10038 temp.vtt"
rm "Session - 10038 temp.mp4"
rm "Session - 10038 temp.aac"

# 47
# Session 10149 - What’s new in AVQT
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10149/4/BAEE96D6-1250-4911-A2D6-A96AC4D48ED4/subtitles/eng/prog_index.m3u8 -c copy "Session - 10149 temp.vtt"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -i "Session - 10149 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10149 - What’s new in AVQT (2160p).mp4"
rm "Session - 10149 temp.vtt"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 48
# Session 10115 - What’s new in CloudKit Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10115/3/76BE7C00-CB67-4FF0-A159-19D8B091CED3/subtitles/eng/prog_index.m3u8 -c copy "Session - 10115 temp.vtt"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -i "Session - 10115 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10115 - What’s new in CloudKit Console (2160p).mp4"
rm "Session - 10115 temp.vtt"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 49
# Session 110345 - What’s new in Endpoint Security
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 110345 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 110345 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/110345/4/D78059C0-3932-4CAA-8B45-098BEB4ACF45/subtitles/eng/prog_index.m3u8 -c copy "Session - 110345 temp.vtt"
ffmpeg -i "Session - 110345 temp.mp4" -i "Session - 110345 temp.aac" -i "Session - 110345 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 110345 - What’s new in Endpoint Security (2160p).mp4"
rm "Session - 110345 temp.vtt"
rm "Session - 110345 temp.mp4"
rm "Session - 110345 temp.aac"

# 50
# Session 10009 - What’s new in iPad app design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10009 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10009 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10009/5/22B7E083-47EE-4292-AD3E-6622DA2DF064/subtitles/eng/prog_index.m3u8 -c copy "Session - 10009 temp.vtt"
ffmpeg -i "Session - 10009 temp.mp4" -i "Session - 10009 temp.aac" -i "Session - 10009 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10009 - What’s new in iPad app design (2160p).mp4"
rm "Session - 10009 temp.vtt"
rm "Session - 10009 temp.mp4"
rm "Session - 10009 temp.aac"

# 51
# Session 10096 - What’s new in privacy
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10096/3/A04D6D9D-A138-488C-A470-371FB62609AA/subtitles/eng/prog_index.m3u8 -c copy "Session - 10096 temp.vtt"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -i "Session - 10096 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10096 - What’s new in privacy (2160p).mp4"
rm "Session - 10096 temp.vtt"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 52
# Session 10099 - What’s new in Safari Web Extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10099 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10099 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10099/5/AE8329C9-B427-49CF-95BE-71C9B5F49627/subtitles/eng/prog_index.m3u8 -c copy "Session - 10099 temp.vtt"
ffmpeg -i "Session - 10099 temp.mp4" -i "Session - 10099 temp.aac" -i "Session - 10099 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10099 - What’s new in Safari Web Extensions (2160p).mp4"
rm "Session - 10099 temp.vtt"
rm "Session - 10099 temp.mp4"
rm "Session - 10099 temp.aac"

# 53
# Session 10041 - What’s new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2022/10041/4/A173FAFA-9D08-4E7F-9154-7B821167B78E/subtitles/eng/prog_index.m3u8 -c copy "Session - 10041 temp.vtt"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -i "Session - 10041 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 10041 - What’s new in Wallet and Apple Pay (2160p).mp4"
rm "Session - 10041 temp.vtt"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"
