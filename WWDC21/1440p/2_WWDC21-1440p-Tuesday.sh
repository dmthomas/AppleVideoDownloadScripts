# Script to download Tuesday's WWDC 21 session videos in the highest 1440p video and audio
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
# Session 10049 - Add intelligence to your widgets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10049/5/79001019-5F3C-4B12-A9F7-01FCE02A0381/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10049 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10049/5/79001019-5F3C-4B12-A9F7-01FCE02A0381/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10049 temp.aac"
ffmpeg -i "Session - 10049 temp.mp4" -i "Session - 10049 temp.aac" -c copy "Session 10049 - Add intelligence to your widgets (1440p).mp4"
rm "Session - 10049 temp.mp4"
rm "Session - 10049 temp.aac"

# 2
# Session 10021 - Add rich graphics to your SwiftUI app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10021/8/16B955CA-C8EE-4062-9495-C6571401B563/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10021 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10021/8/16B955CA-C8EE-4062-9495-C6571401B563/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10021 temp.aac"
ffmpeg -i "Session - 10021 temp.mp4" -i "Session - 10021 temp.aac" -c copy "Session 10021 - Add rich graphics to your SwiftUI app (1440p).mp4"
rm "Session - 10021 temp.mp4"
rm "Session - 10021 temp.aac"

# 3
# Session 10085 - Apple’s privacy pillars in focus
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10085/7/588BAC34-15EB-4FCE-AF4F-5934A7DD4024/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10085 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10085/7/588BAC34-15EB-4FCE-AF4F-5934A7DD4024/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10085 temp.aac"
ffmpeg -i "Session - 10085 temp.mp4" -i "Session - 10085 temp.aac" -c copy "Session 10085 - Apple’s privacy pillars in focus (1440p).mp4"
rm "Session - 10085 temp.mp4"
rm "Session - 10085 temp.aac"

# 4
# Session 10122 - Bring accessibility to charts in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10122/6/218A971D-4AB5-4417-96CE-15D01B009082/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10122 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10122/6/218A971D-4AB5-4417-96CE-15D01B009082/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10122 temp.aac"
ffmpeg -i "Session - 10122 temp.mp4" -i "Session - 10122 temp.aac" -c copy "Session 10122 - Bring accessibility to charts in your app (1440p).mp4"
rm "Session - 10122 temp.mp4"
rm "Session - 10122 temp.aac"

# 5
# Session 10005 - Connect Bluetooth devices to Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10005/6/F54416C7-9591-4AE8-AE9D-365C4BAC2D7E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10005 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10005/6/F54416C7-9591-4AE8-AE9D-365C4BAC2D7E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10005 temp.aac"
ffmpeg -i "Session - 10005 temp.mp4" -i "Session - 10005 temp.aac" -c copy "Session 10005 - Connect Bluetooth devices to Apple Watch (1440p).mp4"
rm "Session - 10005 temp.mp4"
rm "Session - 10005 temp.aac"

# 6
# Session 10176 - Craft search experiences in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10176/7/5699E756-ACAC-4EFA-801B-5709E5EDF434/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10176 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10176/7/5699E756-ACAC-4EFA-801B-5709E5EDF434/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10176 temp.aac"
ffmpeg -i "Session - 10176 temp.mp4" -i "Session - 10176 temp.aac" -c copy "Session 10176 - Craft search experiences in SwiftUI (1440p).mp4"
rm "Session - 10176 temp.mp4"
rm "Session - 10176 temp.aac"

# 7
# Session 10076 - Create 3D models with Object Capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10076/8/AE671810-9424-412B-826B-32C13C4AC0D9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10076 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10076/8/AE671810-9424-412B-826B-32C13C4AC0D9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10076 temp.aac"
ffmpeg -i "Session - 10076 temp.mp4" -i "Session - 10076 temp.aac" -c copy "Session 10076 - Create 3D models with Object Capture (1440p).mp4"
rm "Session - 10076 temp.mp4"
rm "Session - 10076 temp.aac"

# 8
# Session 10045 - Create custom audio experiences with ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10045/5/3099F002-4DB2-4D54-8272-1DABD4768AF2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10045 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10045/5/3099F002-4DB2-4D54-8272-1DABD4768AF2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10045 temp.aac"
ffmpeg -i "Session - 10045 temp.mp4" -i "Session - 10045 temp.aac" -c copy "Session 10045 - Create custom audio experiences with ShazamKit (1440p).mp4"
rm "Session - 10045 temp.mp4"
rm "Session - 10045 temp.aac"

# 9
# Session 10036 - Discover built-in sound classification in SoundAnalysis
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10036/7/E21A5457-DFA1-405D-87E4-EBCCB8A6F0C1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10036 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10036/7/E21A5457-DFA1-405D-87E4-EBCCB8A6F0C1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10036 temp.aac"
ffmpeg -i "Session - 10036 temp.mp4" -i "Session - 10036 temp.aac" -c copy "Session 10036 - Discover built-in sound classification in SoundAnalysis (1440p).mp4"
rm "Session - 10036 temp.mp4"
rm "Session - 10036 temp.aac"

# 10
# Session 10074 - Dive into RealityKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10074/4/67629E8A-3351-47A6-941D-B3C60B778BAF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10074 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10074/4/67629E8A-3351-47A6-941D-B3C60B778BAF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10074 temp.aac"
ffmpeg -i "Session - 10074 temp.mp4" -i "Session - 10074 temp.aac" -c copy "Session 10074 - Dive into RealityKit 2 (1440p).mp4"
rm "Session - 10074 temp.mp4"
rm "Session - 10074 temp.aac"

# 11
# Session 10149 - Enhance your app with Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10149/7/C01A5359-2EAC-411E-99A5-8D7DA9C8220B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10149 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10149/7/C01A5359-2EAC-411E-99A5-8D7DA9C8220B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10149 temp.aac"
ffmpeg -i "Session - 10149 temp.mp4" -i "Session - 10149 temp.aac" -c copy "Session 10149 - Enhance your app with Metal ray tracing (1440p).mp4"
rm "Session - 10149 temp.mp4"
rm "Session - 10149 temp.aac"

# 12
# Session 10286 - Explore bindless rendering in Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10286/7/76356517-0CAC-4E8D-81E3-B42DCE552D15/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10286 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10286/7/76356517-0CAC-4E8D-81E3-B42DCE552D15/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10286 temp.aac"
ffmpeg -i "Session - 10286 temp.mp4" -i "Session - 10286 temp.aac" -c copy "Session 10286 - Explore bindless rendering in Metal (1440p).mp4"
rm "Session - 10286 temp.mp4"
rm "Session - 10286 temp.aac"

# 13
# Session 10143 - Explore HLS variants in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10143/8/02A20AB5-0C7F-4E9F-B252-75A25D1261ED/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10143 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10143/8/02A20AB5-0C7F-4E9F-B252-75A25D1261ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10143 temp.aac"
ffmpeg -i "Session - 10143 temp.mp4" -i "Session - 10143 temp.aac" -c copy "Session 10143 - Explore HLS variants in AVFoundation (1440p).mp4"
rm "Session - 10143 temp.mp4"
rm "Session - 10143 temp.aac"

# 14
# Session 10150 - Explore hybrid rendering with Metal ray tracing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10150/9/F2EBE5D9-9990-476B-82FF-D73638B5E1AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10150 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10150/9/F2EBE5D9-9990-476B-82FF-D73638B5E1AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10150 temp.aac"
ffmpeg -i "Session - 10150 temp.mp4" -i "Session - 10150 temp.aac" -c copy "Session 10150 - Explore hybrid rendering with Metal ray tracing (1440p).mp4"
rm "Session - 10150 temp.mp4"
rm "Session - 10150 temp.aac"

# 15
# Session 10165 - Explore Nearby Interaction with third-party accessories
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10165/5/7A838436-C185-4F66-B1AD-411F16DCBF86/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10165 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10165/5/7A838436-C185-4F66-B1AD-411F16DCBF86/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10165 temp.aac"
ffmpeg -i "Session - 10165 temp.mp4" -i "Session - 10165 temp.aac" -c copy "Session 10165 - Explore Nearby Interaction with third-party accessories (1440p).mp4"
rm "Session - 10165 temp.mp4"
rm "Session - 10165 temp.aac"

# 16
# Session 10044 - Explore ShazamKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10044/7/242BEFF9-E49D-4A96-972C-BEE65585211D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10044 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10044/7/242BEFF9-E49D-4A96-972C-BEE65585211D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10044 temp.aac"
ffmpeg -i "Session - 10044 temp.mp4" -i "Session - 10044 temp.aac" -c copy "Session 10044 - Explore ShazamKit (1440p).mp4"
rm "Session - 10044 temp.mp4"
rm "Session - 10044 temp.aac"

# 17
# Session 10134 - Explore structured concurrency in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10134/5/2EDD7E90-D227-48F9-8B5B-377C20A9DC31/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10134 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10134/5/2EDD7E90-D227-48F9-8B5B-377C20A9DC31/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10134 temp.aac"
ffmpeg -i "Session - 10134 temp.mp4" -i "Session - 10134 temp.aac" -c copy "Session 10134 - Explore structured concurrency in Swift (1440p).mp4"
rm "Session - 10134 temp.mp4"
rm "Session - 10134 temp.aac"

# 18
# Session 10089 - Explore Verifiable Health Records
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10089/4/9DC55E07-91AA-4A4C-860B-E447648389FB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10089 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10089/4/9DC55E07-91AA-4A4C-860B-E447648389FB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10089 temp.aac"
ffmpeg -i "Session - 10089 temp.mp4" -i "Session - 10089 temp.aac" -c copy "Session 10089 - Explore Verifiable Health Records (1440p).mp4"
rm "Session - 10089 temp.mp4"
rm "Session - 10089 temp.aac"

# 19
# Session 10268 - Explore Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10268/4/D11A0D51-DD10-4E50-932B-03643B47BF07/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10268 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10268/4/D11A0D51-DD10-4E50-932B-03643B47BF07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10268 temp.aac"
ffmpeg -i "Session - 10268 temp.mp4" -i "Session - 10268 temp.aac" -c copy "Session 10268 - Explore Xcode Cloud workflows (1440p).mp4"
rm "Session - 10268 temp.mp4"
rm "Session - 10268 temp.aac"

# 20
# Session 10261 - Faster and simpler notarization for Mac apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10261/7/1C2BA450-20C2-43D2-985E-BA26B13060B2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10261 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10261/7/1C2BA450-20C2-43D2-985E-BA26B13060B2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10261 temp.aac"
ffmpeg -i "Session - 10261 temp.mp4" -i "Session - 10261 temp.aac" -c copy "Session 10261 - Faster and simpler notarization for Mac apps (1440p).mp4"
rm "Session - 10261 temp.mp4"
rm "Session - 10261 temp.aac"

# 21
# Session 10260 - Focus on iPad keyboard navigation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10260/4/E0BC9390-870B-4D59-9A0C-74941EAF4E36/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10260 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10260/4/E0BC9390-870B-4D59-9A0C-74941EAF4E36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10260 temp.aac"
ffmpeg -i "Session - 10260 temp.mp4" -i "Session - 10260 temp.aac" -c copy "Session 10260 - Focus on iPad keyboard navigation (1440p).mp4"
rm "Session - 10260 temp.mp4"
rm "Session - 10260 temp.aac"

# 22
# Session 10096 - Get ready for iCloud Private Relay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10096/8/601CAC32-E343-4373-9758-85F33CAAB3D8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10096 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10096/8/601CAC32-E343-4373-9758-85F33CAAB3D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10096 temp.aac"
ffmpeg -i "Session - 10096 temp.mp4" -i "Session - 10096 temp.aac" -c copy "Session 10096 - Get ready for iCloud Private Relay (1440p).mp4"
rm "Session - 10096 temp.mp4"
rm "Session - 10096 temp.aac"

# 23
# Session 10236 - Host and automate your DocC documentation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10236/6/93E69517-B140-4720-B821-A542F64CC5C8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10236 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10236/6/93E69517-B140-4720-B821-A542F64CC5C8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10236 temp.aac"
ffmpeg -i "Session - 10236 temp.mp4" -i "Session - 10236 temp.aac" -c copy "Session 10236 - Host and automate your DocC documentation (1440p).mp4"
rm "Session - 10236 temp.mp4"
rm "Session - 10236 temp.aac"

# 24
# Session 10265 - Immerse your app in spatial audio
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10265/4/9BD45E56-F096-4BDD-AAFA-CF90B0501E1B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10265 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10265/4/9BD45E56-F096-4BDD-AAFA-CF90B0501E1B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10265 temp.aac"
ffmpeg -i "Session - 10265 temp.mp4" -i "Session - 10265 temp.aac" -c copy "Session 10265 - Immerse your app in spatial audio (1440p).mp4"
rm "Session - 10265 temp.mp4"
rm "Session - 10265 temp.aac"

# 25
# Session 10132 - Meet async/await in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10132/4/B2DD09FD-0D18-4E24-82C2-0736DF914F66/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10132 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10132/4/B2DD09FD-0D18-4E24-82C2-0736DF914F66/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10132 temp.aac"
ffmpeg -i "Session - 10132 temp.mp4" -i "Session - 10132 temp.aac" -c copy "Session 10132 - Meet async-await in Swift (1440p).mp4"
rm "Session - 10132 temp.mp4"
rm "Session - 10132 temp.aac"

# 26
# Session 10131 - Meet declarative device management
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10131/4/E2547688-09E1-4213-B74C-BA8E1EE3D32A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10131 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10131/4/E2547688-09E1-4213-B74C-BA8E1EE3D32A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10131 temp.aac"
ffmpeg -i "Session - 10131 temp.mp4" -i "Session - 10131 temp.aac" -c copy "Session 10131 - Meet declarative device management (1440p).mp4"
rm "Session - 10131 temp.mp4"
rm "Session - 10131 temp.aac"

# 27
# Session 10166 - Meet DocC documentation in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10166/7/097C7329-25A1-4933-A07D-78C7F1F1CA46/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10166 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10166/7/097C7329-25A1-4933-A07D-78C7F1F1CA46/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10166 temp.aac"
ffmpeg -i "Session - 10166 temp.mp4" -i "Session - 10166 temp.aac" -c copy "Session 10166 - Meet DocC documentation in Xcode (1440p).mp4"
rm "Session - 10166 temp.mp4"
rm "Session - 10166 temp.aac"

# 28
# Session 10183 - Meet Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10183/5/C850E07A-1E66-4641-9742-DE0DE2E3E29B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10183 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10183/5/C850E07A-1E66-4641-9742-DE0DE2E3E29B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10183 temp.aac"
ffmpeg -i "Session - 10183 temp.mp4" -i "Session - 10183 temp.aac" -c copy "Session 10183 - Meet Group Activities (1440p).mp4"
rm "Session - 10183 temp.mp4"
rm "Session - 10183 temp.aac"

# 29
# Session 10171 - Meet in-app events on the App Store
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10171/4/70981448-BDD3-40FE-8EE5-7B1F60FCAFB9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10171 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10171/4/70981448-BDD3-40FE-8EE5-7B1F60FCAFB9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10171 temp.aac"
ffmpeg -i "Session - 10171 temp.mp4" -i "Session - 10171 temp.aac" -c copy "Session 10171 - Meet in-app events on the App Store (1440p).mp4"
rm "Session - 10171 temp.mp4"
rm "Session - 10171 temp.aac"

# 30
# Session 10294 - Meet MusicKit for Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10294/5/DFB67B36-DCDE-49D9-8ED1-AC2A8B566F64/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10294 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10294/5/DFB67B36-DCDE-49D9-8ED1-AC2A8B566F64/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10294 temp.aac"
ffmpeg -i "Session - 10294 temp.mp4" -i "Session - 10294 temp.aac" -c copy "Session 10294 - Meet MusicKit for Swift (1440p).mp4"
rm "Session - 10294 temp.mp4"
rm "Session - 10294 temp.aac"

# 31
# Session 10104 - Meet Safari Web Extensions on iOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10104/6/CA8FE4D3-295C-4F3F-90F5-447CB81B37B7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10104 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10104/6/CA8FE4D3-295C-4F3F-90F5-447CB81B37B7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10104 temp.aac"
ffmpeg -i "Session - 10104 temp.mp4" -i "Session - 10104 temp.aac" -c copy "Session 10104 - Meet Safari Web Extensions on iOS (1440p).mp4"
rm "Session - 10104 temp.mp4"
rm "Session - 10104 temp.aac"

# 32
# Session 10232 - Meet Shortcuts for macOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10232/4/F45F16B7-D0DD-4D4D-954B-1704C1063E3C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10232 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10232/4/F45F16B7-D0DD-4D4D-954B-1704C1063E3C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10232 temp.aac"
ffmpeg -i "Session - 10232 temp.mp4" -i "Session - 10232 temp.aac" -c copy "Session 10232 - Meet Shortcuts for macOS (1440p).mp4"
rm "Session - 10232 temp.mp4"
rm "Session - 10232 temp.aac"

# 33
# Session 10114 - Meet StoreKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10114/3/2388CEF1-AA51-4CB2-9E79-CBDC25916BDA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10114 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10114/3/2388CEF1-AA51-4CB2-9E79-CBDC25916BDA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10114 temp.aac"
ffmpeg -i "Session - 10114 temp.mp4" -i "Session - 10114 temp.aac" -c copy "Session 10114 - Meet StoreKit 2 (1440p).mp4"
rm "Session - 10114 temp.mp4"
rm "Session - 10114 temp.aac"

# 34
# Session 10170 - Meet TestFlight on Mac
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10170/8/7D7EED26-62A5-4BD6-9812-14B7F8AD74ED/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10170 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10170/8/7D7EED26-62A5-4BD6-9812-14B7F8AD74ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10170 temp.aac"
ffmpeg -i "Session - 10170 temp.mp4" -i "Session - 10170 temp.aac" -c copy "Session 10170 - Meet TestFlight on Mac (1440p).mp4"
rm "Session - 10170 temp.mp4"
rm "Session - 10170 temp.aac"

# 35
# Session 10123 - Meet the Screen Time API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10123/5/AFD1559E-46A3-4B41-A5BC-CA1ED7800EC9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10123 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10123/5/AFD1559E-46A3-4B41-A5BC-CA1ED7800EC9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10123 temp.aac"
ffmpeg -i "Session - 10123 temp.mp4" -i "Session - 10123 temp.aac" -c copy "Session 10123 - Meet the Screen Time API (1440p).mp4"
rm "Session - 10123 temp.mp4"
rm "Session - 10123 temp.aac"

# 36
# Session 10064 - Meet the UIKit button system
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10064/3/5DF3D536-453F-4C11-9BD5-9334BD79D560/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10064 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10064/3/5DF3D536-453F-4C11-9BD5-9334BD79D560/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10064 temp.aac"
ffmpeg -i "Session - 10064 temp.mp4" -i "Session - 10064 temp.aac" -c copy "Session 10064 - Meet the UIKit button system (1440p).mp4"
rm "Session - 10064 temp.mp4"
rm "Session - 10064 temp.aac"

# 37
# Session 10267 - Meet Xcode Cloud
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10267/5/84238A0B-FE43-4CCA-9D0B-2643A5E3A5B5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10267 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10267/5/84238A0B-FE43-4CCA-9D0B-2643A5E3A5B5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10267 temp.aac"
ffmpeg -i "Session - 10267 temp.mp4" -i "Session - 10267 temp.aac" -c copy "Session 10267 - Meet Xcode Cloud (1440p).mp4"
rm "Session - 10267 temp.mp4"
rm "Session - 10267 temp.aac"

# 38
# Session 10133 - Protect mutable state with Swift actors
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10133/4/20482DD4-E6ED-4CE5-896C-7F0035FD9AB4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10133 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10133/4/20482DD4-E6ED-4CE5-896C-7F0035FD9AB4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10133 temp.aac"
ffmpeg -i "Session - 10133 temp.mp4" -i "Session - 10133 temp.aac" -c copy "Session 10133 - Protect mutable state with Swift actors (1440p).mp4"
rm "Session - 10133 temp.mp4"
rm "Session - 10133 temp.aac"

# 39
# Session 10279 - Simplify sign in for your tvOS apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10279/6/2634C5FD-06F9-4C34-8D8A-215A0C29356B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10279 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10279/6/2634C5FD-06F9-4C34-8D8A-215A0C29356B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10279 temp.aac"
ffmpeg -i "Session - 10279 temp.mp4" -i "Session - 10279 temp.aac" -c copy "Session 10279 - Simplify sign in for your tvOS apps (1440p).mp4"
rm "Session - 10279 temp.mp4"
rm "Session - 10279 temp.aac"

# 40
# Session 10057 - Take your iPad apps to the next level
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10057/7/5399C1AB-B62F-4A83-8AA1-FCBFDAFFBF44/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10057 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10057/7/5399C1AB-B62F-4A83-8AA1-FCBFDAFFBF44/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10057 temp.aac"
ffmpeg -i "Session - 10057 temp.mp4" -i "Session - 10057 temp.aac" -c copy "Session 10057 - Take your iPad apps to the next level (1440p).mp4"
rm "Session - 10057 temp.mp4"
rm "Session - 10057 temp.aac"

# 41
# Session 10081 - Tap into virtual and physical game controllers
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10081/5/113EE58D-480B-4192-A7E1-8088B2A0BC72/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10081 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10081/5/113EE58D-480B-4192-A7E1-8088B2A0BC72/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10081 temp.aac"
ffmpeg -i "Session - 10081 temp.mp4" -i "Session - 10081 temp.aac" -c copy "Session 10081 - Tap into virtual and physical game controllers (1440p).mp4"
rm "Session - 10081 temp.mp4"
rm "Session - 10081 temp.aac"

# 42
# Session 10275 - The practice of inclusive design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10275/3/3E6DAA38-C002-43B3-A62C-F78B03C57AC7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10275 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10275/3/3E6DAA38-C002-43B3-A62C-F78B03C57AC7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10275 temp.aac"
ffmpeg -i "Session - 10275 temp.mp4" -i "Session - 10275 temp.aac" -c copy "Session 10275 - The practice of inclusive design (1440p).mp4"
rm "Session - 10275 temp.mp4"
rm "Session - 10275 temp.aac"

# 43
# Session 10304 - The process of inclusive design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10304/4/5F0C8CED-8F09-4528-BEFE-98A248B6088B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10304 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10304/4/5F0C8CED-8F09-4528-BEFE-98A248B6088B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10304 temp.aac"
ffmpeg -i "Session - 10304 temp.mp4" -i "Session - 10304 temp.aac" -c copy "Session 10304 - The process of inclusive design (1440p).mp4"
rm "Session - 10304 temp.mp4"
rm "Session - 10304 temp.aac"

# 44
# Session 10142 - Transition media gaplessly with HLS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10142/14/423D5648-E58A-4CD1-A06F-1290EFA18BC4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10142 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10142/14/423D5648-E58A-4CD1-A06F-1290EFA18BC4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10142 temp.aac"
ffmpeg -i "Session - 10142 temp.mp4" -i "Session - 10142 temp.aac" -c copy "Session 10142 - Transition media gaplessly with HLS (1440p).mp4"
rm "Session - 10142 temp.mp4"
rm "Session - 10142 temp.aac"

# 45
# Session 10181 - Ultimate application performance survival guide
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10181/11/A69D2FCC-21C3-4392-B857-552EF73E7714/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10181 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10181/11/A69D2FCC-21C3-4392-B857-552EF73E7714/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10181 temp.aac"
ffmpeg -i "Session - 10181 temp.mp4" -i "Session - 10181 temp.aac" -c copy "Session 10181 - Ultimate application performance survival guide (1440p).mp4"
rm "Session - 10181 temp.mp4"
rm "Session - 10181 temp.aac"

# 46
# Session 10276 - Use the camera for keyboard input in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10276/3/35E33348-1E17-4FF5-92BB-618ED251B0EC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10276 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10276/3/35E33348-1E17-4FF5-92BB-618ED251B0EC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10276 temp.aac"
ffmpeg -i "Session - 10276 temp.mp4" -i "Session - 10276 temp.aac" -c copy "Session 10276 - Use the camera for keyboard input in your app (1440p).mp4"
rm "Session - 10276 temp.mp4"
rm "Session - 10276 temp.aac"

# 47
# Session 10012 - What's new in App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10012/3/AA1959EB-823F-4382-A050-7764EC6F604E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10012 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10012/3/AA1959EB-823F-4382-A050-7764EC6F604E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10012 temp.aac"
ffmpeg -i "Session - 10012 temp.mp4" -i "Session - 10012 temp.aac" -c copy "Session 10012 - What's new in App Clips (1440p).mp4"
rm "Session - 10012 temp.mp4"
rm "Session - 10012 temp.aac"

# 48
# Session 10054 - What's new in AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10054/7/D3581025-DC73-47FB-98A0-0C9599FAD509/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10054 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10054/7/D3581025-DC73-47FB-98A0-0C9599FAD509/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10054 temp.aac"
ffmpeg -i "Session - 10054 temp.mp4" -i "Session - 10054 temp.aac" -c copy "Session 10054 - What's new in AppKit (1440p).mp4"
rm "Session - 10054 temp.mp4"
rm "Session - 10054 temp.aac"

# 49
# Session 10290 - What's new in AVKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10290/7/3B2EE1D3-46DD-48DC-8B8A-FDF061067D68/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10290 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10290/7/3B2EE1D3-46DD-48DC-8B8A-FDF061067D68/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10290 temp.aac"
ffmpeg -i "Session - 10290 temp.mp4" -i "Session - 10290 temp.aac" -c copy "Session 10290 - What's new in AVKit (1440p).mp4"
rm "Session - 10290 temp.mp4"
rm "Session - 10290 temp.aac"

# 50
# Session 10086 - What's new in CloudKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10086/3/0126BD48-6C5E-4D8C-9464-DA85CFDF193B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10086 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10086/3/0126BD48-6C5E-4D8C-9464-DA85CFDF193B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10086 temp.aac"
ffmpeg -i "Session - 10086 temp.mp4" -i "Session - 10086 temp.aac" -c copy "Session 10086 - What's new in CloudKit (1440p).mp4"
rm "Session - 10086 temp.mp4"
rm "Session - 10086 temp.aac"

# 51
# Session 10109 - What's new in Foundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10109/5/31B61A71-9D39-4F29-97DF-66309DBA320E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10109 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10109/5/31B61A71-9D39-4F29-97DF-66309DBA320E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10109 temp.aac"
ffmpeg -i "Session - 10109 temp.mp4" -i "Session - 10109 temp.aac" -c copy "Session 10109 - What's new in Foundation (1440p).mp4"
rm "Session - 10109 temp.mp4"
rm "Session - 10109 temp.aac"

# 52
# Session 10018 - What's new in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10018/4/C1412BB4-40EE-418F-BCFD-09796128093C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10018 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10018/4/C1412BB4-40EE-418F-BCFD-09796128093C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10018 temp.aac"
ffmpeg -i "Session - 10018 temp.mp4" -i "Session - 10018 temp.aac" -c copy "Session 10018 - What's new in SwiftUI (1440p).mp4"
rm "Session - 10018 temp.mp4"
rm "Session - 10018 temp.aac"

# 53
# Session 10059 - What's new in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10059/3/C8C0DE4A-DE0F-48AF-A08C-DC13231B61C1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10059 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10059/3/C8C0DE4A-DE0F-48AF-A08C-DC13231B61C1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10059 temp.aac"
ffmpeg -i "Session - 10059 temp.mp4" -i "Session - 10059 temp.aac" -c copy "Session 10059 - What's new in UIKit (1440p).mp4"
rm "Session - 10059 temp.mp4"
rm "Session - 10059 temp.aac"

# 54
# Session 10002 - What's new in watchOS 8
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10002/4/6AE5C57E-FF72-4A1C-B627-40969B18D70D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10002 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10002/4/6AE5C57E-FF72-4A1C-B627-40969B18D70D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10002 temp.aac"
ffmpeg -i "Session - 10002 temp.mp4" -i "Session - 10002 temp.aac" -c copy "Session 10002 - What's new in watchOS 8 (1440p).mp4"
rm "Session - 10002 temp.mp4"
rm "Session - 10002 temp.aac"

# 55
# Session 10192 - What‘s new in Swift
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10192/4/1EE1B691-9DDB-4920-BD8C-7E91BDD75BB8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10192 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10192/4/1EE1B691-9DDB-4920-BD8C-7E91BDD75BB8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10192 temp.aac"
ffmpeg -i "Session - 10192 temp.mp4" -i "Session - 10192 temp.aac" -c copy "Session 10192 - What‘s new in Swift (1440p).mp4"
rm "Session - 10192 temp.mp4"
rm "Session - 10192 temp.aac"

# 56
# Session 10066 - What’s new in Game Center: Widgets, friends, and multiplayer improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10066/4/41B04DA6-0AE3-41B6-9CE1-CF48AAAF9439/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10066 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10066/4/41B04DA6-0AE3-41B6-9CE1-CF48AAAF9439/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10066 temp.aac"
ffmpeg -i "Session - 10066 temp.mp4" -i "Session - 10066 temp.aac" -c copy "Session 10066 - What’s new in Game Center - Widgets, friends, and multiplayer improvements (1440p).mp4"
rm "Session - 10066 temp.mp4"
rm "Session - 10066 temp.aac"

# 57
# Session 10130 - What’s new in managing Apple devices
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10130/4/92D05556-BFA4-40C0-A181-5747D041FF01/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10130 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10130/4/92D05556-BFA4-40C0-A181-5747D041FF01/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10130 temp.aac"
ffmpeg -i "Session - 10130 temp.mp4" -i "Session - 10130 temp.aac" -c copy "Session 10130 - What’s new in managing Apple devices (1440p).mp4"
rm "Session - 10130 temp.mp4"
rm "Session - 10130 temp.aac"

# 58
# Session 10259 - Your guide to keyboard layout
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10259/4/F6B7B6EB-8577-4034-9EE3-67BADA64041D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10259 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10259/4/F6B7B6EB-8577-4034-9EE3-67BADA64041D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10259 temp.aac"
ffmpeg -i "Session - 10259 temp.mp4" -i "Session - 10259 temp.aac" -c copy "Session 10259 - Your guide to keyboard layout (1440p).mp4"
rm "Session - 10259 temp.mp4"
rm "Session - 10259 temp.aac"

# 59
# Session 10317 - Out of this world... on to Mars
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10317/8/3E1F4F09-7847-40F9-8D2A-0355456D569E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10317 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10317/8/3E1F4F09-7847-40F9-8D2A-0355456D569E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10317 temp.aac"
ffmpeg -i "Session - 10317 temp.mp4" -i "Session - 10317 temp.aac" -c copy "Session 10317 - Out of this world... on to Mars (1440p).mp4"
rm "Session - 10317 temp.mp4"
rm "Session - 10317 temp.aac"
