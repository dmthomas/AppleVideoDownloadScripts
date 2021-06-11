# Script to download all the WWDC 21 session videos in the highest 4K video and audio
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
# WWDC21 Keynote
ffmpeg -i https://p-events-delivery.akamaized.net/1805asrvgvurxcrkewleraugwqathmvg/vod_FbRMWBEvqAdggApZaUoqQJkJWhojfMfh/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "WWDC 2021 Keynote temp.mp4"
ffmpeg -i https://p-events-delivery.akamaized.net/1805asrvgvurxcrkewleraugwqathmvg/vod_FbRMWBEvqAdggApZaUoqQJkJWhojfMfh/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2021 Keynote temp.aac"
ffmpeg -i "WWDC 2021 Keynote temp.mp4" -i "WWDC 2021 Keynote temp.aac" -c copy "Apple WWDC 2021 Keynote Address (2160p).mp4"
rm "WWDC 2021 Keynote temp.mp4"
rm "WWDC 2021 Keynote temp.aac"

# 2
# WWDC21 Platforms State of the Union
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/102/2/C759AA08-C4FB-4066-B494-4A1589BD9A7E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "WWDC 2021 Platforms State of the Union temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/102/2/C759AA08-C4FB-4066-B494-4A1589BD9A7E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "WWDC 2021 Platforms State of the Union temp.aac"
ffmpeg -i "WWDC 2021 Platforms State of the Union temp.mp4" -i "WWDC 2021 Platforms State of the Union temp.aac" -c copy "WWDC 2021 Platforms State of the Union (2160p).mp4"
rm "WWDC 2021 Platforms State of the Union temp.mp4"
rm "WWDC 2021 Platforms State of the Union temp.aac"

# 3
# Session 10152 - Accelerate machine learning with Metal Performance Shaders Graph
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10152/6/38BC0CF8-718D-4950-9CC4-B64396F5FFDD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10152/6/38BC0CF8-718D-4950-9CC4-B64396F5FFDD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -c copy "Session 10152 - Accelerate machine learning with Metal Performance Shaders Graph (2160p).mp4"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 4
# Session 10094 - Accelerate networking with HTTP-3 and QUIC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10094/7/81661D98-9D24-4A8F-8805-9460365F986B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10094/7/81661D98-9D24-4A8F-8805-9460365F986B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -c copy "Session 10094 - Accelerate networking with HTTP-3 and QUIC (2160p).mp4"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 5
# Session 10308 - Accessibility by design - An Apple Watch for everyone
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10308/18/BA664ADF-042F-4084-8565-61FC83578C92/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10308 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10308/18/BA664ADF-042F-4084-8565-61FC83578C92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10308 temp.aac"
ffmpeg -i "Session - 10308 temp.mp4" -i "Session - 10308 temp.aac" -c copy "Session 10308 - Accessibility by design - An Apple Watch for everyone (2160p).mp4"
rm "Session - 10308 temp.mp4"
rm "Session - 10308 temp.aac"

# 6
# Session 10049 - Add intelligence to your widgets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10049/5/79001019-5F3C-4B12-A9F7-01FCE02A0381/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10049/5/79001019-5F3C-4B12-A9F7-01FCE02A0381/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -c copy "Session 10049 - Add intelligence to your widgets (2160p).mp4"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"

# 7
# Session 10021 - Add rich graphics to your SwiftUI app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10021/8/16B955CA-C8EE-4062-9495-C6571401B563/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10021 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10021/8/16B955CA-C8EE-4062-9495-C6571401B563/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10021 temp.aac"
ffmpeg -i "Session - 10021 temp.mp4" -i "Session - 10021 temp.aac" -c copy "Session 10021 - Add rich graphics to your SwiftUI app (2160p).mp4"
rm "Session - 10021 temp.mp4"
rm "Session - 10021 temp.aac"

# 8
# Session 10298 - Add support for Matter in your smart home app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10298/8/B4998783-FC66-455C-9469-213C69446C72/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10298 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10298/8/B4998783-FC66-455C-9469-213C69446C72/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10298 temp.aac"
ffmpeg -i "Session - 10298 temp.mp4" -i "Session - 10298 temp.aac" -c copy "Session 10298 - Add support for Matter in your smart home app (2160p).mp4"
rm "Session - 10298 temp.mp4"
rm "Session - 10298 temp.aac"

# 9
# Session 10264 - Adopt Quick Note
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10264/3/A5939C70-9333-4792-A9D5-A98FF6347D4C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10264 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10264/3/A5939C70-9333-4792-A9D5-A98FF6347D4C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10264 temp.aac"
ffmpeg -i "Session - 10264 temp.mp4" -i "Session - 10264 temp.aac" -c copy "Session 10264 - Adopt Quick Note (2160p).mp4"
rm "Session - 10264 temp.mp4"
rm "Session - 10264 temp.aac"

# 10
# Session 10212 - Analyze HTTP traffic in Instruments 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10212/4/20646031-B78D-4268-9B08-A74EC6ABB639/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10212 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10212/4/20646031-B78D-4268-9B08-A74EC6ABB639/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10212 temp.aac"
ffmpeg -i "Session - 10212 temp.mp4" -i "Session - 10212 temp.aac" -c copy "Session 10212 - Analyze HTTP traffic in Instruments  (2160p).mp4"
rm "Session - 10212 temp.mp4"
rm "Session - 10212 temp.aac"

# 11
# Session 10085 - Apple’s privacy pillars in focus
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10085/7/588BAC34-15EB-4FCE-AF4F-5934A7DD4024/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10085/7/588BAC34-15EB-4FCE-AF4F-5934A7DD4024/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -c copy "Session 10085 - Apple’s privacy pillars in focus (2160p).mp4"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 12
# Session 10078 - AR Quick Look, meet Object Capture 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10078/7/D952E090-6CA8-4748-9B71-385AC16452AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10078/7/D952E090-6CA8-4748-9B71-385AC16452AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -c copy "Session 10078 - AR Quick Look, meet Object Capture  (2160p).mp4"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 13
# Session 10216 - ARC in Swift - Basics and beyond
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10216/4/884C234F-2424-47DF-A4CF-A9010D869C66/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10216 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10216/4/884C234F-2424-47DF-A4CF-A9010D869C66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10216 temp.aac"
ffmpeg -i "Session - 10216 temp.mp4" -i "Session - 10216 temp.aac" -c copy "Session 10216 - ARC in Swift - Basics and beyond (2160p).mp4"
rm "Session - 10216 temp.mp4"
rm "Session - 10216 temp.aac"

# 14
# Session 10118 - Automate CloudKit tests with cktool and declarative schema
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10118/4/9B80307B-4AD2-499D-81D9-ABD4D94DFE78/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10118/4/9B80307B-4AD2-499D-81D9-ABD4D94DFE78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -c copy "Session 10118 - Automate CloudKit tests with cktool and declarative schema (2160p).mp4"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"

# 15
# Session 10122 - Bring accessibility to charts in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10122/6/218A971D-4AB5-4417-96CE-15D01B009082/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10122/6/218A971D-4AB5-4417-96CE-15D01B009082/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -c copy "Session 10122 - Bring accessibility to charts in your app (2160p).mp4"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 16
# Session 10017 - Bring Core Data concurrency to Swift and SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10017/4/F075C8AE-C8D2-40F9-8520-018581E3A771/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10017 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10017/4/F075C8AE-C8D2-40F9-8520-018581E3A771/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10017 temp.aac"
ffmpeg -i "Session - 10017 temp.mp4" -i "Session - 10017 temp.aac" -c copy "Session 10017 - Bring Core Data concurrency to Swift and SwiftUI (2160p).mp4"
rm "Session - 10017 temp.mp4"
rm "Session - 10017 temp.aac"

# 17
# Session 10067 - Bring Recurring Leaderboards to your game
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10067/7/1E50A29A-8D8C-4103-B1E4-F62F2C5AA329/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10067 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10067/7/1E50A29A-8D8C-4103-B1E4-F62F2C5AA329/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10067 temp.aac"
ffmpeg -i "Session - 10067 temp.mp4" -i "Session - 10067 temp.aac" -c copy "Session 10067 - Bring Recurring Leaderboards to your game (2160p).mp4"
rm "Session - 10067 temp.mp4"
rm "Session - 10067 temp.aac"

# 18
# Session 10068 - Build a research and care app, part 1 - Setup onboarding
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10068/4/12425579-AD44-4883-AF2E-0453E511183B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10068/4/12425579-AD44-4883-AF2E-0453E511183B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -c copy "Session 10068 - Build a research and care app, part 1 - Setup onboarding (2160p).mp4"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 19
# Session 10069 - Build a research and care app, part 2 - Schedule tasks
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10069/3/A1BAF400-4B07-4759-956D-2A7D5522311C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10069/3/A1BAF400-4B07-4759-956D-2A7D5522311C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -c copy "Session 10069 - Build a research and care app, part 2 - Schedule tasks (2160p).mp4"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 20
# Session 10282 - Build a research and care app, part 3 - Visualize progress
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10282/6/B06925A6-3197-4AAB-98EA-4634CD61EED0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10282 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10282/6/B06925A6-3197-4AAB-98EA-4634CD61EED0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10282 temp.aac"
ffmpeg -i "Session - 10282 temp.mp4" -i "Session - 10282 temp.aac" -c copy "Session 10282 - Build a research and care app, part 3 - Visualize progress (2160p).mp4"
rm "Session - 10282 temp.mp4"
rm "Session - 10282 temp.aac"

# 21
# Session 10009 - Build a workout app for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10009/4/C77618B9-A832-406C-89F0-933F2139F0AD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10009 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10009/4/C77618B9-A832-406C-89F0-933F2139F0AD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10009 temp.aac"
ffmpeg -i "Session - 10009 temp.mp4" -i "Session - 10009 temp.aac" -c copy "Session 10009 - Build a workout app for Apple Watch (2160p).mp4"
rm "Session - 10009 temp.mp4"
rm "Session - 10009 temp.aac"

# 22
# Session 10015 - Build apps that share data through CloudKit and Core Data 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10015/4/7C4C52B4-3B54-4FCE-8300-BEA17FC4A7AE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10015/4/7C4C52B4-3B54-4FCE-8300-BEA17FC4A7AE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -c copy "Session 10015 - Build apps that share data through CloudKit and Core Data  (2160p).mp4"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 23
# Session 10187 - Build custom experiences with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10187/3/53AD885C-179C-4013-A2D3-D985CE932C87/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10187 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10187/3/53AD885C-179C-4013-A2D3-D985CE932C87/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10187 temp.aac"
ffmpeg -i "Session - 10187 temp.mp4" -i "Session - 10187 temp.aac" -c copy "Session 10187 - Build custom experiences with Group Activities (2160p).mp4"
rm "Session - 10187 temp.mp4"
rm "Session - 10187 temp.aac"

# 24
# Session 10037 - Build dynamic iOS apps with the Create ML framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10037/3/4705B592-C85E-4872-A252-5C377A1022D6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10037/3/4705B592-C85E-4872-A252-5C377A1022D6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -c copy "Session 10037 - Build dynamic iOS apps with the Create ML framework (2160p).mp4"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"

# 25
# Session 10235 - Build interactive tutorials using DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10235/6/D2C51374-4073-4A41-97CB-4217A096F2B3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10235 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10235/6/D2C51374-4073-4A41-97CB-4217A096F2B3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10235 temp.aac"
ffmpeg -i "Session - 10235 temp.mp4" -i "Session - 10235 temp.aac" -c copy "Session 10235 - Build interactive tutorials using DocC (2160p).mp4"
rm "Session - 10235 temp.mp4"
rm "Session - 10235 temp.aac"

# 26
# Session 10196 - Build interfaces with style
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10196/7/D9910EC1-1CF4-47F0-B7CD-5D5CEE199F0D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10196 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10196/7/D9910EC1-1CF4-47F0-B7CD-5D5CEE199F0D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10196 temp.aac"
ffmpeg -i "Session - 10196 temp.mp4" -i "Session - 10196 temp.aac" -c copy "Session 10196 - Build interfaces with style (2160p).mp4"
rm "Session - 10196 temp.mp4"
rm "Session - 10196 temp.aac"

# 27
# Session 10013 - Build light and fast App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10013/5/F623A344-AF7B-44AF-89A0-DF275CE40E7A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10013 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10013/5/F623A344-AF7B-44AF-89A0-DF275CE40E7A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10013 temp.aac"
ffmpeg -i "Session - 10013 temp.mp4" -i "Session - 10013 temp.aac" -c copy "Session 10013 - Build light and fast App Clips (2160p).mp4"
rm "Session - 10013 temp.mp4"
rm "Session - 10013 temp.aac"

# 28
# Session 10168 - Build Mail app extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10168/10/DB697C64-E7F4-431F-BA61-53827D49FC36/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10168/10/DB697C64-E7F4-431F-BA61-53827D49FC36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -c copy "Session 10168 - Build Mail app extensions (2160p).mp4"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 29
# Session 10160 - Capture and process ProRAW images
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10160/6/08FEC739-8354-4B2F-B06F-F7F8FCD5E6ED/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10160/6/08FEC739-8354-4B2F-B06F-F7F8FCD5E6ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -c copy "Session 10160 - Capture and process ProRAW images (2160p).mp4"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 30
# Session 10247 - Capture high-quality photos using video formats
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10247/10/1D70E20D-6FE1-4770-9932-4BC4F4C4F7BA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10247 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10247/10/1D70E20D-6FE1-4770-9932-4BC4F4C4F7BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10247 temp.aac"
ffmpeg -i "Session - 10247 temp.mp4" -i "Session - 10247 temp.aac" -c copy "Session 10247 - Capture high-quality photos using video formats (2160p).mp4"
rm "Session - 10247 temp.mp4"
rm "Session - 10247 temp.aac"

# 31
# Session 10039 - Classify hand poses and actions with Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10039/6/21ABF0C5-D90C-4198-9791-027910A0EE4A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10039/6/21ABF0C5-D90C-4198-9791-027910A0EE4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -c copy "Session 10039 - Classify hand poses and actions with Create ML (2160p).mp4"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 32
# Session 10005 - Connect Bluetooth devices to Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10005/6/F54416C7-9591-4AE8-AE9D-365C4BAC2D7E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10005 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10005/6/F54416C7-9591-4AE8-AE9D-365C4BAC2D7E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10005 temp.aac"
ffmpeg -i "Session - 10005 temp.mp4" -i "Session - 10005 temp.aac" -c copy "Session 10005 - Connect Bluetooth devices to Apple Watch (2160p).mp4"
rm "Session - 10005 temp.mp4"
rm "Session - 10005 temp.aac"

# 33
# Session 10225 - Coordinate media experiences with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10225/3/2E1829B4-1726-4DB1-8211-63F39B0080EF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10225 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10225/3/2E1829B4-1726-4DB1-8211-63F39B0080EF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10225 temp.aac"
ffmpeg -i "Session - 10225 temp.mp4" -i "Session - 10225 temp.aac" -c copy "Session 10225 - Coordinate media experiences with Group Activities (2160p).mp4"
rm "Session - 10225 temp.mp4"
rm "Session - 10225 temp.aac"

# 34
# Session 10189 - Coordinate media playback in Safari with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10189/6/94D452D6-3731-4C08-8EFA-BD8F6B8853ED/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10189 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10189/6/94D452D6-3731-4C08-8EFA-BD8F6B8853ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10189 temp.aac"
ffmpeg -i "Session - 10189 temp.mp4" -i "Session - 10189 temp.aac" -c copy "Session 10189 - Coordinate media playback in Safari with Group Activities (2160p).mp4"
rm "Session - 10189 temp.mp4"
rm "Session - 10189 temp.aac"

# 35
# Session 10176 - Craft search experiences in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10176/7/5699E756-ACAC-4EFA-801B-5709E5EDF434/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10176/7/5699E756-ACAC-4EFA-801B-5709E5EDF434/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -c copy "Session 10176 - Craft search experiences in SwiftUI (2160p).mp4"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 36
# Session 10076 - Create 3D models with Object Capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10076/8/AE671810-9424-412B-826B-32C13C4AC0D9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10076/8/AE671810-9424-412B-826B-32C13C4AC0D9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -c copy "Session 10076 - Create 3D models with Object Capture (2160p).mp4"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 37
# Session 10077 - Create 3D workflows with USD
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10077/9/BE748DC5-387D-4E4A-8D9B-05B80B919870/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10077 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10077/9/BE748DC5-387D-4E4A-8D9B-05B80B919870/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10077 temp.aac"
ffmpeg -i "Session - 10077 temp.mp4" -i "Session - 10077 temp.aac" -c copy "Session 10077 - Create 3D workflows with USD (2160p).mp4"
rm "Session - 10077 temp.mp4"
rm "Session - 10077 temp.aac"

# 38
# Session 10223 - Create accessible experiences for watchOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10223/6/F4C83469-5B64-46D0-9FC6-F2EC7AC47414/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10223 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10223/6/F4C83469-5B64-46D0-9FC6-F2EC7AC47414/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10223 temp.aac"
ffmpeg -i "Session - 10223 temp.mp4" -i "Session - 10223 temp.aac" -c copy "Session 10223 - Create accessible experiences for watchOS (2160p).mp4"
rm "Session - 10223 temp.mp4"
rm "Session - 10223 temp.aac"

# 39
# Session 10190 - Create audio drivers with DriverKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10190/5/C1305D2C-3534-4C07-A3D7-3A70DA9FCAE2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10190 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10190/5/C1305D2C-3534-4C07-A3D7-3A70DA9FCAE2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10190 temp.aac"
ffmpeg -i "Session - 10190 temp.mp4" -i "Session - 10190 temp.aac" -c copy "Session 10190 - Create audio drivers with DriverKit (2160p).mp4"
rm "Session - 10190 temp.mp4"
rm "Session - 10190 temp.aac"

# 40
# Session 10045 - Create custom audio experiences with ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10045/5/3099F002-4DB2-4D54-8272-1DABD4768AF2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10045/5/3099F002-4DB2-4D54-8272-1DABD4768AF2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -c copy "Session 10045 - Create custom audio experiences with ShazamKit (2160p).mp4"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 41
# Session 10250 - Create custom symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10250/5/0F96BECB-C142-4BA8-8CEA-5EE69F7BF77E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10250 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10250/5/0F96BECB-C142-4BA8-8CEA-5EE69F7BF77E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10250 temp.aac"
ffmpeg -i "Session - 10250 temp.mp4" -i "Session - 10250 temp.aac" -c copy "Session 10250 - Create custom symbols (2160p).mp4"
rm "Session - 10250 temp.mp4"
rm "Session - 10250 temp.aac"

# 42
# Session 10153 - Create image processing apps powered by Apple Silicon
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10153/4/F8C484C1-A0A2-4377-992B-313BEB320A28/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10153/4/F8C484C1-A0A2-4377-992B-313BEB320A28/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -c copy "Session 10153 - Create image processing apps powered by Apple Silicon (2160p).mp4"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 43
# Session 10293 - Cross reference content with the Apple Music API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10293/4/0B5E2326-630B-4D85-A75B-410E36F1D69F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10293 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10293/4/0B5E2326-630B-4D85-A75B-410E36F1D69F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10293 temp.aac"
ffmpeg -i "Session - 10293 temp.mp4" -i "Session - 10293 temp.aac" -c copy "Session 10293 - Cross reference content with the Apple Music API (2160p).mp4"
rm "Session - 10293 temp.mp4"
rm "Session - 10293 temp.aac"

# 44
# Session 10063 - Customize and resize sheets in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10063/8/0D794296-1707-4A1D-8CBB-B2CAFEA82AAC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10063/8/0D794296-1707-4A1D-8CBB-B2CAFEA82AAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -c copy "Session 10063 - Customize and resize sheets in UIKit (2160p).mp4"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 45
# Session 10269 - Customize your advanced Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10269/3/CA083488-C662-4ADA-8BA2-89647472F1C9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10269 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10269/3/CA083488-C662-4ADA-8BA2-89647472F1C9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10269 temp.aac"
ffmpeg -i "Session - 10269 temp.mp4" -i "Session - 10269 temp.aac" -c copy "Session 10269 - Customize your advanced Xcode Cloud workflows (2160p).mp4"
rm "Session - 10269 temp.mp4"
rm "Session - 10269 temp.aac"

# 46
# Session 10191 - Deliver a great playback experience on tvOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10191/4/E98B040E-0A40-48C3-85D2-F7F18715F00F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10191 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10191/4/E98B040E-0A40-48C3-85D2-F7F18715F00F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10191 temp.aac"
ffmpeg -i "Session - 10191 temp.mp4" -i "Session - 10191 temp.aac" -c copy "Session 10191 - Deliver a great playback experience on tvOS (2160p).mp4"
rm "Session - 10191 temp.mp4"
rm "Session - 10191 temp.aac"

# 47
# Session 10022 - Demystify SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10022/7/72A67717-944A-4D86-BFDD-D1B307C722EC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10022 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10022/7/72A67717-944A-4D86-BFDD-D1B307C722EC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10022 temp.aac"
ffmpeg -i "Session - 10022 temp.mp4" -i "Session - 10022 temp.aac" -c copy "Session 10022 - Demystify SwiftUI (2160p).mp4"
rm "Session - 10022 temp.mp4"
rm "Session - 10022 temp.aac"

# 48
# Session 10184 - Design for Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10184/8/29115819-C262-4945-BC6F-4DE0655DC0DF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10184/8/29115819-C262-4945-BC6F-4DE0655DC0DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -c copy "Session 10184 - Design for Group Activities (2160p).mp4"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 49
# Session 10029 - Design for Safari 15
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10029/4/8B75DA3D-09DF-40FD-AC0E-FB6A7EECE3F1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10029 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10029/4/8B75DA3D-09DF-40FD-AC0E-FB6A7EECE3F1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10029 temp.aac"
ffmpeg -i "Session - 10029 temp.mp4" -i "Session - 10029 temp.aac" -c copy "Session 10029 - Design for Safari 15 (2160p).mp4"
rm "Session - 10029 temp.mp4"
rm "Session - 10029 temp.aac"

# 50
# Session 10245 - Design for spatial interaction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10245/8/3C4EE68C-F0FF-4ECE-ADF0-6419DCDE9C00/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10245 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10245/8/3C4EE68C-F0FF-4ECE-ADF0-6419DCDE9C00/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10245 temp.aac"
ffmpeg -i "Session - 10245 temp.mp4" -i "Session - 10245 temp.aac" -c copy "Session 10245 - Design for spatial interaction (2160p).mp4"
rm "Session - 10245 temp.mp4"
rm "Session - 10245 temp.aac"

# 51
# Session 10283 - Design great actions for Shortcuts, Siri, and Suggestions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10283/6/870EDB46-506F-4A85-83FE-8B90CA8A2C92/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10283 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10283/6/870EDB46-506F-4A85-83FE-8B90CA8A2C92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10283 temp.aac"
ffmpeg -i "Session - 10283 temp.mp4" -i "Session - 10283 temp.aac" -c copy "Session 10283 - Design great actions for Shortcuts, Siri, and Suggestions (2160p).mp4"
rm "Session - 10283 temp.mp4"
rm "Session - 10283 temp.aac"

# 52
# Session 10180 - Detect and diagnose memory issues
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10180/5/0CD6241A-4A02-4CD3-9885-93ABE0FD4981/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10180 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10180/5/0CD6241A-4A02-4CD3-9885-93ABE0FD4981/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10180 temp.aac"
ffmpeg -i "Session - 10180 temp.mp4" -i "Session - 10180 temp.aac" -c copy "Session 10180 - Detect and diagnose memory issues (2160p).mp4"
rm "Session - 10180 temp.mp4"
rm "Session - 10180 temp.aac"

# 53
# Session 10202 - Detect bugs early with the static analyzer
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10202/3/1E0D5337-0542-423B-9775-7FB518B7707B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10202 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10202/3/1E0D5337-0542-423B-9775-7FB518B7707B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10202 temp.aac"
ffmpeg -i "Session - 10202 temp.mp4" -i "Session - 10202 temp.aac" -c copy "Session 10202 - Detect bugs early with the static analyzer (2160p).mp4"
rm "Session - 10202 temp.mp4"
rm "Session - 10202 temp.aac"

# 54
# Session 10040 - Detect people, faces, and poses using Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10040/3/F855147A-D789-4E63-81CE-5050A5A3DB14/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10040/3/F855147A-D789-4E63-81CE-5050A5A3DB14/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -c copy "Session 10040 - Detect people, faces, and poses using Vision (2160p).mp4"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 55
# Session 10030 - Develop advanced web content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10030/8/09E3E250-3136-4428-BC4F-F7891EDC76AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10030 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10030/8/09E3E250-3136-4428-BC4F-F7891EDC76AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10030 temp.aac"
ffmpeg -i "Session - 10030 temp.mp4" -i "Session - 10030 temp.aac" -c copy "Session 10030 - Develop advanced web content (2160p).mp4"
rm "Session - 10030 temp.mp4"
rm "Session - 10030 temp.aac"

# 56
# Session 10318 - Developer spotlight - Accessibility
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10318/12/ACAF8CC7-BEA9-44B2-A056-557CDC67692C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10318 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10318/12/ACAF8CC7-BEA9-44B2-A056-557CDC67692C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10318 temp.aac"
ffmpeg -i "Session - 10318 temp.mp4" -i "Session - 10318 temp.aac" -c copy "Session 10318 - Developer spotlight - Accessibility (2160p).mp4"
rm "Session - 10318 temp.mp4"
rm "Session - 10318 temp.aac"

# 57
# Session 10087 - Diagnose Power and Performance regressions in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10087/6/35272A76-3FD8-4149-B4C9-B7C0AA197E61/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10087/6/35272A76-3FD8-4149-B4C9-B7C0AA197E61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -c copy "Session 10087 - Diagnose Power and Performance regressions in your app (2160p).mp4"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 58
# Session 10296 - Diagnose unreliable code with test repetitions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10296/6/FE383085-9A76-432B-B78A-FF8149F81733/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10296 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10296/6/FE383085-9A76-432B-B78A-FF8149F81733/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10296 temp.aac"
ffmpeg -i "Session - 10296 temp.mp4" -i "Session - 10296 temp.aac" -c copy "Session 10296 - Diagnose unreliable code with test repetitions (2160p).mp4"
rm "Session - 10296 temp.mp4"
rm "Session - 10296 temp.aac"

# 59
# Session 10023 - Direct and reflect focus in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10023/5/ED227AE3-34ED-45F7-BB9D-7E4F06876C3B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10023/5/ED227AE3-34ED-45F7-BB9D-7E4F06876C3B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -c copy "Session 10023 - Direct and reflect focus in SwiftUI (2160p).mp4"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 60
# Session 10136 - Discover account-driven User Enrollment
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10136/6/8CF389C4-8FA9-4A14-A76E-B5B75AE9D4D8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10136/6/8CF389C4-8FA9-4A14-A76E-B5B75AE9D4D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -c copy "Session 10136 - Discover account-driven User Enrollment (2160p).mp4"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 61
# Session 10197 - Discover and curate Swift Packages using Collections
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10197/5/4B9FBC81-D676-431E-934C-6DD3EE985C64/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10197/5/4B9FBC81-D676-431E-934C-6DD3EE985C64/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -c copy "Session 10197 - Discover and curate Swift Packages using Collections (2160p).mp4"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 62
# Session 10209 - Discover breakpoint improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10209/6/D2CF5CC2-D0A6-4347-B833-DD9BECADB976/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10209 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10209/6/D2CF5CC2-D0A6-4347-B833-DD9BECADB976/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10209 temp.aac"
ffmpeg -i "Session - 10209 temp.mp4" -i "Session - 10209 temp.aac" -c copy "Session 10209 - Discover breakpoint improvements (2160p).mp4"
rm "Session - 10209 temp.mp4"
rm "Session - 10209 temp.aac"

# 63
# Session 10036 - Discover built-in sound classification in SoundAnalysis
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10036/7/E21A5457-DFA1-405D-87E4-EBCCB8A6F0C1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10036 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10036/7/E21A5457-DFA1-405D-87E4-EBCCB8A6F0C1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10036 temp.aac"
ffmpeg -i "Session - 10036 temp.mp4" -i "Session - 10036 temp.aac" -c copy "Session 10036 - Discover built-in sound classification in SoundAnalysis (2160p).mp4"
rm "Session - 10036 temp.mp4"
rm "Session - 10036 temp.aac"

# 64
# Session 10229 - Discover compilation workflows in Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10229/3/B5993DB1-3978-4019-B109-364AE2E6F14A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10229 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10229/3/B5993DB1-3978-4019-B109-364AE2E6F14A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10229 temp.aac"
ffmpeg -i "Session - 10229 temp.mp4" -i "Session - 10229 temp.aac" -c copy "Session 10229 - Discover compilation workflows in Metal (2160p).mp4"
rm "Session - 10229 temp.mp4"
rm "Session - 10229 temp.aac"

# 65
# Session 10019 - Discover concurrency in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10019/6/97B7FCAB-AC78-4A0D-8F28-C5C7AE8C339C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10019 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10019/6/97B7FCAB-AC78-4A0D-8F28-C5C7AE8C339C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10019 temp.aac"
ffmpeg -i "Session - 10019 temp.mp4" -i "Session - 10019 temp.aac" -c copy "Session 10019 - Discover concurrency in SwiftUI (2160p).mp4"
rm "Session - 10019 temp.mp4"
rm "Session - 10019 temp.aac"

# 66
# Session 10079 - Discover geometry-aware audio with the Physical Audio Spatialization Engine (PHASE)
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10079/4/B49836DD-46CA-49CD-81CF-9D08B251FDFA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10079 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10079/4/B49836DD-46CA-49CD-81CF-9D08B251FDFA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10079 temp.aac"
ffmpeg -i "Session - 10079 temp.mp4" -i "Session - 10079 temp.aac" -c copy "Session 10079 - Discover geometry-aware audio with the Physical Audio Spatialization Engine (PHASE) (2160p).mp4"
rm "Session - 10079 temp.mp4"
rm "Session - 10079 temp.aac"

# 67
# Session 10157 - Discover Metal debugging, profiling, and asset creation tools
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10157/5/7C79C8DE-984A-4BD6-904D-3FCDFF5432CC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10157/5/7C79C8DE-984A-4BD6-904D-3FCDFF5432CC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -c copy "Session 10157 - Discover Metal debugging, profiling, and asset creation tools (2160p).mp4"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 68
# Session 10101 - Discover rolling clips with ReplayKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10101/7/50A5D34B-6D32-429A-B737-D3C0C9EB58B8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10101/7/50A5D34B-6D32-429A-B737-D3C0C9EB58B8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -c copy "Session 10101 - Discover rolling clips with ReplayKit (2160p).mp4"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 69
# Session 10031 - Discover Web Inspector improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10031/10/44412231-AD6C-40B4-8253-43BC3EEBC768/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10031 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10031/10/44412231-AD6C-40B4-8253-43BC3EEBC768/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10031 temp.aac"
ffmpeg -i "Session - 10031 temp.mp4" -i "Session - 10031 temp.aac" -c copy "Session 10031 - Discover Web Inspector improvements (2160p).mp4"
rm "Session - 10031 temp.mp4"
rm "Session - 10031 temp.aac"

# 70
# Session 10126 - Discoverable design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10126/6/D50196B9-76AA-4E8D-9E0B-69DE03F58EFC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10126 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10126/6/D50196B9-76AA-4E8D-9E0B-69DE03F58EFC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10126 temp.aac"
ffmpeg -i "Session - 10126 temp.mp4" -i "Session - 10126 temp.aac" -c copy "Session 10126 - Discoverable design (2160p).mp4"
rm "Session - 10126 temp.mp4"
rm "Session - 10126 temp.aac"

# 71
# Session 10204 - Distribute apps in Xcode with cloud signing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10204/4/CF00E449-A95A-4F82-8CCF-DF5B980665A5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10204 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10204/4/CF00E449-A95A-4F82-8CCF-DF5B980665A5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10204 temp.aac"
ffmpeg -i "Session - 10204 temp.mp4" -i "Session - 10204 temp.aac" -c copy "Session 10204 - Distribute apps in Xcode with cloud signing (2160p).mp4"
rm "Session - 10204 temp.mp4"
rm "Session - 10204 temp.aac"

# 72
# Session 10074 - Dive into RealityKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10074/4/67629E8A-3351-47A6-941D-B3C60B778BAF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10074/4/67629E8A-3351-47A6-941D-B3C60B778BAF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -c copy "Session 10074 - Dive into RealityKit 2 (2160p).mp4"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 73
# Session 10231 - Donate intents and expand your app’s presence
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10231/3/E4613D08-78BF-4C2F-AE4E-E1A4B7A68D78/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10231 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10231/3/E4613D08-78BF-4C2F-AE4E-E1A4B7A68D78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10231 temp.aac"
ffmpeg -i "Session - 10231 temp.mp4" -i "Session - 10231 temp.aac" -c copy "Session 10231 - Donate intents and expand your app’s presence (2160p).mp4"
rm "Session - 10231 temp.mp4"
rm "Session - 10231 temp.aac"

# 74
# Session 10167 - Elevate your DocC documentation in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10167/4/AEC81BAD-B21A-40F5-A726-C53C1185192A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10167/4/AEC81BAD-B21A-40F5-A726-C53C1185192A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -c copy "Session 10167 - Elevate your DocC documentation in Xcode (2160p).mp4"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 75
# Session 10207 - Embrace Expected Failures in XCTest
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10207/5/1AF9A073-9D29-4091-9876-AE8868480EDA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10207 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10207/5/1AF9A073-9D29-4091-9876-AE8868480EDA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10207 temp.aac"
ffmpeg -i "Session - 10207 temp.mp4" -i "Session - 10207 temp.aac" -c copy "Session 10207 - Embrace Expected Failures in XCTest (2160p).mp4"
rm "Session - 10207 temp.mp4"
rm "Session - 10207 temp.aac"

# 76
# Session 10149 - Enhance your app with Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10149/7/C01A5359-2EAC-411E-99A5-8D7DA9C8220B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10149/7/C01A5359-2EAC-411E-99A5-8D7DA9C8220B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -c copy "Session 10149 - Enhance your app with Metal ray tracing (2160p).mp4"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 77
# Session 10145 - Evaluate videos with the Advanced Video Quality Tool
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10145/4/FFBDCD0F-8B65-4D91-A05A-1501F7494854/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10145/4/FFBDCD0F-8B65-4D91-A05A-1501F7494854/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -c copy "Session 10145 - Evaluate videos with the Advanced Video Quality Tool (2160p).mp4"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 78
# Session 10210 - Explore advanced project configuration in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10210/4/391A6CFB-228A-4349-AE24-4809307D58F5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10210 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10210/4/391A6CFB-228A-4349-AE24-4809307D58F5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10210 temp.aac"
ffmpeg -i "Session - 10210 temp.mp4" -i "Session - 10210 temp.aac" -c copy "Session 10210 - Explore advanced project configuration in Xcode (2160p).mp4"
rm "Session - 10210 temp.mp4"
rm "Session - 10210 temp.aac"

# 79
# Session 10075 - Explore advanced rendering with RealityKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10075/6/81A03814-3C6E-4B82-A5BB-92160CD0EF78/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10075/6/81A03814-3C6E-4B82-A5BB-92160CD0EF78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -c copy "Session 10075 - Explore advanced rendering with RealityKit 2 (2160p).mp4"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 80
# Session 10073 - Explore ARKit 5
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10073/7/53148F9F-7E28-46AA-AD05-CC2ABEC68EDC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10073/7/53148F9F-7E28-46AA-AD05-CC2ABEC68EDC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -c copy "Session 10073 - Explore ARKit 5 (2160p).mp4"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 81
# Session 10286 - Explore bindless rendering in Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10286/7/76356517-0CAC-4E8D-81E3-B42DCE552D15/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10286 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10286/7/76356517-0CAC-4E8D-81E3-B42DCE552D15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10286 temp.aac"
ffmpeg -i "Session - 10286 temp.mp4" -i "Session - 10286 temp.aac" -c copy "Session 10286 - Explore bindless rendering in Metal (2160p).mp4"
rm "Session - 10286 temp.mp4"
rm "Session - 10286 temp.aac"

# 82
# Session 10159 - Explore Core Image kernel improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10159/4/40A32E20-B4FF-4586-9C5B-1994F3A585A2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10159/4/40A32E20-B4FF-4586-9C5B-1994F3A585A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -c copy "Session 10159 - Explore Core Image kernel improvements (2160p).mp4"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 83
# Session 10208 - Explore Digital Crown, Trackpad, and iPad pointer automation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10208/7/D03FEAA6-4A84-48E0-BC4B-0B194701D23A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10208 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10208/7/D03FEAA6-4A84-48E0-BC4B-0B194701D23A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10208 temp.aac"
ffmpeg -i "Session - 10208 temp.mp4" -i "Session - 10208 temp.aac" -c copy "Session 10208 - Explore Digital Crown, Trackpad, and iPad pointer automation (2160p).mp4"
rm "Session - 10208 temp.mp4"
rm "Session - 10208 temp.aac"

# 84
# Session 10140 - Explore dynamic pre-rolls and mid-rolls in HLS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10140/15/4961CE04-6EAD-4B07-BD40-70010F74EF0D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10140/15/4961CE04-6EAD-4B07-BD40-70010F74EF0D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -c copy "Session 10140 - Explore dynamic pre-rolls and mid-rolls in HLS (2160p).mp4"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 85
# Session 10161 - Explore HDR rendering with EDR
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10161/5/A571AEFA-117F-4E9C-B4A0-C4543637CBFA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10161/5/A571AEFA-117F-4E9C-B4A0-C4543637CBFA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -c copy "Session 10161 - Explore HDR rendering with EDR (2160p).mp4"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 86
# Session 10143 - Explore HLS variants in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10143/8/02A20AB5-0C7F-4E9F-B252-75A25D1261ED/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10143/8/02A20AB5-0C7F-4E9F-B252-75A25D1261ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -c copy "Session 10143 - Explore HLS variants in AVFoundation (2160p).mp4"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 87
# Session 10150 - Explore hybrid rendering with Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10150/9/F2EBE5D9-9990-476B-82FF-D73638B5E1AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10150/9/F2EBE5D9-9990-476B-82FF-D73638B5E1AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -c copy "Session 10150 - Explore hybrid rendering with Metal ray tracing (2160p).mp4"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 88
# Session 10158 - Explore low-latency video encoding with VideoToolbox
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10158/4/1A6010D5-5911-425C-96D0-DAA26DBE60C0/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10158/4/1A6010D5-5911-425C-96D0-DAA26DBE60C0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -c copy "Session 10158 - Explore low-latency video encoding with VideoToolbox (2160p).mp4"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 89
# Session 10165 - Explore Nearby Interaction with third-party accessories
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10165/5/7A838436-C185-4F66-B1AD-411F16DCBF86/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10165 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10165/5/7A838436-C185-4F66-B1AD-411F16DCBF86/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10165 temp.aac"
ffmpeg -i "Session - 10165 temp.mp4" -i "Session - 10165 temp.aac" -c copy "Session 10165 - Explore Nearby Interaction with third-party accessories (2160p).mp4"
rm "Session - 10165 temp.mp4"
rm "Session - 10165 temp.aac"

# 90
# Session 10027 - Explore Safari Web Extension improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10027/10/09685846-0B04-4BFA-968E-000447422A11/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10027/10/09685846-0B04-4BFA-968E-000447422A11/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -c copy "Session 10027 - Explore Safari Web Extension improvements (2160p).mp4"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 91
# Session 10044 - Explore ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10044/7/242BEFF9-E49D-4A96-972C-BEE65585211D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10044/7/242BEFF9-E49D-4A96-972C-BEE65585211D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -c copy "Session 10044 - Explore ShazamKit (2160p).mp4"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 92
# Session 10134 - Explore structured concurrency in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10134/5/2EDD7E90-D227-48F9-8B5B-377C20A9DC31/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10134 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10134/5/2EDD7E90-D227-48F9-8B5B-377C20A9DC31/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10134 temp.aac"
ffmpeg -i "Session - 10134 temp.mp4" -i "Session - 10134 temp.aac" -c copy "Session 10134 - Explore structured concurrency in Swift (2160p).mp4"
rm "Session - 10134 temp.mp4"
rm "Session - 10134 temp.aac"

# 93
# Session 10291 - Explore the catalog with the Apple Music API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10291/3/F3E513AE-7D59-4677-BA86-19148C5DE3E4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10291 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10291/3/F3E513AE-7D59-4677-BA86-19148C5DE3E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10291 temp.aac"
ffmpeg -i "Session - 10291 temp.mp4" -i "Session - 10291 temp.aac" -c copy "Session 10291 - Explore the catalog with the Apple Music API (2160p).mp4"
rm "Session - 10291 temp.mp4"
rm "Session - 10291 temp.aac"

# 94
# Session 10288 - Explore the SF Symbols 3 app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10288/4/48BB2A1D-31BF-4E09-90DF-2FC4669B3946/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10288 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10288/4/48BB2A1D-31BF-4E09-90DF-2FC4669B3946/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10288 temp.aac"
ffmpeg -i "Session - 10288 temp.mp4" -i "Session - 10288 temp.aac" -c copy "Session 10288 - Explore the SF Symbols 3 app (2160p).mp4"
rm "Session - 10288 temp.mp4"
rm "Session - 10288 temp.aac"

# 95
# Session 10084 - Explore UWB-based car keys
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10084/5/A04EAA26-0290-4D04-A0AE-46D70D7E2B00/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10084 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10084/5/A04EAA26-0290-4D04-A0AE-46D70D7E2B00/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10084 temp.aac"
ffmpeg -i "Session - 10084 temp.mp4" -i "Session - 10084 temp.aac" -c copy "Session 10084 - Explore UWB-based car keys (2160p).mp4"
rm "Session - 10084 temp.mp4"
rm "Session - 10084 temp.aac"

# 96
# Session 10089 - Explore Verifiable Health Records
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10089/4/9DC55E07-91AA-4A4C-860B-E447648389FB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10089/4/9DC55E07-91AA-4A4C-860B-E447648389FB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -c copy "Session 10089 - Explore Verifiable Health Records (2160p).mp4"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 97
# Session 10032 - Explore WKWebView additions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10032/4/BF2DECD6-BD90-4253-9082-6F2FC912788C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10032/4/BF2DECD6-BD90-4253-9082-6F2FC912788C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -c copy "Session 10032 - Explore WKWebView additions (2160p).mp4"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 98
# Session 10268 - Explore Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10268/4/D11A0D51-DD10-4E50-932B-03643B47BF07/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10268 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10268/4/D11A0D51-DD10-4E50-932B-03643B47BF07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10268 temp.aac"
ffmpeg -i "Session - 10268 temp.mp4" -i "Session - 10268 temp.aac" -c copy "Session 10268 - Explore Xcode Cloud workflows (2160p).mp4"
rm "Session - 10268 temp.mp4"
rm "Session - 10268 temp.aac"

# 99
# Session 10041 - Extract document data using Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10041/6/1CB4D0E9-CCA8-4C66-80DA-5887CF8F06C5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10041/6/1CB4D0E9-CCA8-4C66-80DA-5887CF8F06C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -c copy "Session 10041 - Extract document data using Vision (2160p).mp4"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"

# 100
# Session 10261 - Faster and simpler notarization for Mac apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10261/7/1C2BA450-20C2-43D2-985E-BA26B13060B2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10261 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10261/7/1C2BA450-20C2-43D2-985E-BA26B13060B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10261 temp.aac"
ffmpeg -i "Session - 10261 temp.mp4" -i "Session - 10261 temp.aac" -c copy "Session 10261 - Faster and simpler notarization for Mac apps (2160p).mp4"
rm "Session - 10261 temp.mp4"
rm "Session - 10261 temp.aac"

# 101
# Session 10260 - Focus on iPad keyboard navigation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10260/4/E0BC9390-870B-4D59-9A0C-74941EAF4E36/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10260 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10260/4/E0BC9390-870B-4D59-9A0C-74941EAF4E36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10260 temp.aac"
ffmpeg -i "Session - 10260 temp.mp4" -i "Session - 10260 temp.aac" -c copy "Session 10260 - Focus on iPad keyboard navigation (2160p).mp4"
rm "Session - 10260 temp.mp4"
rm "Session - 10260 temp.aac"

# 102
# Session 10315 - Friday's Mindful Cooldown for Coding… brought to you by Fitness+
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10315/1/5A39EBEA-421E-4995-B514-30DF91150838/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10315 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10315/1/5A39EBEA-421E-4995-B514-30DF91150838/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10315 temp.aac"
ffmpeg -i "Session - 10315 temp.mp4" -i "Session - 10315 temp.aac" -c copy "Session 10315 - Friday's Mindful Cooldown for Coding… brought to you by Fitness+ (2160p).mp4"
rm "Session - 10315 temp.mp4"
rm "Session - 10315 temp.aac"

# 103
# Session 10325 - Friday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10325/1/1B2FDBA9-AB3E-4194-B18F-FE4C3CA435B2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10325 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10325/1/1B2FDBA9-AB3E-4194-B18F-FE4C3CA435B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10325 temp.aac"
ffmpeg -i "Session - 10325 temp.mp4" -i "Session - 10325 temp.aac" -c copy "Session 10325 - Friday@WWDC21 (2160p).mp4"
rm "Session - 10325 temp.mp4"
rm "Session - 10325 temp.aac"

# 104
# Session 10096 - Get ready for iCloud Private Relay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10096/8/601CAC32-E343-4373-9758-85F33CAAB3D8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10096/8/601CAC32-E343-4373-9758-85F33CAAB3D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -c copy "Session 10096 - Get ready for iCloud Private Relay (2160p).mp4"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 105
# Session 10295 - Get ready to optimize your App Store product page
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10295/5/83EA0FCB-2A53-4C0B-97D4-37C69079C264/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10295 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10295/5/83EA0FCB-2A53-4C0B-97D4-37C69079C264/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10295 temp.aac"
ffmpeg -i "Session - 10295 temp.mp4" -i "Session - 10295 temp.aac" -c copy "Session 10295 - Get ready to optimize your App Store product page (2160p).mp4"
rm "Session - 10295 temp.mp4"
rm "Session - 10295 temp.aac"

# 106
# Session 10236 - Host and automate your DocC documentation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10236/6/93E69517-B140-4720-B821-A542F64CC5C8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10236 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10236/6/93E69517-B140-4720-B821-A542F64CC5C8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10236 temp.aac"
ffmpeg -i "Session - 10236 temp.mp4" -i "Session - 10236 temp.aac" -c copy "Session 10236 - Host and automate your DocC documentation (2160p).mp4"
rm "Session - 10236 temp.mp4"
rm "Session - 10236 temp.aac"

# 107
# Session 10265 - Immerse your app in spatial audio
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10265/4/9BD45E56-F096-4BDD-AAFA-CF90B0501E1B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10265 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10265/4/9BD45E56-F096-4BDD-AAFA-CF90B0501E1B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10265 temp.aac"
ffmpeg -i "Session - 10265 temp.mp4" -i "Session - 10265 temp.aac" -c copy "Session 10265 - Immerse your app in spatial audio (2160p).mp4"
rm "Session - 10265 temp.mp4"
rm "Session - 10265 temp.aac"

# 108
# Session 10046 - Improve access to Photos in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10046/3/9D12DB10-3776-4369-BF86-964B98D2C082/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10046 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10046/3/9D12DB10-3776-4369-BF86-964B98D2C082/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10046 temp.aac"
ffmpeg -i "Session - 10046 temp.mp4" -i "Session - 10046 temp.aac" -c copy "Session 10046 - Improve access to Photos in your app (2160p).mp4"
rm "Session - 10046 temp.mp4"
rm "Session - 10046 temp.aac"

# 109
# Session 10141 - Improve global streaming availability with HLS Content Steering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10141/4/E5EA0996-E08C-4259-B644-23C1F47B339A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10141/4/E5EA0996-E08C-4259-B644-23C1F47B339A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -c copy "Session 10141 - Improve global streaming availability with HLS Content Steering (2160p).mp4"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 110
# Session 10137 - Improve MDM assignment of Apps and Books
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10137/7/FB724053-0CDB-4228-A9A7-CA326DC41FBE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10137/7/FB724053-0CDB-4228-A9A7-CA326DC41FBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -c copy "Session 10137 - Improve MDM assignment of Apps and Books (2160p).mp4"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 111
# Session 10220 - Localize your SwiftUI app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10220/6/3866585A-3920-44B4-AB3F-03A446FCDE3A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10220 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10220/6/3866585A-3920-44B4-AB3F-03A446FCDE3A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10220 temp.aac"
ffmpeg -i "Session - 10220 temp.mp4" -i "Session - 10220 temp.aac" -c copy "Session 10220 - Localize your SwiftUI app (2160p).mp4"
rm "Session - 10220 temp.mp4"
rm "Session - 10220 temp.aac"

# 112
# Session 10252 - Make blazing fast lists and collection views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10252/5/B37B6913-C7C8-49EA-982E-9D10AC147454/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10252 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10252/5/B37B6913-C7C8-49EA-982E-9D10AC147454/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10252 temp.aac"
ffmpeg -i "Session - 10252 temp.mp4" -i "Session - 10252 temp.aac" -c copy "Session 10252 - Make blazing fast lists and collection views (2160p).mp4"
rm "Session - 10252 temp.mp4"
rm "Session - 10252 temp.aac"

# 113
# Session 10297 - Manage devices with Apple Configurator
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10297/5/42EFFB92-E098-4A61-AC2C-F645C909C1EE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10297 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10297/5/42EFFB92-E098-4A61-AC2C-F645C909C1EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10297 temp.aac"
ffmpeg -i "Session - 10297 temp.mp4" -i "Session - 10297 temp.aac" -c copy "Session 10297 - Manage devices with Apple Configurator (2160p).mp4"
rm "Session - 10297 temp.mp4"
rm "Session - 10297 temp.aac"

# 114
# Session 10174 - Manage in-app purchases on your server
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10174/3/CF8F96B8-0719-405C-815A-25E67736D5F4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10174 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10174/3/CF8F96B8-0719-405C-815A-25E67736D5F4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10174 temp.aac"
ffmpeg -i "Session - 10174 temp.mp4" -i "Session - 10174 temp.aac" -c copy "Session 10174 - Manage in-app purchases on your server (2160p).mp4"
rm "Session - 10174 temp.mp4"
rm "Session - 10174 temp.aac"

# 115
# Session 10129 - Manage software updates in your organization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10129/6/7E46C26F-2722-4ABF-88BF-38CDBDC23E26/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10129 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10129/6/7E46C26F-2722-4ABF-88BF-38CDBDC23E26/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10129 temp.aac"
ffmpeg -i "Session - 10129 temp.mp4" -i "Session - 10129 temp.aac" -c copy "Session 10129 - Manage software updates in your organization (2160p).mp4"
rm "Session - 10129 temp.mp4"
rm "Session - 10129 temp.aac"

# 116
# Session 10287 - Measure health with motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10287/5/C117695D-C24C-4B2E-B6A4-C87244FC08AC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10287 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10287/5/C117695D-C24C-4B2E-B6A4-C87244FC08AC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10287 temp.aac"
ffmpeg -i "Session - 10287 temp.mp4" -i "Session - 10287 temp.aac" -c copy "Session 10287 - Measure health with motion (2160p).mp4"
rm "Session - 10287 temp.mp4"
rm "Session - 10287 temp.aac"

# 117
# Session 10316 - Meditation for fidgety skeptics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10316/8/F3A4B359-293E-4760-A055-B8998AC4CE02/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10316 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10316/8/F3A4B359-293E-4760-A055-B8998AC4CE02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10316 temp.aac"
ffmpeg -i "Session - 10316 temp.mp4" -i "Session - 10316 temp.aac" -c copy "Session 10316 - Meditation for fidgety skeptics (2160p).mp4"
rm "Session - 10316 temp.mp4"
rm "Session - 10316 temp.aac"

# 118
# Session 10132 - Meet async-await in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10132/4/B2DD09FD-0D18-4E24-82C2-0736DF914F66/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10132/4/B2DD09FD-0D18-4E24-82C2-0736DF914F66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -c copy "Session 10132 - Meet async-await in Swift (2160p).mp4"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"

# 119
# Session 10058 - Meet AsyncSequence
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10058/5/A934E650-C91D-4C63-AC83-A8980D052B5B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10058/5/A934E650-C91D-4C63-AC83-A8980D052B5B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -c copy "Session 10058 - Meet AsyncSequence (2160p).mp4"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"

# 120
# Session 10257 - Meet ClassKit for file-based apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10257/6/1A9F8965-41D7-4A10-A0B1-36FE84E977EE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10257 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10257/6/1A9F8965-41D7-4A10-A0B1-36FE84E977EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10257 temp.aac"
ffmpeg -i "Session - 10257 temp.mp4" -i "Session - 10257 temp.aac" -c copy "Session 10257 - Meet ClassKit for file-based apps (2160p).mp4"
rm "Session - 10257 temp.mp4"
rm "Session - 10257 temp.aac"

# 121
# Session 10117 - Meet CloudKit Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10117/4/091FF0B0-A3E5-4269-856E-692465CE5E15/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10117/4/091FF0B0-A3E5-4269-856E-692465CE5E15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -c copy "Session 10117 - Meet CloudKit Console (2160p).mp4"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 122
# Session 10131 - Meet declarative device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10131/4/E2547688-09E1-4213-B74C-BA8E1EE3D32A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10131/4/E2547688-09E1-4213-B74C-BA8E1EE3D32A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -c copy "Session 10131 - Meet declarative device management (2160p).mp4"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 123
# Session 10166 - Meet DocC documentation in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10166/7/097C7329-25A1-4933-A07D-78C7F1F1CA46/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10166/7/097C7329-25A1-4933-A07D-78C7F1F1CA46/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -c copy "Session 10166 - Meet DocC documentation in Xcode (2160p).mp4"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 124
# Session 10183 - Meet Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10183/5/C850E07A-1E66-4641-9742-DE0DE2E3E29B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10183 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10183/5/C850E07A-1E66-4641-9742-DE0DE2E3E29B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10183 temp.aac"
ffmpeg -i "Session - 10183 temp.mp4" -i "Session - 10183 temp.aac" -c copy "Session 10183 - Meet Group Activities (2160p).mp4"
rm "Session - 10183 temp.mp4"
rm "Session - 10183 temp.aac"

# 125
# Session 10171 - Meet in-app events on the App Store
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10171/4/70981448-BDD3-40FE-8EE5-7B1F60FCAFB9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10171/4/70981448-BDD3-40FE-8EE5-7B1F60FCAFB9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -c copy "Session 10171 - Meet in-app events on the App Store (2160p).mp4"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 126
# Session 10294 - Meet MusicKit for Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10294/5/DFB67B36-DCDE-49D9-8ED1-AC2A8B566F64/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10294 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10294/5/DFB67B36-DCDE-49D9-8ED1-AC2A8B566F64/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10294 temp.aac"
ffmpeg -i "Session - 10294 temp.mp4" -i "Session - 10294 temp.aac" -c copy "Session 10294 - Meet MusicKit for Swift (2160p).mp4"
rm "Session - 10294 temp.mp4"
rm "Session - 10294 temp.aac"

# 127
# Session 10033 - Meet privacy-preserving ad attribution
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10033/6/E381AF60-070C-4A7D-A135-386670DC7053/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10033 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10033/6/E381AF60-070C-4A7D-A135-386670DC7053/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10033 temp.aac"
ffmpeg -i "Session - 10033 temp.mp4" -i "Session - 10033 temp.aac" -c copy "Session 10033 - Meet privacy-preserving ad attribution (2160p).mp4"
rm "Session - 10033 temp.mp4"
rm "Session - 10033 temp.aac"

# 128
# Session 10104 - Meet Safari Web Extensions on iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10104/6/CA8FE4D3-295C-4F3F-90F5-447CB81B37B7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10104/6/CA8FE4D3-295C-4F3F-90F5-447CB81B37B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -c copy "Session 10104 - Meet Safari Web Extensions on iOS (2160p).mp4"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 129
# Session 10232 - Meet Shortcuts for macOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10232/4/F45F16B7-D0DD-4D4D-954B-1704C1063E3C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10232 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10232/4/F45F16B7-D0DD-4D4D-954B-1704C1063E3C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10232 temp.aac"
ffmpeg -i "Session - 10232 temp.mp4" -i "Session - 10232 temp.aac" -c copy "Session 10232 - Meet Shortcuts for macOS (2160p).mp4"
rm "Session - 10232 temp.mp4"
rm "Session - 10232 temp.aac"

# 130
# Session 10114 - Meet StoreKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10114/3/2388CEF1-AA51-4CB2-9E79-CBDC25916BDA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10114/3/2388CEF1-AA51-4CB2-9E79-CBDC25916BDA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -c copy "Session 10114 - Meet StoreKit 2 (2160p).mp4"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 131
# Session 10170 - Meet TestFlight on Mac
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10170/10/D0F6CC7F-69AD-437E-AF5A-E9CFD983F131/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10170/10/D0F6CC7F-69AD-437E-AF5A-E9CFD983F131/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -c copy "Session 10170 - Meet TestFlight on Mac (2160p).mp4"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 132
# Session 10061 - Meet TextKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10061/4/D12F25A4-D409-4DDA-9DCF-72C97E9875C3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10061/4/D12F25A4-D409-4DDA-9DCF-72C97E9875C3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -c copy "Session 10061 - Meet TextKit 2 (2160p).mp4"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 133
# Session 10102 - Meet the Location Button
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10102/10/F5A7B735-EFE5-4520-AA23-9624428F33D1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10102/10/F5A7B735-EFE5-4520-AA23-9624428F33D1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -c copy "Session 10102 - Meet the Location Button (2160p).mp4"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 134
# Session 10123 - Meet the Screen Time API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10123/5/AFD1559E-46A3-4B41-A5BC-CA1ED7800EC9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10123/5/AFD1559E-46A3-4B41-A5BC-CA1ED7800EC9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -c copy "Session 10123 - Meet the Screen Time API (2160p).mp4"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 135
# Session 10256 - Meet the Swift Algorithms and Collections packages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10256/8/389DAED7-3871-4195-95B0-59E7F10A5E52/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10256 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10256/8/389DAED7-3871-4195-95B0-59E7F10A5E52/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10256 temp.aac"
ffmpeg -i "Session - 10256 temp.mp4" -i "Session - 10256 temp.aac" -c copy "Session 10256 - Meet the Swift Algorithms and Collections packages (2160p).mp4"
rm "Session - 10256 temp.mp4"
rm "Session - 10256 temp.aac"

# 136
# Session 10064 - Meet the UIKit button system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10064/3/5DF3D536-453F-4C11-9BD5-9334BD79D560/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10064 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10064/3/5DF3D536-453F-4C11-9BD5-9334BD79D560/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10064 temp.aac"
ffmpeg -i "Session - 10064 temp.mp4" -i "Session - 10064 temp.aac" -c copy "Session 10064 - Meet the UIKit button system (2160p).mp4"
rm "Session - 10064 temp.mp4"
rm "Session - 10064 temp.aac"

# 137
# Session 10267 - Meet Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10267/5/84238A0B-FE43-4CCA-9D0B-2643A5E3A5B5/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10267 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10267/5/84238A0B-FE43-4CCA-9D0B-2643A5E3A5B5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10267 temp.aac"
ffmpeg -i "Session - 10267 temp.mp4" -i "Session - 10267 temp.aac" -c copy "Session 10267 - Meet Xcode Cloud (2160p).mp4"
rm "Session - 10267 temp.mp4"
rm "Session - 10267 temp.aac"

# 138
# Session 10244 - Mitigate fraud with App Attest and DeviceCheck
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10244/5/5C0B3E9F-163D-4DCB-AC48-F92DBE33E112/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10244 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10244/5/5C0B3E9F-163D-4DCB-AC48-F92DBE33E112/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10244 temp.aac"
ffmpeg -i "Session - 10244 temp.mp4" -i "Session - 10244 temp.aac" -c copy "Session 10244 - Mitigate fraud with App Attest and DeviceCheck (2160p).mp4"
rm "Session - 10244 temp.mp4"
rm "Session - 10244 temp.aac"

# 139
# Session 10321 - Monday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10321/1/DB3216C0-2220-4AE8-8584-9620ABB91F65/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10321 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10321/1/DB3216C0-2220-4AE8-8584-9620ABB91F65/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10321 temp.aac"
ffmpeg -i "Session - 10321 temp.mp4" -i "Session - 10321 temp.aac" -c copy "Session 10321 - Monday@WWDC21 (2160p).mp4"
rm "Session - 10321 temp.mp4"
rm "Session - 10321 temp.aac"

# 140
# Session 10106 - Move beyond passwords
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10106/5/CAC0BED2-732C-431A-9764-DA6A1206FE0E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10106/5/CAC0BED2-732C-431A-9764-DA6A1206FE0E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -c copy "Session 10106 - Move beyond passwords (2160p).mp4"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 141
# Session 10103 - Optimize for 5G networks
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10103/5/345F6518-CBF1-4E40-A52F-0F46541D273E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10103/5/345F6518-CBF1-4E40-A52F-0F46541D273E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -c copy "Session 10103 - Optimize for 5G networks (2160p).mp4"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 142
# Session 10147 - Optimize for variable refresh rate displays
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10147/5/B362C41F-D567-4137-8333-0B4FF56AD528/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10147/5/B362C41F-D567-4137-8333-0B4FF56AD528/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -c copy "Session 10147 - Optimize for variable refresh rate displays (2160p).mp4"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 143
# Session 10148 - Optimize high-end games for Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10148/8/2E6A96C2-2CC3-4852-A318-C5F493B55EC6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10148/8/2E6A96C2-2CC3-4852-A318-C5F493B55EC6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -c copy "Session 10148 - Optimize high-end games for Apple GPUs (2160p).mp4"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 144
# Session 10317 - Out of this world... on to Mars
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10317/8/3E1F4F09-7847-40F9-8D2A-0355456D569E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10317 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10317/8/3E1F4F09-7847-40F9-8D2A-0355456D569E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10317 temp.aac"
ffmpeg -i "Session - 10317 temp.mp4" -i "Session - 10317 temp.aac" -c copy "Session 10317 - Out of this world... on to Mars (2160p).mp4"
rm "Session - 10317 temp.mp4"
rm "Session - 10317 temp.aac"

# 145
# Session 10278 - Practice audio haptic design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10278/6/22D440E4-3CF8-4968-8FCB-6F21B4587DAD/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10278 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10278/6/22D440E4-3CF8-4968-8FCB-6F21B4587DAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10278 temp.aac"
ffmpeg -i "Session - 10278 temp.mp4" -i "Session - 10278 temp.aac" -c copy "Session 10278 - Practice audio haptic design (2160p).mp4"
rm "Session - 10278 temp.mp4"
rm "Session - 10278 temp.aac"

# 146
# Session 10048 - Principles of great widgets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10048/6/DE8F1516-0148-4630-A824-44F1BA28F5AA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10048/6/DE8F1516-0148-4630-A824-44F1BA28F5AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -c copy "Session 10048 - Principles of great widgets (2160p).mp4"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 147
# Session 10133 - Protect mutable state with Swift actors
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10133/4/20482DD4-E6ED-4CE5-896C-7F0035FD9AB4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10133/4/20482DD4-E6ED-4CE5-896C-7F0035FD9AB4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -c copy "Session 10133 - Protect mutable state with Swift actors (2160p).mp4"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 148
# Session 10053 - Qualities of a great Mac Catalyst app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10053/3/2422D003-327B-45A7-95E1-047C49B735B3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10053/3/2422D003-327B-45A7-95E1-047C49B735B3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -c copy "Session 10053 - Qualities of a great Mac Catalyst app (2160p).mp4"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 149
# Session 10056 - Qualities of great iPad and iPhone apps on Macs with M1
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10056/3/6A9E120D-9217-4F54-98A5-853D65EDBCDE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10056/3/6A9E120D-9217-4F54-98A5-853D65EDBCDE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -c copy "Session 10056 - Qualities of great iPad and iPhone apps on Macs with M1 (2160p).mp4"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 150
# Session 10239 - Reduce network delays for your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10239/4/8C138558-C5F3-4328-AA26-1F2D924B69F9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10239 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10239/4/8C138558-C5F3-4328-AA26-1F2D924B69F9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10239 temp.aac"
ffmpeg -i "Session - 10239 temp.mp4" -i "Session - 10239 temp.aac" -c copy "Session 10239 - Reduce network delays for your app (2160p).mp4"
rm "Session - 10239 temp.mp4"
rm "Session - 10239 temp.aac"

# 151
# Session 10205 - Review code and collaborate in Xcode 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10205/4/0DD5750D-A4F4-4874-B97B-645E68C35FA2/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10205 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10205/4/0DD5750D-A4F4-4874-B97B-645E68C35FA2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10205 temp.aac"
ffmpeg -i "Session - 10205 temp.mp4" -i "Session - 10205 temp.aac" -c copy "Session 10205 - Review code and collaborate in Xcode  (2160p).mp4"
rm "Session - 10205 temp.mp4"
rm "Session - 10205 temp.aac"

# 152
# Session 10110 - Safeguard your accounts, promotions, and content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10110/4/6F66F9D8-DC2E-40C0-8C90-90FD8375D0B9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10110/4/6F66F9D8-DC2E-40C0-8C90-90FD8375D0B9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -c copy "Session 10110 - Safeguard your accounts, promotions, and content (2160p).mp4"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 153
# Session 10105 - Secure login with iCloud Keychain verification codes
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10105/7/67ECEEA8-4F59-4C40-BE4E-5C45EBDCE158/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10105/7/67ECEEA8-4F59-4C40-BE4E-5C45EBDCE158/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -c copy "Session 10105 - Secure login with iCloud Keychain verification codes (2160p).mp4"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 154
# Session 10091 - Send communication and Time Sensitive notifications
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10091/4/A4152468-BE8D-45E4-BB60-043AC7854981/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10091/4/A4152468-BE8D-45E4-BB60-043AC7854981/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -c copy "Session 10091 - Send communication and Time Sensitive notifications (2160p).mp4"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 155
# Session 10349 - SF Symbols in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10349/4/5C81F023-9887-405D-AF78-7FBD8FACEDEF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10349 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10349/4/5C81F023-9887-405D-AF78-7FBD8FACEDEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10349 temp.aac"
ffmpeg -i "Session - 10349 temp.mp4" -i "Session - 10349 temp.aac" -c copy "Session 10349 - SF Symbols in SwiftUI (2160p).mp4"
rm "Session - 10349 temp.mp4"
rm "Session - 10349 temp.aac"

# 156
# Session 10251 - SF Symbols in UIKit and AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10251/8/1F3B1961-5626-4737-BFCB-442B8F6A6CC3/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10251 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10251/8/1F3B1961-5626-4737-BFCB-442B8F6A6CC3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10251 temp.aac"
ffmpeg -i "Session - 10251 temp.mp4" -i "Session - 10251 temp.aac" -c copy "Session 10251 - SF Symbols in UIKit and AppKit (2160p).mp4"
rm "Session - 10251 temp.mp4"
rm "Session - 10251 temp.aac"

# 157
# Session 10098 - Showcase app data in Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10098/5/E1444CD9-0588-4D3B-8AFA-EB590BA9CD23/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10098/5/E1444CD9-0588-4D3B-8AFA-EB590BA9CD23/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -c copy "Session 10098 - Showcase app data in Spotlight (2160p).mp4"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 158
# Session 10279 - Simplify sign in for your tvOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10279/6/2634C5FD-06F9-4C34-8D8A-215A0C29356B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10279 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10279/6/2634C5FD-06F9-4C34-8D8A-215A0C29356B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10279 temp.aac"
ffmpeg -i "Session - 10279 temp.mp4" -i "Session - 10279 temp.aac" -c copy "Session 10279 - Simplify sign in for your tvOS apps (2160p).mp4"
rm "Session - 10279 temp.mp4"
rm "Session - 10279 temp.aac"

# 159
# Session 10221 - Streamline your localized strings
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10221/4/E712C2D5-BD11-435B-8F19-C4ACFD79160A/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10221 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10221/4/E712C2D5-BD11-435B-8F19-C4ACFD79160A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10221 temp.aac"
ffmpeg -i "Session - 10221 temp.mp4" -i "Session - 10221 temp.aac" -c copy "Session 10221 - Streamline your localized strings (2160p).mp4"
rm "Session - 10221 temp.mp4"
rm "Session - 10221 temp.aac"

# 160
# Session 10175 - Support customers and handle refunds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10175/5/AC32E663-B4D3-4BFF-B370-D1511009CCCB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10175 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10175/5/AC32E663-B4D3-4BFF-B370-D1511009CCCB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10175 temp.aac"
ffmpeg -i "Session - 10175 temp.mp4" -i "Session - 10175 temp.aac" -c copy "Session 10175 - Support customers and handle refunds (2160p).mp4"
rm "Session - 10175 temp.mp4"
rm "Session - 10175 temp.aac"

# 161
# Session 10120 - Support Full Keyboard Access in your iOS app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10120/11/284E99F6-0E62-4027-AE02-86A26EEBEC07/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10120/11/284E99F6-0E62-4027-AE02-86A26EEBEC07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -c copy "Session 10120 - Support Full Keyboard Access in your iOS app (2160p).mp4"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 162
# Session 10254 - Swift concurrency - Behind the scenes
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10254/4/528331E5-D153-47F1-81E3-247B1A78A930/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10254 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10254/4/528331E5-D153-47F1-81E3-247B1A78A930/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10254 temp.aac"
ffmpeg -i "Session - 10254 temp.mp4" -i "Session - 10254 temp.aac" -c copy "Session 10254 - Swift concurrency - Behind the scenes (2160p).mp4"
rm "Session - 10254 temp.mp4"
rm "Session - 10254 temp.aac"

# 163
# Session 10194 - Swift concurrency - Update a sample app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10194/5/52969D90-7481-457A-A1E2-AA89E1D04D6F/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10194 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10194/5/52969D90-7481-457A-A1E2-AA89E1D04D6F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10194 temp.aac"
ffmpeg -i "Session - 10194 temp.mp4" -i "Session - 10194 temp.aac" -c copy "Session 10194 - Swift concurrency - Update a sample app (2160p).mp4"
rm "Session - 10194 temp.mp4"
rm "Session - 10194 temp.aac"

# 164
# Session 10119 - SwiftUI Accessibility - Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10119/6/A3AEB1E4-C4E9-43B4-9EF6-206F6B9704E6/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10119/6/A3AEB1E4-C4E9-43B4-9EF6-206F6B9704E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -c copy "Session 10119 - SwiftUI Accessibility - Beyond the basics (2160p).mp4"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 165
# Session 10062 - SwiftUI on the Mac - Build the fundamentals
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10062/4/9B92BC78-A602-46D4-BABD-38CFE255CCDE/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10062/4/9B92BC78-A602-46D4-BABD-38CFE255CCDE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -c copy "Session 10062 - SwiftUI on the Mac - Build the fundamentals (2160p).mp4"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 166
# Session 10289 - SwiftUI on the Mac - The finishing touches
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10289/3/C1B68628-5A05-418B-A4FC-9EFD3E970D80/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10289 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10289/3/C1B68628-5A05-418B-A4FC-9EFD3E970D80/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10289 temp.aac"
ffmpeg -i "Session - 10289 temp.mp4" -i "Session - 10289 temp.aac" -c copy "Session 10289 - SwiftUI on the Mac - The finishing touches (2160p).mp4"
rm "Session - 10289 temp.mp4"
rm "Session - 10289 temp.aac"

# 167
# Session 10211 - Symbolication - Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10211/3/3450A29E-DC2D-49D5-9D68-5E053CC5EC9D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10211 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10211/3/3450A29E-DC2D-49D5-9D68-5E053CC5EC9D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10211 temp.aac"
ffmpeg -i "Session - 10211 temp.mp4" -i "Session - 10211 temp.aac" -c copy "Session 10211 - Symbolication - Beyond the basics (2160p).mp4"
rm "Session - 10211 temp.mp4"
rm "Session - 10211 temp.aac"

# 168
# Session 10182 - Sync files to the cloud with FileProvider on macOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10182/5/9EA118F5-E717-489F-816F-8BF659B0D8AF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10182 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10182/5/9EA118F5-E717-489F-816F-8BF659B0D8AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10182 temp.aac"
ffmpeg -i "Session - 10182 temp.mp4" -i "Session - 10182 temp.aac" -c copy "Session 10182 - Sync files to the cloud with FileProvider on macOS (2160p).mp4"
rm "Session - 10182 temp.mp4"
rm "Session - 10182 temp.aac"

# 169
# Session 10121 - Tailor the VoiceOver experience in your data-rich apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10121/6/9DFDD9FF-82AF-48DC-A0C1-C2CB8A518D93/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10121/6/9DFDD9FF-82AF-48DC-A0C1-C2CB8A518D93/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -c copy "Session 10121 - Tailor the VoiceOver experience in your data-rich apps (2160p).mp4"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 170
# Session 10057 - Take your iPad apps to the next level
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10057/7/5399C1AB-B62F-4A83-8AA1-FCBFDAFFBF44/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10057 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10057/7/5399C1AB-B62F-4A83-8AA1-FCBFDAFFBF44/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10057 temp.aac"
ffmpeg -i "Session - 10057 temp.mp4" -i "Session - 10057 temp.aac" -c copy "Session 10057 - Take your iPad apps to the next level (2160p).mp4"
rm "Session - 10057 temp.mp4"
rm "Session - 10057 temp.aac"

# 171
# Session 10081 - Tap into virtual and physical game controllers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10081/5/113EE58D-480B-4192-A7E1-8088B2A0BC72/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10081 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10081/5/113EE58D-480B-4192-A7E1-8088B2A0BC72/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10081 temp.aac"
ffmpeg -i "Session - 10081 temp.mp4" -i "Session - 10081 temp.aac" -c copy "Session 10081 - Tap into virtual and physical game controllers (2160p).mp4"
rm "Session - 10081 temp.mp4"
rm "Session - 10081 temp.aac"

# 172
# Session 10275 - The practice of inclusive design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10275/3/3E6DAA38-C002-43B3-A62C-F78B03C57AC7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10275 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10275/3/3E6DAA38-C002-43B3-A62C-F78B03C57AC7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10275 temp.aac"
ffmpeg -i "Session - 10275 temp.mp4" -i "Session - 10275 temp.aac" -c copy "Session 10275 - The practice of inclusive design (2160p).mp4"
rm "Session - 10275 temp.mp4"
rm "Session - 10275 temp.aac"

# 173
# Session 10304 - The process of inclusive design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10304/4/5F0C8CED-8F09-4528-BEFE-98A248B6088B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10304 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10304/4/5F0C8CED-8F09-4528-BEFE-98A248B6088B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10304 temp.aac"
ffmpeg -i "Session - 10304 temp.mp4" -i "Session - 10304 temp.aac" -c copy "Session 10304 - The process of inclusive design (2160p).mp4"
rm "Session - 10304 temp.mp4"
rm "Session - 10304 temp.aac"

# 174
# Session 10003 - There and back again - Data transfer on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10003/7/2AE1FFC2-BFF3-43AC-9488-AA5514C204FB/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10003 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10003/7/2AE1FFC2-BFF3-43AC-9488-AA5514C204FB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10003 temp.aac"
ffmpeg -i "Session - 10003 temp.mp4" -i "Session - 10003 temp.aac" -c copy "Session 10003 - There and back again - Data transfer on Apple Watch (2160p).mp4"
rm "Session - 10003 temp.mp4"
rm "Session - 10003 temp.aac"

# 175
# Session 10314 - Thursday's Mindful Cooldown for Coding… brought to you by Fitness+
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10314/1/DC0C9570-CD79-4791-ABA0-F2A2700CDBCA/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10314 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10314/1/DC0C9570-CD79-4791-ABA0-F2A2700CDBCA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10314 temp.aac"
ffmpeg -i "Session - 10314 temp.mp4" -i "Session - 10314 temp.aac" -c copy "Session 10314 - Thursday's Mindful Cooldown for Coding… brought to you by Fitness+ (2160p).mp4"
rm "Session - 10314 temp.mp4"
rm "Session - 10314 temp.aac"

# 176
# Session 10324 - Thursday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10324/1/BC5C09AF-2CA6-44C8-B371-FD5706AF4558/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10324 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10324/1/BC5C09AF-2CA6-44C8-B371-FD5706AF4558/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10324 temp.aac"
ffmpeg -i "Session - 10324 temp.mp4" -i "Session - 10324 temp.aac" -c copy "Session 10324 - Thursday@WWDC21 (2160p).mp4"
rm "Session - 10324 temp.mp4"
rm "Session - 10324 temp.aac"

# 177
# Session 10142 - Transition media gaplessly with HLS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10142/14/423D5648-E58A-4CD1-A06F-1290EFA18BC4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10142/14/423D5648-E58A-4CD1-A06F-1290EFA18BC4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -c copy "Session 10142 - Transition media gaplessly with HLS (2160p).mp4"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 178
# Session 10203 - Triage TestFlight crashes in Xcode Organizer
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10203/7/1A8E1E96-00E5-4E9C-B392-6A2AE2AED9ED/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10203/7/1A8E1E96-00E5-4E9C-B392-6A2AE2AED9ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -c copy "Session 10203 - Triage TestFlight crashes in Xcode Organizer (2160p).mp4"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 179
# Session 10309 - Tuesday's Mindful Cooldown for Coding… brought to you by Fitness+
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10309/1/16A16616-AFF1-4E24-B6FF-92CB83CD6018/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10309 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10309/1/16A16616-AFF1-4E24-B6FF-92CB83CD6018/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10309 temp.aac"
ffmpeg -i "Session - 10309 temp.mp4" -i "Session - 10309 temp.aac" -c copy "Session 10309 - Tuesday's Mindful Cooldown for Coding… brought to you by Fitness+ (2160p).mp4"
rm "Session - 10309 temp.mp4"
rm "Session - 10309 temp.aac"

# 180
# Session 10322 - Tuesday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10322/2/C0AA6CCA-7BAF-4B5E-8A88-F500A98E8B15/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10322 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10322/2/C0AA6CCA-7BAF-4B5E-8A88-F500A98E8B15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10322 temp.aac"
ffmpeg -i "Session - 10322 temp.mp4" -i "Session - 10322 temp.aac" -c copy "Session 10322 - Tuesday@WWDC21 (2160p).mp4"
rm "Session - 10322 temp.mp4"
rm "Session - 10322 temp.aac"

# 181
# Session 10038 - Tune your Core ML models
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10038/3/84EFF5EC-346B-4A8C-BDAC-47F3258352D9/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10038 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10038/3/84EFF5EC-346B-4A8C-BDAC-47F3258352D9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10038 temp.aac"
ffmpeg -i "Session - 10038 temp.mp4" -i "Session - 10038 temp.aac" -c copy "Session 10038 - Tune your Core ML models (2160p).mp4"
rm "Session - 10038 temp.mp4"
rm "Session - 10038 temp.aac"

# 182
# Session 10181 - Ultimate application performance survival guide
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10181/11/A69D2FCC-21C3-4392-B857-552EF73E7714/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10181/11/A69D2FCC-21C3-4392-B857-552EF73E7714/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -c copy "Session 10181 - Ultimate application performance survival guide (2160p).mp4"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"

# 183
# Session 10258 - Understand and eliminate hangs from your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10258/4/ADC12B98-365A-47E7-9A42-952847271DEF/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10258 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10258/4/ADC12B98-365A-47E7-9A42-952847271DEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10258 temp.aac"
ffmpeg -i "Session - 10258 temp.mp4" -i "Session - 10258 temp.aac" -c copy "Session 10258 - Understand and eliminate hangs from your app (2160p).mp4"
rm "Session - 10258 temp.mp4"
rm "Session - 10258 temp.aac"

# 184
# Session 10233 - Use Accelerate to improve performance and incorporate encrypted archives
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10233/4/72F4F22E-DDAB-4A58-B049-7AC537198EFC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10233 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10233/4/72F4F22E-DDAB-4A58-B049-7AC537198EFC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10233 temp.aac"
ffmpeg -i "Session - 10233 temp.mp4" -i "Session - 10233 temp.aac" -c copy "Session 10233 - Use Accelerate to improve performance and incorporate encrypted archives (2160p).mp4"
rm "Session - 10233 temp.mp4"
rm "Session - 10233 temp.aac"

# 185
# Session 10095 - Use async-await with URLSession
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10095/7/2F07E69A-1CEF-4F48-9C63-E35F5DF4FBF7/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10095/7/2F07E69A-1CEF-4F48-9C63-E35F5DF4FBF7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -c copy "Session 10095 - Use async-await with URLSession (2160p).mp4"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 186
# Session 10276 - Use the camera for keyboard input in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10276/3/35E33348-1E17-4FF5-92BB-618ED251B0EC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10276 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10276/3/35E33348-1E17-4FF5-92BB-618ED251B0EC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10276 temp.aac"
ffmpeg -i "Session - 10276 temp.mp4" -i "Session - 10276 temp.aac" -c copy "Session 10276 - Use the camera for keyboard input in your app (2160p).mp4"
rm "Session - 10276 temp.mp4"
rm "Session - 10276 temp.aac"

# 187
# Session 10310 - Wednesday's Mindful Cooldown for Coding… brought to you by Fitness+
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10310/2/AFB284B2-14EC-4654-AB17-D4701F2C77F1/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10310 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10310/2/AFB284B2-14EC-4654-AB17-D4701F2C77F1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10310 temp.aac"
ffmpeg -i "Session - 10310 temp.mp4" -i "Session - 10310 temp.aac" -c copy "Session 10310 - Wednesday's Mindful Cooldown for Coding… brought to you by Fitness+ (2160p).mp4"
rm "Session - 10310 temp.mp4"
rm "Session - 10310 temp.aac"

# 188
# Session 10323 - Wednesday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10323/1/8F1109CF-AA1F-4964-9984-BF7B74C30F38/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10323 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10323/1/8F1109CF-AA1F-4964-9984-BF7B74C30F38/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10323 temp.aac"
ffmpeg -i "Session - 10323 temp.mp4" -i "Session - 10323 temp.aac" -c copy "Session 10323 - Wednesday@WWDC21 (2160p).mp4"
rm "Session - 10323 temp.mp4"
rm "Session - 10323 temp.aac"

# 189
# Session 10115 - What's new in App Analytics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10115/3/E7E6A158-C193-43E7-9C20-5CA614ED768E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10115/3/E7E6A158-C193-43E7-9C20-5CA614ED768E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -c copy "Session 10115 - What's new in App Analytics (2160p).mp4"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 190
# Session 10012 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10012/3/AA1959EB-823F-4382-A050-7764EC6F604E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10012 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10012/3/AA1959EB-823F-4382-A050-7764EC6F604E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10012 temp.aac"
ffmpeg -i "Session - 10012 temp.mp4" -i "Session - 10012 temp.aac" -c copy "Session 10012 - What's new in App Clips (2160p).mp4"
rm "Session - 10012 temp.mp4"
rm "Session - 10012 temp.aac"

# 191
# Session 10054 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10054/7/D3581025-DC73-47FB-98A0-0C9599FAD509/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10054/7/D3581025-DC73-47FB-98A0-0C9599FAD509/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -c copy "Session 10054 - What's new in AppKit (2160p).mp4"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 192
# Session 10290 - What's new in AVKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10290/7/3B2EE1D3-46DD-48DC-8B8A-FDF061067D68/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10290 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10290/7/3B2EE1D3-46DD-48DC-8B8A-FDF061067D68/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10290 temp.aac"
ffmpeg -i "Session - 10290 temp.mp4" -i "Session - 10290 temp.aac" -c copy "Session 10290 - What's new in AVKit (2160p).mp4"
rm "Session - 10290 temp.mp4"
rm "Session - 10290 temp.aac"

# 193
# Session 10086 - What's new in CloudKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10086/3/0126BD48-6C5E-4D8C-9464-DA85CFDF193B/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10086/3/0126BD48-6C5E-4D8C-9464-DA85CFDF193B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -c copy "Session 10086 - What's new in CloudKit (2160p).mp4"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 194
# Session 10109 - What's new in Foundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10109/5/31B61A71-9D39-4F29-97DF-66309DBA320E/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10109/5/31B61A71-9D39-4F29-97DF-66309DBA320E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -c copy "Session 10109 - What's new in Foundation (2160p).mp4"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 195
# Session 10052 - What's new in Mac Catalyst
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10052/3/AEC7031C-E8E6-4F09-B845-F0DE96310C4D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10052/3/AEC7031C-E8E6-4F09-B845-F0DE96310C4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -c copy "Session 10052 - What's new in Mac Catalyst (2160p).mp4"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 196
# Session 10018 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10018/4/C1412BB4-40EE-418F-BCFD-09796128093C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10018 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10018/4/C1412BB4-40EE-418F-BCFD-09796128093C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10018 temp.aac"
ffmpeg -i "Session - 10018 temp.mp4" -i "Session - 10018 temp.aac" -c copy "Session 10018 - What's new in SwiftUI (2160p).mp4"
rm "Session - 10018 temp.mp4"
rm "Session - 10018 temp.aac"

# 197
# Session 10059 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10059/4/2E305622-7F2A-49FA-85FA-091B63F9A7EC/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10059 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10059/4/2E305622-7F2A-49FA-85FA-091B63F9A7EC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10059 temp.aac"
ffmpeg -i "Session - 10059 temp.mp4" -i "Session - 10059 temp.aac" -c copy "Session 10059 - What's new in UIKit (2160p).mp4"
rm "Session - 10059 temp.mp4"
rm "Session - 10059 temp.aac"

# 198
# Session 10092 - What's new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10092/4/60CA3CE3-F906-4071-B3BD-1216A6A64CB4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10092/4/60CA3CE3-F906-4071-B3BD-1216A6A64CB4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -c copy "Session 10092 - What's new in Wallet and Apple Pay (2160p).mp4"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 199
# Session 10002 - What's new in watchOS 8
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10002/4/6AE5C57E-FF72-4A1C-B627-40969B18D70D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10002/4/6AE5C57E-FF72-4A1C-B627-40969B18D70D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -c copy "Session 10002 - What's new in watchOS 8 (2160p).mp4"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 200
# Session 10192 - What‘s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10192/4/1EE1B691-9DDB-4920-BD8C-7E91BDD75BB8/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10192 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10192/4/1EE1B691-9DDB-4920-BD8C-7E91BDD75BB8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10192 temp.aac"
ffmpeg -i "Session - 10192 temp.mp4" -i "Session - 10192 temp.aac" -c copy "Session 10192 - What‘s new in Swift (2160p).mp4"
rm "Session - 10192 temp.mp4"
rm "Session - 10192 temp.aac"

# 201
# Session 10146 - What’s new in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10146/5/DB6BBE8F-5AF9-4331-BF7B-F8DF5AC43A92/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10146/5/DB6BBE8F-5AF9-4331-BF7B-F8DF5AC43A92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -c copy "Session 10146 - What’s new in AVFoundation (2160p).mp4"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 202
# Session 10047 - What’s new in camera capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10047/3/642D1BFE-7823-4CA8-8572-B2478B9C4B44/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10047 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10047/3/642D1BFE-7823-4CA8-8572-B2478B9C4B44/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10047 temp.aac"
ffmpeg -i "Session - 10047 temp.mp4" -i "Session - 10047 temp.aac" -c copy "Session 10047 - What’s new in camera capture (2160p).mp4"
rm "Session - 10047 temp.mp4"
rm "Session - 10047 temp.aac"

# 203
# Session 10066 - What’s new in Game Center - Widgets, friends, and multiplayer improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10066/4/41B04DA6-0AE3-41B6-9CE1-CF48AAAF9439/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10066/4/41B04DA6-0AE3-41B6-9CE1-CF48AAAF9439/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -c copy "Session 10066 - What’s new in Game Center - Widgets, friends, and multiplayer improvements (2160p).mp4"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 204
# Session 10130 - What’s new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10130/4/92D05556-BFA4-40C0-A181-5747D041FF01/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10130 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10130/4/92D05556-BFA4-40C0-A181-5747D041FF01/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10130 temp.aac"
ffmpeg -i "Session - 10130 temp.mp4" -i "Session - 10130 temp.aac" -c copy "Session 10130 - What’s new in managing Apple devices (2160p).mp4"
rm "Session - 10130 temp.mp4"
rm "Session - 10130 temp.aac"

# 205
# Session 10097 - What’s new in SF Symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10097/5/4D377285-9082-4F13-8F15-EBCD0A938E8C/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10097/5/4D377285-9082-4F13-8F15-EBCD0A938E8C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -c copy "Session 10097 - What’s new in SF Symbols (2160p).mp4"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 206
# Session 10253 - Write a DSL in Swift using result builders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10253/4/F323F580-06C3-4F19-9548-AB7560E40CD4/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10253 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10253/4/F323F580-06C3-4F19-9548-AB7560E40CD4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10253 temp.aac"
ffmpeg -i "Session - 10253 temp.mp4" -i "Session - 10253 temp.aac" -c copy "Session 10253 - Write a DSL in Swift using result builders (2160p).mp4"
rm "Session - 10253 temp.mp4"
rm "Session - 10253 temp.aac"

# 207
# Session 10259 - Your guide to keyboard layout
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10259/4/F6B7B6EB-8577-4034-9EE3-67BADA64041D/cmaf/hvc/2160p_16800/hvc_2160p_16800.m3u8 -c copy "Session - 10259 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10259/4/F6B7B6EB-8577-4034-9EE3-67BADA64041D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10259 temp.aac"
ffmpeg -i "Session - 10259 temp.mp4" -i "Session - 10259 temp.aac" -c copy "Session 10259 - Your guide to keyboard layout (2160p).mp4"
rm "Session - 10259 temp.mp4"
rm "Session - 10259 temp.aac"
