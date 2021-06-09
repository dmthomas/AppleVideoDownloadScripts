# Script to download Wednesday's WWDC 21 session videos in the highest 1440p video and audio
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
# Session 10264 - Adopt Quick Note
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10264/3/A5939C70-9333-4792-A9D5-A98FF6347D4C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10264 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10264/3/A5939C70-9333-4792-A9D5-A98FF6347D4C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10264 temp.aac"
ffmpeg -i "Session - 10264 temp.mp4" -i "Session - 10264 temp.aac" -c copy "Session 10264 - Adopt Quick Note (1440p).mp4"
rm "Session - 10264 temp.mp4"
rm "Session - 10264 temp.aac"

# 2
# Session 10212 - Analyze HTTP traffic in Instruments 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10212/4/20646031-B78D-4268-9B08-A74EC6ABB639/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10212 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10212/4/20646031-B78D-4268-9B08-A74EC6ABB639/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10212 temp.aac"
ffmpeg -i "Session - 10212 temp.mp4" -i "Session - 10212 temp.aac" -c copy "Session 10212 - Analyze HTTP traffic in Instruments  (1440p).mp4"
rm "Session - 10212 temp.mp4"
rm "Session - 10212 temp.aac"

# 3
# Session 10078 - AR Quick Look, meet Object Capture 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10078/7/D952E090-6CA8-4748-9B71-385AC16452AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10078 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10078/7/D952E090-6CA8-4748-9B71-385AC16452AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10078 temp.aac"
ffmpeg -i "Session - 10078 temp.mp4" -i "Session - 10078 temp.aac" -c copy "Session 10078 - AR Quick Look, meet Object Capture  (1440p).mp4"
rm "Session - 10078 temp.mp4"
rm "Session - 10078 temp.aac"

# 4
# Session 10009 - Build a workout app for Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10009/4/C77618B9-A832-406C-89F0-933F2139F0AD/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10009 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10009/4/C77618B9-A832-406C-89F0-933F2139F0AD/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10009 temp.aac"
ffmpeg -i "Session - 10009 temp.mp4" -i "Session - 10009 temp.aac" -c copy "Session 10009 - Build a workout app for Apple Watch (1440p).mp4"
rm "Session - 10009 temp.mp4"
rm "Session - 10009 temp.aac"

# 5
# Session 10037 - Build dynamic iOS apps with the Create ML framework
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10037/3/4705B592-C85E-4872-A252-5C377A1022D6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10037 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10037/3/4705B592-C85E-4872-A252-5C377A1022D6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10037 temp.aac"
ffmpeg -i "Session - 10037 temp.mp4" -i "Session - 10037 temp.aac" -c copy "Session 10037 - Build dynamic iOS apps with the Create ML framework (1440p).mp4"
rm "Session - 10037 temp.mp4"
rm "Session - 10037 temp.aac"

# 6
# Session 10196 - Build interfaces with style
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10196/7/D9910EC1-1CF4-47F0-B7CD-5D5CEE199F0D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10196 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10196/7/D9910EC1-1CF4-47F0-B7CD-5D5CEE199F0D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10196 temp.aac"
ffmpeg -i "Session - 10196 temp.mp4" -i "Session - 10196 temp.aac" -c copy "Session 10196 - Build interfaces with style (1440p).mp4"
rm "Session - 10196 temp.mp4"
rm "Session - 10196 temp.aac"

# 7
# Session 10013 - Build light and fast App Clips
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10013/5/F623A344-AF7B-44AF-89A0-DF275CE40E7A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10013 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10013/5/F623A344-AF7B-44AF-89A0-DF275CE40E7A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10013 temp.aac"
ffmpeg -i "Session - 10013 temp.mp4" -i "Session - 10013 temp.aac" -c copy "Session 10013 - Build light and fast App Clips (1440p).mp4"
rm "Session - 10013 temp.mp4"
rm "Session - 10013 temp.aac"

# 8
# Session 10160 - Capture and process ProRAW images
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10160/6/08FEC739-8354-4B2F-B06F-F7F8FCD5E6ED/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10160 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10160/6/08FEC739-8354-4B2F-B06F-F7F8FCD5E6ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10160 temp.aac"
ffmpeg -i "Session - 10160 temp.mp4" -i "Session - 10160 temp.aac" -c copy "Session 10160 - Capture and process ProRAW images (1440p).mp4"
rm "Session - 10160 temp.mp4"
rm "Session - 10160 temp.aac"

# 9
# Session 10039 - Classify hand poses and actions with Create ML
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10039/6/21ABF0C5-D90C-4198-9791-027910A0EE4A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10039 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10039/6/21ABF0C5-D90C-4198-9791-027910A0EE4A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10039 temp.aac"
ffmpeg -i "Session - 10039 temp.mp4" -i "Session - 10039 temp.aac" -c copy "Session 10039 - Classify hand poses and actions with Create ML (1440p).mp4"
rm "Session - 10039 temp.mp4"
rm "Session - 10039 temp.aac"

# 10
# Session 10225 - Coordinate media experiences with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10225/3/2E1829B4-1726-4DB1-8211-63F39B0080EF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10225 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10225/3/2E1829B4-1726-4DB1-8211-63F39B0080EF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10225 temp.aac"
ffmpeg -i "Session - 10225 temp.mp4" -i "Session - 10225 temp.aac" -c copy "Session 10225 - Coordinate media experiences with Group Activities (1440p).mp4"
rm "Session - 10225 temp.mp4"
rm "Session - 10225 temp.aac"

# 11
# Session 10223 - Create accessible experiences for watchOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10223/6/F4C83469-5B64-46D0-9FC6-F2EC7AC47414/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10223 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10223/6/F4C83469-5B64-46D0-9FC6-F2EC7AC47414/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10223 temp.aac"
ffmpeg -i "Session - 10223 temp.mp4" -i "Session - 10223 temp.aac" -c copy "Session 10223 - Create accessible experiences for watchOS (1440p).mp4"
rm "Session - 10223 temp.mp4"
rm "Session - 10223 temp.aac"

# 12
# Session 10190 - Create audio drivers with DriverKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10190/5/C1305D2C-3534-4C07-A3D7-3A70DA9FCAE2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10190 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10190/5/C1305D2C-3534-4C07-A3D7-3A70DA9FCAE2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10190 temp.aac"
ffmpeg -i "Session - 10190 temp.mp4" -i "Session - 10190 temp.aac" -c copy "Session 10190 - Create audio drivers with DriverKit (1440p).mp4"
rm "Session - 10190 temp.mp4"
rm "Session - 10190 temp.aac"

# 13
# Session 10250 - Create custom symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10250/5/0F96BECB-C142-4BA8-8CEA-5EE69F7BF77E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10250 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10250/5/0F96BECB-C142-4BA8-8CEA-5EE69F7BF77E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10250 temp.aac"
ffmpeg -i "Session - 10250 temp.mp4" -i "Session - 10250 temp.aac" -c copy "Session 10250 - Create custom symbols (1440p).mp4"
rm "Session - 10250 temp.mp4"
rm "Session - 10250 temp.aac"

# 14
# Session 10063 - Customize and resize sheets in UIKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10063/8/0D794296-1707-4A1D-8CBB-B2CAFEA82AAC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10063 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10063/8/0D794296-1707-4A1D-8CBB-B2CAFEA82AAC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10063 temp.aac"
ffmpeg -i "Session - 10063 temp.mp4" -i "Session - 10063 temp.aac" -c copy "Session 10063 - Customize and resize sheets in UIKit (1440p).mp4"
rm "Session - 10063 temp.mp4"
rm "Session - 10063 temp.aac"

# 15
# Session 10269 - Customize your advanced Xcode Cloud workflows
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10269/3/CA083488-C662-4ADA-8BA2-89647472F1C9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10269 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10269/3/CA083488-C662-4ADA-8BA2-89647472F1C9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10269 temp.aac"
ffmpeg -i "Session - 10269 temp.mp4" -i "Session - 10269 temp.aac" -c copy "Session 10269 - Customize your advanced Xcode Cloud workflows (1440p).mp4"
rm "Session - 10269 temp.mp4"
rm "Session - 10269 temp.aac"

# 16
# Session 10022 - Demystify SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10022/7/72A67717-944A-4D86-BFDD-D1B307C722EC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10022 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10022/7/72A67717-944A-4D86-BFDD-D1B307C722EC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10022 temp.aac"
ffmpeg -i "Session - 10022 temp.mp4" -i "Session - 10022 temp.aac" -c copy "Session 10022 - Demystify SwiftUI (1440p).mp4"
rm "Session - 10022 temp.mp4"
rm "Session - 10022 temp.aac"

# 17
# Session 10283 - Design great actions for Shortcuts, Siri, and Suggestions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10283/6/870EDB46-506F-4A85-83FE-8B90CA8A2C92/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10283 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10283/6/870EDB46-506F-4A85-83FE-8B90CA8A2C92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10283 temp.aac"
ffmpeg -i "Session - 10283 temp.mp4" -i "Session - 10283 temp.aac" -c copy "Session 10283 - Design great actions for Shortcuts, Siri, and Suggestions (1440p).mp4"
rm "Session - 10283 temp.mp4"
rm "Session - 10283 temp.aac"

# 18
# Session 10040 - Detect people, faces, and poses using Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10040/3/F855147A-D789-4E63-81CE-5050A5A3DB14/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10040 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10040/3/F855147A-D789-4E63-81CE-5050A5A3DB14/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10040 temp.aac"
ffmpeg -i "Session - 10040 temp.mp4" -i "Session - 10040 temp.aac" -c copy "Session 10040 - Detect people, faces, and poses using Vision (1440p).mp4"
rm "Session - 10040 temp.mp4"
rm "Session - 10040 temp.aac"

# 19
# Session 10087 - Diagnose Power and Performance regressions in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10087/6/35272A76-3FD8-4149-B4C9-B7C0AA197E61/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10087 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10087/6/35272A76-3FD8-4149-B4C9-B7C0AA197E61/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10087 temp.aac"
ffmpeg -i "Session - 10087 temp.mp4" -i "Session - 10087 temp.aac" -c copy "Session 10087 - Diagnose Power and Performance regressions in your app (1440p).mp4"
rm "Session - 10087 temp.mp4"
rm "Session - 10087 temp.aac"

# 20
# Session 10136 - Discover account-driven User Enrollment
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10136/6/8CF389C4-8FA9-4A14-A76E-B5B75AE9D4D8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10136 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10136/6/8CF389C4-8FA9-4A14-A76E-B5B75AE9D4D8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10136 temp.aac"
ffmpeg -i "Session - 10136 temp.mp4" -i "Session - 10136 temp.aac" -c copy "Session 10136 - Discover account-driven User Enrollment (1440p).mp4"
rm "Session - 10136 temp.mp4"
rm "Session - 10136 temp.aac"

# 21
# Session 10019 - Discover concurrency in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10019/6/97B7FCAB-AC78-4A0D-8F28-C5C7AE8C339C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10019 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10019/6/97B7FCAB-AC78-4A0D-8F28-C5C7AE8C339C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10019 temp.aac"
ffmpeg -i "Session - 10019 temp.mp4" -i "Session - 10019 temp.aac" -c copy "Session 10019 - Discover concurrency in SwiftUI (1440p).mp4"
rm "Session - 10019 temp.mp4"
rm "Session - 10019 temp.aac"

# 22
# Session 10079 - Discover geometry-aware audio with the Physical Audio Spatialization Engine (PHASE)
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10079/4/B49836DD-46CA-49CD-81CF-9D08B251FDFA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10079 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10079/4/B49836DD-46CA-49CD-81CF-9D08B251FDFA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10079 temp.aac"
ffmpeg -i "Session - 10079 temp.mp4" -i "Session - 10079 temp.aac" -c copy "Session 10079 - Discover geometry-aware audio with the Physical Audio Spatialization Engine (PHASE) (1440p).mp4"
rm "Session - 10079 temp.mp4"
rm "Session - 10079 temp.aac"

# 23
# Session 10157 - Discover Metal debugging, profiling, and asset creation tools
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10157/5/7C79C8DE-984A-4BD6-904D-3FCDFF5432CC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10157 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10157/5/7C79C8DE-984A-4BD6-904D-3FCDFF5432CC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10157 temp.aac"
ffmpeg -i "Session - 10157 temp.mp4" -i "Session - 10157 temp.aac" -c copy "Session 10157 - Discover Metal debugging, profiling, and asset creation tools (1440p).mp4"
rm "Session - 10157 temp.mp4"
rm "Session - 10157 temp.aac"

# 24
# Session 10126 - Discoverable design
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10126/6/D50196B9-76AA-4E8D-9E0B-69DE03F58EFC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10126 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10126/6/D50196B9-76AA-4E8D-9E0B-69DE03F58EFC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10126 temp.aac"
ffmpeg -i "Session - 10126 temp.mp4" -i "Session - 10126 temp.aac" -c copy "Session 10126 - Discoverable design (1440p).mp4"
rm "Session - 10126 temp.mp4"
rm "Session - 10126 temp.aac"

# 25
# Session 10167 - Elevate your DocC documentation in Xcode
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10167/4/AEC81BAD-B21A-40F5-A726-C53C1185192A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10167 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10167/4/AEC81BAD-B21A-40F5-A726-C53C1185192A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10167 temp.aac"
ffmpeg -i "Session - 10167 temp.mp4" -i "Session - 10167 temp.aac" -c copy "Session 10167 - Elevate your DocC documentation in Xcode (1440p).mp4"
rm "Session - 10167 temp.mp4"
rm "Session - 10167 temp.aac"

# 26
# Session 10145 - Evaluate videos with the Advanced Video Quality Tool
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10145/4/FFBDCD0F-8B65-4D91-A05A-1501F7494854/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10145 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10145/4/FFBDCD0F-8B65-4D91-A05A-1501F7494854/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10145 temp.aac"
ffmpeg -i "Session - 10145 temp.mp4" -i "Session - 10145 temp.aac" -c copy "Session 10145 - Evaluate videos with the Advanced Video Quality Tool (1440p).mp4"
rm "Session - 10145 temp.mp4"
rm "Session - 10145 temp.aac"

# 27
# Session 10075 - Explore advanced rendering with RealityKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10075/6/81A03814-3C6E-4B82-A5BB-92160CD0EF78/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10075 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10075/6/81A03814-3C6E-4B82-A5BB-92160CD0EF78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10075 temp.aac"
ffmpeg -i "Session - 10075 temp.mp4" -i "Session - 10075 temp.aac" -c copy "Session 10075 - Explore advanced rendering with RealityKit 2 (1440p).mp4"
rm "Session - 10075 temp.mp4"
rm "Session - 10075 temp.aac"

# 28
# Session 10159 - Explore Core Image kernel improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10159/4/40A32E20-B4FF-4586-9C5B-1994F3A585A2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10159 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10159/4/40A32E20-B4FF-4586-9C5B-1994F3A585A2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10159 temp.aac"
ffmpeg -i "Session - 10159 temp.mp4" -i "Session - 10159 temp.aac" -c copy "Session 10159 - Explore Core Image kernel improvements (1440p).mp4"
rm "Session - 10159 temp.mp4"
rm "Session - 10159 temp.aac"

# 29
# Session 10140 - Explore dynamic pre-rolls and mid-rolls in HLS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10140/15/4961CE04-6EAD-4B07-BD40-70010F74EF0D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10140 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10140/15/4961CE04-6EAD-4B07-BD40-70010F74EF0D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10140 temp.aac"
ffmpeg -i "Session - 10140 temp.mp4" -i "Session - 10140 temp.aac" -c copy "Session 10140 - Explore dynamic pre-rolls and mid-rolls in HLS (1440p).mp4"
rm "Session - 10140 temp.mp4"
rm "Session - 10140 temp.aac"

# 30
# Session 10158 - Explore low-latency video encoding with VideoToolbox
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10158/4/1A6010D5-5911-425C-96D0-DAA26DBE60C0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10158 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10158/4/1A6010D5-5911-425C-96D0-DAA26DBE60C0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10158 temp.aac"
ffmpeg -i "Session - 10158 temp.mp4" -i "Session - 10158 temp.aac" -c copy "Session 10158 - Explore low-latency video encoding with VideoToolbox (1440p).mp4"
rm "Session - 10158 temp.mp4"
rm "Session - 10158 temp.aac"

# 31
# Session 10027 - Explore Safari Web Extension improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10027/10/09685846-0B04-4BFA-968E-000447422A11/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10027 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10027/10/09685846-0B04-4BFA-968E-000447422A11/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10027 temp.aac"
ffmpeg -i "Session - 10027 temp.mp4" -i "Session - 10027 temp.aac" -c copy "Session 10027 - Explore Safari Web Extension improvements (1440p).mp4"
rm "Session - 10027 temp.mp4"
rm "Session - 10027 temp.aac"

# 32
# Session 10291 - Explore the catalog with the Apple Music API
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10291/3/F3E513AE-7D59-4677-BA86-19148C5DE3E4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10291 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10291/3/F3E513AE-7D59-4677-BA86-19148C5DE3E4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10291 temp.aac"
ffmpeg -i "Session - 10291 temp.mp4" -i "Session - 10291 temp.aac" -c copy "Session 10291 - Explore the catalog with the Apple Music API (1440p).mp4"
rm "Session - 10291 temp.mp4"
rm "Session - 10291 temp.aac"

# 33
# Session 10288 - Explore the SF Symbols 3 app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10288/4/48BB2A1D-31BF-4E09-90DF-2FC4669B3946/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10288 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10288/4/48BB2A1D-31BF-4E09-90DF-2FC4669B3946/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10288 temp.aac"
ffmpeg -i "Session - 10288 temp.mp4" -i "Session - 10288 temp.aac" -c copy "Session 10288 - Explore the SF Symbols 3 app (1440p).mp4"
rm "Session - 10288 temp.mp4"
rm "Session - 10288 temp.aac"

# 34
# Session 10084 - Explore UWB-based car keys
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10084/5/A04EAA26-0290-4D04-A0AE-46D70D7E2B00/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10084 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10084/5/A04EAA26-0290-4D04-A0AE-46D70D7E2B00/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10084 temp.aac"
ffmpeg -i "Session - 10084 temp.mp4" -i "Session - 10084 temp.aac" -c copy "Session 10084 - Explore UWB-based car keys (1440p).mp4"
rm "Session - 10084 temp.mp4"
rm "Session - 10084 temp.aac"

# 35
# Session 10032 - Explore WKWebView additions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10032/4/BF2DECD6-BD90-4253-9082-6F2FC912788C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10032 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10032/4/BF2DECD6-BD90-4253-9082-6F2FC912788C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10032 temp.aac"
ffmpeg -i "Session - 10032 temp.mp4" -i "Session - 10032 temp.aac" -c copy "Session 10032 - Explore WKWebView additions (1440p).mp4"
rm "Session - 10032 temp.mp4"
rm "Session - 10032 temp.aac"

# 36
# Session 10295 - Get ready to optimize your App Store product page
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10295/5/83EA0FCB-2A53-4C0B-97D4-37C69079C264/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10295 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10295/5/83EA0FCB-2A53-4C0B-97D4-37C69079C264/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10295 temp.aac"
ffmpeg -i "Session - 10295 temp.mp4" -i "Session - 10295 temp.aac" -c copy "Session 10295 - Get ready to optimize your App Store product page (1440p).mp4"
rm "Session - 10295 temp.mp4"
rm "Session - 10295 temp.aac"

# 37
# Session 10141 - Improve global streaming availability with HLS Content Steering
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10141/4/E5EA0996-E08C-4259-B644-23C1F47B339A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10141 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10141/4/E5EA0996-E08C-4259-B644-23C1F47B339A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10141 temp.aac"
ffmpeg -i "Session - 10141 temp.mp4" -i "Session - 10141 temp.aac" -c copy "Session 10141 - Improve global streaming availability with HLS Content Steering (1440p).mp4"
rm "Session - 10141 temp.mp4"
rm "Session - 10141 temp.aac"

# 38
# Session 10252 - Make blazing fast lists and collection views
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10252/5/B37B6913-C7C8-49EA-982E-9D10AC147454/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10252 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10252/5/B37B6913-C7C8-49EA-982E-9D10AC147454/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10252 temp.aac"
ffmpeg -i "Session - 10252 temp.mp4" -i "Session - 10252 temp.aac" -c copy "Session 10252 - Make blazing fast lists and collection views (1440p).mp4"
rm "Session - 10252 temp.mp4"
rm "Session - 10252 temp.aac"

# 39
# Session 10297 - Manage devices with Apple Configurator
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10297/5/42EFFB92-E098-4A61-AC2C-F645C909C1EE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10297 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10297/5/42EFFB92-E098-4A61-AC2C-F645C909C1EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10297 temp.aac"
ffmpeg -i "Session - 10297 temp.mp4" -i "Session - 10297 temp.aac" -c copy "Session 10297 - Manage devices with Apple Configurator (1440p).mp4"
rm "Session - 10297 temp.mp4"
rm "Session - 10297 temp.aac"

# 40
# Session 10174 - Manage in-app purchases on your server
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10174/3/CF8F96B8-0719-405C-815A-25E67736D5F4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10174 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10174/3/CF8F96B8-0719-405C-815A-25E67736D5F4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10174 temp.aac"
ffmpeg -i "Session - 10174 temp.mp4" -i "Session - 10174 temp.aac" -c copy "Session 10174 - Manage in-app purchases on your server (1440p).mp4"
rm "Session - 10174 temp.mp4"
rm "Session - 10174 temp.aac"

# 41
# Session 10287 - Measure health with motion
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10287/5/C117695D-C24C-4B2E-B6A4-C87244FC08AC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10287 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10287/5/C117695D-C24C-4B2E-B6A4-C87244FC08AC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10287 temp.aac"
ffmpeg -i "Session - 10287 temp.mp4" -i "Session - 10287 temp.aac" -c copy "Session 10287 - Measure health with motion (1440p).mp4"
rm "Session - 10287 temp.mp4"
rm "Session - 10287 temp.aac"

# 42
# Session 10058 - Meet AsyncSequence
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10058/5/A934E650-C91D-4C63-AC83-A8980D052B5B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10058 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10058/5/A934E650-C91D-4C63-AC83-A8980D052B5B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10058 temp.aac"
ffmpeg -i "Session - 10058 temp.mp4" -i "Session - 10058 temp.aac" -c copy "Session 10058 - Meet AsyncSequence (1440p).mp4"
rm "Session - 10058 temp.mp4"
rm "Session - 10058 temp.aac"

# 43
# Session 10061 - Meet TextKit 2
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10061/4/D12F25A4-D409-4DDA-9DCF-72C97E9875C3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10061 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10061/4/D12F25A4-D409-4DDA-9DCF-72C97E9875C3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10061 temp.aac"
ffmpeg -i "Session - 10061 temp.mp4" -i "Session - 10061 temp.aac" -c copy "Session 10061 - Meet TextKit 2 (1440p).mp4"
rm "Session - 10061 temp.mp4"
rm "Session - 10061 temp.aac"

# 44
# Session 10102 - Meet the Location Button
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10102/10/F5A7B735-EFE5-4520-AA23-9624428F33D1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10102 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10102/10/F5A7B735-EFE5-4520-AA23-9624428F33D1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10102 temp.aac"
ffmpeg -i "Session - 10102 temp.mp4" -i "Session - 10102 temp.aac" -c copy "Session 10102 - Meet the Location Button (1440p).mp4"
rm "Session - 10102 temp.mp4"
rm "Session - 10102 temp.aac"

# 45
# Session 10256 - Meet the Swift Algorithms and Collections packages
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10256/8/389DAED7-3871-4195-95B0-59E7F10A5E52/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10256 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10256/8/389DAED7-3871-4195-95B0-59E7F10A5E52/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10256 temp.aac"
ffmpeg -i "Session - 10256 temp.mp4" -i "Session - 10256 temp.aac" -c copy "Session 10256 - Meet the Swift Algorithms and Collections packages (1440p).mp4"
rm "Session - 10256 temp.mp4"
rm "Session - 10256 temp.aac"

# 46
# Session 10106 - Move beyond passwords
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10106/5/CAC0BED2-732C-431A-9764-DA6A1206FE0E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10106 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10106/5/CAC0BED2-732C-431A-9764-DA6A1206FE0E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10106 temp.aac"
ffmpeg -i "Session - 10106 temp.mp4" -i "Session - 10106 temp.aac" -c copy "Session 10106 - Move beyond passwords (1440p).mp4"
rm "Session - 10106 temp.mp4"
rm "Session - 10106 temp.aac"

# 47
# Session 10053 - Qualities of a great Mac Catalyst app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10053/3/2422D003-327B-45A7-95E1-047C49B735B3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10053 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10053/3/2422D003-327B-45A7-95E1-047C49B735B3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10053 temp.aac"
ffmpeg -i "Session - 10053 temp.mp4" -i "Session - 10053 temp.aac" -c copy "Session 10053 - Qualities of a great Mac Catalyst app (1440p).mp4"
rm "Session - 10053 temp.mp4"
rm "Session - 10053 temp.aac"

# 48
# Session 10056 - Qualities of great iPad and iPhone apps on Macs with M1
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10056/3/6A9E120D-9217-4F54-98A5-853D65EDBCDE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10056 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10056/3/6A9E120D-9217-4F54-98A5-853D65EDBCDE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10056 temp.aac"
ffmpeg -i "Session - 10056 temp.mp4" -i "Session - 10056 temp.aac" -c copy "Session 10056 - Qualities of great iPad and iPhone apps on Macs with M1 (1440p).mp4"
rm "Session - 10056 temp.mp4"
rm "Session - 10056 temp.aac"

# 49
# Session 10205 - Review code and collaborate in Xcode 
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10205/4/0DD5750D-A4F4-4874-B97B-645E68C35FA2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10205 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10205/4/0DD5750D-A4F4-4874-B97B-645E68C35FA2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10205 temp.aac"
ffmpeg -i "Session - 10205 temp.mp4" -i "Session - 10205 temp.aac" -c copy "Session 10205 - Review code and collaborate in Xcode  (1440p).mp4"
rm "Session - 10205 temp.mp4"
rm "Session - 10205 temp.aac"

# 50
# Session 10105 - Secure login with iCloud Keychain verification codes
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10105/7/67ECEEA8-4F59-4C40-BE4E-5C45EBDCE158/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10105 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10105/7/67ECEEA8-4F59-4C40-BE4E-5C45EBDCE158/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10105 temp.aac"
ffmpeg -i "Session - 10105 temp.mp4" -i "Session - 10105 temp.aac" -c copy "Session 10105 - Secure login with iCloud Keychain verification codes (1440p).mp4"
rm "Session - 10105 temp.mp4"
rm "Session - 10105 temp.aac"

# 51
# Session 10091 - Send communication and Time Sensitive notifications
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10091/4/A4152468-BE8D-45E4-BB60-043AC7854981/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10091 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10091/4/A4152468-BE8D-45E4-BB60-043AC7854981/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10091 temp.aac"
ffmpeg -i "Session - 10091 temp.mp4" -i "Session - 10091 temp.aac" -c copy "Session 10091 - Send communication and Time Sensitive notifications (1440p).mp4"
rm "Session - 10091 temp.mp4"
rm "Session - 10091 temp.aac"

# 52
# Session 10349 - SF Symbols in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10349/4/5C81F023-9887-405D-AF78-7FBD8FACEDEF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10349 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10349/4/5C81F023-9887-405D-AF78-7FBD8FACEDEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10349 temp.aac"
ffmpeg -i "Session - 10349 temp.mp4" -i "Session - 10349 temp.aac" -c copy "Session 10349 - SF Symbols in SwiftUI (1440p).mp4"
rm "Session - 10349 temp.mp4"
rm "Session - 10349 temp.aac"

# 53
# Session 10251 - SF Symbols in UIKit and AppKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10251/8/1F3B1961-5626-4737-BFCB-442B8F6A6CC3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10251 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10251/8/1F3B1961-5626-4737-BFCB-442B8F6A6CC3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10251 temp.aac"
ffmpeg -i "Session - 10251 temp.mp4" -i "Session - 10251 temp.aac" -c copy "Session 10251 - SF Symbols in UIKit and AppKit (1440p).mp4"
rm "Session - 10251 temp.mp4"
rm "Session - 10251 temp.aac"

# 54
# Session 10098 - Showcase app data in Spotlight
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10098/5/E1444CD9-0588-4D3B-8AFA-EB590BA9CD23/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10098 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10098/5/E1444CD9-0588-4D3B-8AFA-EB590BA9CD23/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10098 temp.aac"
ffmpeg -i "Session - 10098 temp.mp4" -i "Session - 10098 temp.aac" -c copy "Session 10098 - Showcase app data in Spotlight (1440p).mp4"
rm "Session - 10098 temp.mp4"
rm "Session - 10098 temp.aac"

# 55
# Session 10194 - Swift concurrency: Update a sample app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10194/5/52969D90-7481-457A-A1E2-AA89E1D04D6F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10194 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10194/5/52969D90-7481-457A-A1E2-AA89E1D04D6F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10194 temp.aac"
ffmpeg -i "Session - 10194 temp.mp4" -i "Session - 10194 temp.aac" -c copy "Session 10194 - Swift concurrency - Update a sample app (1440p).mp4"
rm "Session - 10194 temp.mp4"
rm "Session - 10194 temp.aac"

# 56
# Session 10119 - SwiftUI Accessibility: Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10119/6/A3AEB1E4-C4E9-43B4-9EF6-206F6B9704E6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10119 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10119/6/A3AEB1E4-C4E9-43B4-9EF6-206F6B9704E6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10119 temp.aac"
ffmpeg -i "Session - 10119 temp.mp4" -i "Session - 10119 temp.aac" -c copy "Session 10119 - SwiftUI Accessibility - Beyond the basics (1440p).mp4"
rm "Session - 10119 temp.mp4"
rm "Session - 10119 temp.aac"

# 57
# Session 10211 - Symbolication: Beyond the basics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10211/3/3450A29E-DC2D-49D5-9D68-5E053CC5EC9D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10211 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10211/3/3450A29E-DC2D-49D5-9D68-5E053CC5EC9D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10211 temp.aac"
ffmpeg -i "Session - 10211 temp.mp4" -i "Session - 10211 temp.aac" -c copy "Session 10211 - Symbolication - Beyond the basics (1440p).mp4"
rm "Session - 10211 temp.mp4"
rm "Session - 10211 temp.aac"

# 58
# Session 10203 - Triage TestFlight crashes in Xcode Organizer
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10203/7/1A8E1E96-00E5-4E9C-B392-6A2AE2AED9ED/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10203 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10203/7/1A8E1E96-00E5-4E9C-B392-6A2AE2AED9ED/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10203 temp.aac"
ffmpeg -i "Session - 10203 temp.mp4" -i "Session - 10203 temp.aac" -c copy "Session 10203 - Triage TestFlight crashes in Xcode Organizer (1440p).mp4"
rm "Session - 10203 temp.mp4"
rm "Session - 10203 temp.aac"

# 59
# Session 10095 - Use async/await with URLSession
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10095/7/2F07E69A-1CEF-4F48-9C63-E35F5DF4FBF7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10095 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10095/7/2F07E69A-1CEF-4F48-9C63-E35F5DF4FBF7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10095 temp.aac"
ffmpeg -i "Session - 10095 temp.mp4" -i "Session - 10095 temp.aac" -c copy "Session 10095 - Use async-await with URLSession (1440p).mp4"
rm "Session - 10095 temp.mp4"
rm "Session - 10095 temp.aac"

# 60
# Session 10052 - What's new in Mac Catalyst
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10052/3/AEC7031C-E8E6-4F09-B845-F0DE96310C4D/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10052 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10052/3/AEC7031C-E8E6-4F09-B845-F0DE96310C4D/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10052 temp.aac"
ffmpeg -i "Session - 10052 temp.mp4" -i "Session - 10052 temp.aac" -c copy "Session 10052 - What's new in Mac Catalyst (1440p).mp4"
rm "Session - 10052 temp.mp4"
rm "Session - 10052 temp.aac"

# 61
# Session 10092 - What's new in Wallet and Apple Pay
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10092/4/60CA3CE3-F906-4071-B3BD-1216A6A64CB4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10092 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10092/4/60CA3CE3-F906-4071-B3BD-1216A6A64CB4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10092 temp.aac"
ffmpeg -i "Session - 10092 temp.mp4" -i "Session - 10092 temp.aac" -c copy "Session 10092 - What's new in Wallet and Apple Pay (1440p).mp4"
rm "Session - 10092 temp.mp4"
rm "Session - 10092 temp.aac"

# 62
# Session 10047 - What’s new in camera capture
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10047/3/642D1BFE-7823-4CA8-8572-B2478B9C4B44/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10047 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10047/3/642D1BFE-7823-4CA8-8572-B2478B9C4B44/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10047 temp.aac"
ffmpeg -i "Session - 10047 temp.mp4" -i "Session - 10047 temp.aac" -c copy "Session 10047 - What’s new in camera capture (1440p).mp4"
rm "Session - 10047 temp.mp4"
rm "Session - 10047 temp.aac"

# 63
# Session 10097 - What’s new in SF Symbols
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10097/5/4D377285-9082-4F13-8F15-EBCD0A938E8C/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10097 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10097/5/4D377285-9082-4F13-8F15-EBCD0A938E8C/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10097 temp.aac"
ffmpeg -i "Session - 10097 temp.mp4" -i "Session - 10097 temp.aac" -c copy "Session 10097 - What’s new in SF Symbols (1440p).mp4"
rm "Session - 10097 temp.mp4"
rm "Session - 10097 temp.aac"

# 64
# Session 10308 - Accessibility by design: An Apple Watch for everyone
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10308/18/BA664ADF-042F-4084-8565-61FC83578C92/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10308 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10308/18/BA664ADF-042F-4084-8565-61FC83578C92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10308 temp.aac"
ffmpeg -i "Session - 10308 temp.mp4" -i "Session - 10308 temp.aac" -c copy "Session 10308 - Accessibility by design - An Apple Watch for everyone (1440p).mp4"
rm "Session - 10308 temp.mp4"
rm "Session - 10308 temp.aac"
