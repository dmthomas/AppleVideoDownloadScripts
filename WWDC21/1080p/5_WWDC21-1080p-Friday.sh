# Script to download Friday's WWDC 21 session videos in the highest 1080p video and audio
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
# Session 10152 - Accelerate machine learning with Metal Performance Shaders Graph
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10152/6/38BC0CF8-718D-4950-9CC4-B64396F5FFDD/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10152 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10152/6/38BC0CF8-718D-4950-9CC4-B64396F5FFDD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10152 temp.aac"
ffmpeg -i "Session - 10152 temp.mp4" -i "Session - 10152 temp.aac" -c copy "Session 10152 - Accelerate machine learning with Metal Performance Shaders Graph (1080p).mp4"
rm "Session - 10152 temp.mp4"
rm "Session - 10152 temp.aac"

# 2
# Session 10293 - Cross reference content with the Apple Music API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10293/4/0B5E2326-630B-4D85-A75B-410E36F1D69F/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10293 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10293/4/0B5E2326-630B-4D85-A75B-410E36F1D69F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10293 temp.aac"
ffmpeg -i "Session - 10293 temp.mp4" -i "Session - 10293 temp.aac" -c copy "Session 10293 - Cross reference content with the Apple Music API (1080p).mp4"
rm "Session - 10293 temp.mp4"
rm "Session - 10293 temp.aac"

# 3
# Session 10029 - Design for Safari 15
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10029/4/8B75DA3D-09DF-40FD-AC0E-FB6A7EECE3F1/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10029 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10029/4/8B75DA3D-09DF-40FD-AC0E-FB6A7EECE3F1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10029 temp.aac"
ffmpeg -i "Session - 10029 temp.mp4" -i "Session - 10029 temp.aac" -c copy "Session 10029 - Design for Safari 15 (1080p).mp4"
rm "Session - 10029 temp.mp4"
rm "Session - 10029 temp.aac"

# 4
# Session 10202 - Detect bugs early with the static analyzer
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10202/3/1E0D5337-0542-423B-9775-7FB518B7707B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10202 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10202/3/1E0D5337-0542-423B-9775-7FB518B7707B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10202 temp.aac"
ffmpeg -i "Session - 10202 temp.mp4" -i "Session - 10202 temp.aac" -c copy "Session 10202 - Detect bugs early with the static analyzer (1080p).mp4"
rm "Session - 10202 temp.mp4"
rm "Session - 10202 temp.aac"

# 5
# Session 10209 - Discover breakpoint improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10209/6/D2CF5CC2-D0A6-4347-B833-DD9BECADB976/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10209 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10209/6/D2CF5CC2-D0A6-4347-B833-DD9BECADB976/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10209 temp.aac"
ffmpeg -i "Session - 10209 temp.mp4" -i "Session - 10209 temp.aac" -c copy "Session 10209 - Discover breakpoint improvements (1080p).mp4"
rm "Session - 10209 temp.mp4"
rm "Session - 10209 temp.aac"

# 6
# Session 10210 - Explore advanced project configuration in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10210/4/391A6CFB-228A-4349-AE24-4809307D58F5/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10210 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10210/4/391A6CFB-228A-4349-AE24-4809307D58F5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10210 temp.aac"
ffmpeg -i "Session - 10210 temp.mp4" -i "Session - 10210 temp.aac" -c copy "Session 10210 - Explore advanced project configuration in Xcode (1080p).mp4"
rm "Session - 10210 temp.mp4"
rm "Session - 10210 temp.aac"

# 7
# Session 10117 - Meet CloudKit Console
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10117/4/091FF0B0-A3E5-4269-856E-692465CE5E15/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10117 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10117/4/091FF0B0-A3E5-4269-856E-692465CE5E15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10117 temp.aac"
ffmpeg -i "Session - 10117 temp.mp4" -i "Session - 10117 temp.aac" -c copy "Session 10117 - Meet CloudKit Console (1080p).mp4"
rm "Session - 10117 temp.mp4"
rm "Session - 10117 temp.aac"

# 8
# Session 10244 - Mitigate fraud with App Attest and DeviceCheck
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10244/5/5C0B3E9F-163D-4DCB-AC48-F92DBE33E112/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10244 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10244/5/5C0B3E9F-163D-4DCB-AC48-F92DBE33E112/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10244 temp.aac"
ffmpeg -i "Session - 10244 temp.mp4" -i "Session - 10244 temp.aac" -c copy "Session 10244 - Mitigate fraud with App Attest and DeviceCheck (1080p).mp4"
rm "Session - 10244 temp.mp4"
rm "Session - 10244 temp.aac"

# 9
# Session 10103 - Optimize for 5G networks
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10103/5/345F6518-CBF1-4E40-A52F-0F46541D273E/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10103 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10103/5/345F6518-CBF1-4E40-A52F-0F46541D273E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10103 temp.aac"
ffmpeg -i "Session - 10103 temp.mp4" -i "Session - 10103 temp.aac" -c copy "Session 10103 - Optimize for 5G networks (1080p).mp4"
rm "Session - 10103 temp.mp4"
rm "Session - 10103 temp.aac"

# 10
# Session 10147 - Optimize for variable refresh rate displays
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10147/5/B362C41F-D567-4137-8333-0B4FF56AD528/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10147 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10147/5/B362C41F-D567-4137-8333-0B4FF56AD528/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10147 temp.aac"
ffmpeg -i "Session - 10147 temp.mp4" -i "Session - 10147 temp.aac" -c copy "Session 10147 - Optimize for variable refresh rate displays (1080p).mp4"
rm "Session - 10147 temp.mp4"
rm "Session - 10147 temp.aac"

# 11
# Session 10278 - Practice audio haptic design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10278/6/22D440E4-3CF8-4968-8FCB-6F21B4587DAD/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10278 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10278/6/22D440E4-3CF8-4968-8FCB-6F21B4587DAD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10278 temp.aac"
ffmpeg -i "Session - 10278 temp.mp4" -i "Session - 10278 temp.aac" -c copy "Session 10278 - Practice audio haptic design (1080p).mp4"
rm "Session - 10278 temp.mp4"
rm "Session - 10278 temp.aac"

# 12
# Session 10239 - Reduce network delays for your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10239/4/8C138558-C5F3-4328-AA26-1F2D924B69F9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10239 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10239/4/8C138558-C5F3-4328-AA26-1F2D924B69F9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10239 temp.aac"
ffmpeg -i "Session - 10239 temp.mp4" -i "Session - 10239 temp.aac" -c copy "Session 10239 - Reduce network delays for your app (1080p).mp4"
rm "Session - 10239 temp.mp4"
rm "Session - 10239 temp.aac"

# 13
# Session 10110 - Safeguard your accounts, promotions, and content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10110/4/6F66F9D8-DC2E-40C0-8C90-90FD8375D0B9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10110 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10110/4/6F66F9D8-DC2E-40C0-8C90-90FD8375D0B9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10110 temp.aac"
ffmpeg -i "Session - 10110 temp.mp4" -i "Session - 10110 temp.aac" -c copy "Session 10110 - Safeguard your accounts, promotions, and content (1080p).mp4"
rm "Session - 10110 temp.mp4"
rm "Session - 10110 temp.aac"

# 14
# Session 10094 - Accelerate networking with HTTP-3 and QUIC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10094/7/81661D98-9D24-4A8F-8805-9460365F986B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10094 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10094/7/81661D98-9D24-4A8F-8805-9460365F986B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10094 temp.aac"
ffmpeg -i "Session - 10094 temp.mp4" -i "Session - 10094 temp.aac" -c copy "Session 10094 - Accelerate networking with HTTP-3 and QUIC (1080p).mp4"
rm "Session - 10094 temp.mp4"
rm "Session - 10094 temp.aac"

# 15
# Session 10221 - Streamline your localized strings
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10221/4/E712C2D5-BD11-435B-8F19-C4ACFD79160A/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10221 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10221/4/E712C2D5-BD11-435B-8F19-C4ACFD79160A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10221 temp.aac"
ffmpeg -i "Session - 10221 temp.mp4" -i "Session - 10221 temp.aac" -c copy "Session 10221 - Streamline your localized strings (1080p).mp4"
rm "Session - 10221 temp.mp4"
rm "Session - 10221 temp.aac"

# 16
# Session 10216 - ARC in Swift - Basics and beyond
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10216/4/884C234F-2424-47DF-A4CF-A9010D869C66/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10216 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10216/4/884C234F-2424-47DF-A4CF-A9010D869C66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10216 temp.aac"
ffmpeg -i "Session - 10216 temp.mp4" -i "Session - 10216 temp.aac" -c copy "Session 10216 - ARC in Swift - Basics and beyond (1080p).mp4"
rm "Session - 10216 temp.mp4"
rm "Session - 10216 temp.aac"

# 17
# Session 10062 - SwiftUI on the Mac - Build the fundamentals
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10062/4/9B92BC78-A602-46D4-BABD-38CFE255CCDE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10062 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10062/4/9B92BC78-A602-46D4-BABD-38CFE255CCDE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10062 temp.aac"
ffmpeg -i "Session - 10062 temp.mp4" -i "Session - 10062 temp.aac" -c copy "Session 10062 - SwiftUI on the Mac - Build the fundamentals (1080p).mp4"
rm "Session - 10062 temp.mp4"
rm "Session - 10062 temp.aac"

# 18
# Session 10067 - Bring Recurring Leaderboards to your game
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10067/7/1E50A29A-8D8C-4103-B1E4-F62F2C5AA329/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10067 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10067/7/1E50A29A-8D8C-4103-B1E4-F62F2C5AA329/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10067 temp.aac"
ffmpeg -i "Session - 10067 temp.mp4" -i "Session - 10067 temp.aac" -c copy "Session 10067 - Bring Recurring Leaderboards to your game (1080p).mp4"
rm "Session - 10067 temp.mp4"
rm "Session - 10067 temp.aac"

# 19
# Session 10289 - SwiftUI on the Mac - The finishing touches
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10289/3/C1B68628-5A05-418B-A4FC-9EFD3E970D80/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10289 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10289/3/C1B68628-5A05-418B-A4FC-9EFD3E970D80/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10289 temp.aac"
ffmpeg -i "Session - 10289 temp.mp4" -i "Session - 10289 temp.aac" -c copy "Session 10289 - SwiftUI on the Mac - The finishing touches (1080p).mp4"
rm "Session - 10289 temp.mp4"
rm "Session - 10289 temp.aac"

# 20
# Session 10068 - Build a research and care app, part 1 - Setup onboarding
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10068/4/12425579-AD44-4883-AF2E-0453E511183B/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10068 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10068/4/12425579-AD44-4883-AF2E-0453E511183B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10068 temp.aac"
ffmpeg -i "Session - 10068 temp.mp4" -i "Session - 10068 temp.aac" -c copy "Session 10068 - Build a research and care app, part 1 - Setup onboarding (1080p).mp4"
rm "Session - 10068 temp.mp4"
rm "Session - 10068 temp.aac"

# 21
# Session 10121 - Tailor the VoiceOver experience in your data-rich apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10121/6/9DFDD9FF-82AF-48DC-A0C1-C2CB8A518D93/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10121 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10121/6/9DFDD9FF-82AF-48DC-A0C1-C2CB8A518D93/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10121 temp.aac"
ffmpeg -i "Session - 10121 temp.mp4" -i "Session - 10121 temp.aac" -c copy "Session 10121 - Tailor the VoiceOver experience in your data-rich apps (1080p).mp4"
rm "Session - 10121 temp.mp4"
rm "Session - 10121 temp.aac"

# 22
# Session 10069 - Build a research and care app, part 2 - Schedule tasks
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10069/3/A1BAF400-4B07-4759-956D-2A7D5522311C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10069 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10069/3/A1BAF400-4B07-4759-956D-2A7D5522311C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10069 temp.aac"
ffmpeg -i "Session - 10069 temp.mp4" -i "Session - 10069 temp.aac" -c copy "Session 10069 - Build a research and care app, part 2 - Schedule tasks (1080p).mp4"
rm "Session - 10069 temp.mp4"
rm "Session - 10069 temp.aac"

# 23
# Session 10038 - Tune your Core ML models
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10038/3/84EFF5EC-346B-4A8C-BDAC-47F3258352D9/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10038 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10038/3/84EFF5EC-346B-4A8C-BDAC-47F3258352D9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10038 temp.aac"
ffmpeg -i "Session - 10038 temp.mp4" -i "Session - 10038 temp.aac" -c copy "Session 10038 - Tune your Core ML models (1080p).mp4"
rm "Session - 10038 temp.mp4"
rm "Session - 10038 temp.aac"

# 24
# Session 10282 - Build a research and care app, part 3 - Visualize progress
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10282/6/B06925A6-3197-4AAB-98EA-4634CD61EED0/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10282 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10282/6/B06925A6-3197-4AAB-98EA-4634CD61EED0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10282 temp.aac"
ffmpeg -i "Session - 10282 temp.mp4" -i "Session - 10282 temp.aac" -c copy "Session 10282 - Build a research and care app, part 3 - Visualize progress (1080p).mp4"
rm "Session - 10282 temp.mp4"
rm "Session - 10282 temp.aac"

# 25
# Session 10233 - Use Accelerate to improve performance and incorporate encrypted archives
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10233/4/72F4F22E-DDAB-4A58-B049-7AC537198EFC/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10233 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10233/4/72F4F22E-DDAB-4A58-B049-7AC537198EFC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10233 temp.aac"
ffmpeg -i "Session - 10233 temp.mp4" -i "Session - 10233 temp.aac" -c copy "Session 10233 - Use Accelerate to improve performance and incorporate encrypted archives (1080p).mp4"
rm "Session - 10233 temp.mp4"
rm "Session - 10233 temp.aac"

# 26
# Session 10015 - Build apps that share data through CloudKit and Core Data 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10015/4/7C4C52B4-3B54-4FCE-8300-BEA17FC4A7AE/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10015 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10015/4/7C4C52B4-3B54-4FCE-8300-BEA17FC4A7AE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10015 temp.aac"
ffmpeg -i "Session - 10015 temp.mp4" -i "Session - 10015 temp.aac" -c copy "Session 10015 - Build apps that share data through CloudKit and Core Data  (1080p).mp4"
rm "Session - 10015 temp.mp4"
rm "Session - 10015 temp.aac"

# 27
# Session 10253 - Write a DSL in Swift using result builders
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10253/4/F323F580-06C3-4F19-9548-AB7560E40CD4/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10253 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10253/4/F323F580-06C3-4F19-9548-AB7560E40CD4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10253 temp.aac"
ffmpeg -i "Session - 10253 temp.mp4" -i "Session - 10253 temp.aac" -c copy "Session 10253 - Write a DSL in Swift using result builders (1080p).mp4"
rm "Session - 10253 temp.mp4"
rm "Session - 10253 temp.aac"

# 28
# Session 10189 - Coordinate media playback in Safari with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10189/6/94D452D6-3731-4C08-8EFA-BD8F6B8853ED/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10189 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10189/6/94D452D6-3731-4C08-8EFA-BD8F6B8853ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10189 temp.aac"
ffmpeg -i "Session - 10189 temp.mp4" -i "Session - 10189 temp.aac" -c copy "Session 10189 - Coordinate media playback in Safari with Group Activities (1080p).mp4"
rm "Session - 10189 temp.mp4"
rm "Session - 10189 temp.aac"

# 29
# Session 10077 - Create 3D workflows with USD
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10077/9/BE748DC5-387D-4E4A-8D9B-05B80B919870/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10077 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10077/9/BE748DC5-387D-4E4A-8D9B-05B80B919870/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10077 temp.aac"
ffmpeg -i "Session - 10077 temp.mp4" -i "Session - 10077 temp.aac" -c copy "Session 10077 - Create 3D workflows with USD (1080p).mp4"
rm "Session - 10077 temp.mp4"
rm "Session - 10077 temp.aac"

# 30
# Session 10318 - Developer spotlight - Accessibility
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10318/12/ACAF8CC7-BEA9-44B2-A056-557CDC67692C/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10318 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10318/12/ACAF8CC7-BEA9-44B2-A056-557CDC67692C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10318 temp.aac"
ffmpeg -i "Session - 10318 temp.mp4" -i "Session - 10318 temp.aac" -c copy "Session 10318 - Developer spotlight - Accessibility (1080p).mp4"
rm "Session - 10318 temp.mp4"
rm "Session - 10318 temp.aac"

# 31
# Session 10325 - Friday@WWDC21
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10325/1/1B2FDBA9-AB3E-4194-B18F-FE4C3CA435B2/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10325 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10325/1/1B2FDBA9-AB3E-4194-B18F-FE4C3CA435B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10325 temp.aac"
ffmpeg -i "Session - 10325 temp.mp4" -i "Session - 10325 temp.aac" -c copy "Session 10325 - Friday@WWDC21 (1080p).mp4"
rm "Session - 10325 temp.mp4"
rm "Session - 10325 temp.aac"

# 32
# Session 10315 - Friday's Mindful Cooldown for Coding… brought to you by Fitness+
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10315/1/5A39EBEA-421E-4995-B514-30DF91150838/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 10315 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10315/1/5A39EBEA-421E-4995-B514-30DF91150838/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10315 temp.aac"
ffmpeg -i "Session - 10315 temp.mp4" -i "Session - 10315 temp.aac" -c copy "Session 10315 - Friday's Mindful Cooldown for Coding… brought to you by Fitness+ (1080p).mp4"
rm "Session - 10315 temp.mp4"
rm "Session - 10315 temp.aac"
