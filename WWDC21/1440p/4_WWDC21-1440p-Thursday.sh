# Script to download Thursday's WWDC 21 session videos in the highest 1440p video and audio
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
# Session 10298 - Add support for Matter in your smart home app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10298/8/B4998783-FC66-455C-9469-213C69446C72/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10298 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10298/8/B4998783-FC66-455C-9469-213C69446C72/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10298 temp.aac"
ffmpeg -i "Session - 10298 temp.mp4" -i "Session - 10298 temp.aac" -c copy "Session 10298 - Add support for Matter in your smart home app (1440p).mp4"
rm "Session - 10298 temp.mp4"
rm "Session - 10298 temp.aac"

# 2
# Session 10204 - Distribute apps in Xcode with cloud signing
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10204/4/CF00E449-A95A-4F82-8CCF-DF5B980665A5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10204 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10204/4/CF00E449-A95A-4F82-8CCF-DF5B980665A5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10204 temp.aac"
ffmpeg -i "Session - 10204 temp.mp4" -i "Session - 10204 temp.aac" -c copy "Session 10204 - Distribute apps in Xcode with cloud signing (1440p).mp4"
rm "Session - 10204 temp.mp4"
rm "Session - 10204 temp.aac"

# 3
# Session 10017 - Bring Core Data concurrency to Swift and SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10017/4/F075C8AE-C8D2-40F9-8520-018581E3A771/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10017 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10017/4/F075C8AE-C8D2-40F9-8520-018581E3A771/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10017 temp.aac"
ffmpeg -i "Session - 10017 temp.mp4" -i "Session - 10017 temp.aac" -c copy "Session 10017 - Bring Core Data concurrency to Swift and SwiftUI (1440p).mp4"
rm "Session - 10017 temp.mp4"
rm "Session - 10017 temp.aac"

# 4
# Session 10258 - Understand and eliminate hangs from your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10258/4/ADC12B98-365A-47E7-9A42-952847271DEF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10258 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10258/4/ADC12B98-365A-47E7-9A42-952847271DEF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10258 temp.aac"
ffmpeg -i "Session - 10258 temp.mp4" -i "Session - 10258 temp.aac" -c copy "Session 10258 - Understand and eliminate hangs from your app (1440p).mp4"
rm "Session - 10258 temp.mp4"
rm "Session - 10258 temp.aac"

# 5
# Session 10073 - Explore ARKit 5
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10073/7/53148F9F-7E28-46AA-AD05-CC2ABEC68EDC/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10073 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10073/7/53148F9F-7E28-46AA-AD05-CC2ABEC68EDC/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10073 temp.aac"
ffmpeg -i "Session - 10073 temp.mp4" -i "Session - 10073 temp.aac" -c copy "Session 10073 - Explore ARKit 5 (1440p).mp4"
rm "Session - 10073 temp.mp4"
rm "Session - 10073 temp.aac"

# 6
# Session 10168 - Build Mail app extensions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10168/10/DB697C64-E7F4-431F-BA61-53827D49FC36/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10168 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10168/10/DB697C64-E7F4-431F-BA61-53827D49FC36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10168 temp.aac"
ffmpeg -i "Session - 10168 temp.mp4" -i "Session - 10168 temp.aac" -c copy "Session 10168 - Build Mail app extensions (1440p).mp4"
rm "Session - 10168 temp.mp4"
rm "Session - 10168 temp.aac"

# 7
# Session 10041 - Extract document data using Vision
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10041/6/1CB4D0E9-CCA8-4C66-80DA-5887CF8F06C5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10041 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10041/6/1CB4D0E9-CCA8-4C66-80DA-5887CF8F06C5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10041 temp.aac"
ffmpeg -i "Session - 10041 temp.mp4" -i "Session - 10041 temp.aac" -c copy "Session 10041 - Extract document data using Vision (1440p).mp4"
rm "Session - 10041 temp.mp4"
rm "Session - 10041 temp.aac"

# 8
# Session 10191 - Deliver a great playback experience on tvOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10191/4/E98B040E-0A40-48C3-85D2-F7F18715F00F/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10191 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10191/4/E98B040E-0A40-48C3-85D2-F7F18715F00F/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10191 temp.aac"
ffmpeg -i "Session - 10191 temp.mp4" -i "Session - 10191 temp.aac" -c copy "Session 10191 - Deliver a great playback experience on tvOS (1440p).mp4"
rm "Session - 10191 temp.mp4"
rm "Session - 10191 temp.aac"

# 9
# Session 10220 - Localize your SwiftUI app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10220/6/3866585A-3920-44B4-AB3F-03A446FCDE3A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10220 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10220/6/3866585A-3920-44B4-AB3F-03A446FCDE3A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10220 temp.aac"
ffmpeg -i "Session - 10220 temp.mp4" -i "Session - 10220 temp.aac" -c copy "Session 10220 - Localize your SwiftUI app (1440p).mp4"
rm "Session - 10220 temp.mp4"
rm "Session - 10220 temp.aac"

# 10
# Session 10180 - Detect and diagnose memory issues
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10180/5/0CD6241A-4A02-4CD3-9885-93ABE0FD4981/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10180 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10180/5/0CD6241A-4A02-4CD3-9885-93ABE0FD4981/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10180 temp.aac"
ffmpeg -i "Session - 10180 temp.mp4" -i "Session - 10180 temp.aac" -c copy "Session 10180 - Detect and diagnose memory issues (1440p).mp4"
rm "Session - 10180 temp.mp4"
rm "Session - 10180 temp.aac"

# 11
# Session 10033 - Meet privacy-preserving ad attribution
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10033/6/E381AF60-070C-4A7D-A135-386670DC7053/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10033 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10033/6/E381AF60-070C-4A7D-A135-386670DC7053/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10033 temp.aac"
ffmpeg -i "Session - 10033 temp.mp4" -i "Session - 10033 temp.aac" -c copy "Session 10033 - Meet privacy-preserving ad attribution (1440p).mp4"
rm "Session - 10033 temp.mp4"
rm "Session - 10033 temp.aac"

# 12
# Session 10023 - Direct and reflect focus in SwiftUI
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10023/5/ED227AE3-34ED-45F7-BB9D-7E4F06876C3B/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10023 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10023/5/ED227AE3-34ED-45F7-BB9D-7E4F06876C3B/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10023 temp.aac"
ffmpeg -i "Session - 10023 temp.mp4" -i "Session - 10023 temp.aac" -c copy "Session 10023 - Direct and reflect focus in SwiftUI (1440p).mp4"
rm "Session - 10023 temp.mp4"
rm "Session - 10023 temp.aac"

# 13
# Session 10175 - Support customers and handle refunds
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10175/5/AC32E663-B4D3-4BFF-B370-D1511009CCCB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10175 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10175/5/AC32E663-B4D3-4BFF-B370-D1511009CCCB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10175 temp.aac"
ffmpeg -i "Session - 10175 temp.mp4" -i "Session - 10175 temp.aac" -c copy "Session 10175 - Support customers and handle refunds (1440p).mp4"
rm "Session - 10175 temp.mp4"
rm "Session - 10175 temp.aac"

# 14
# Session 10101 - Discover rolling clips with ReplayKit
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10101/7/50A5D34B-6D32-429A-B737-D3C0C9EB58B8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10101 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10101/7/50A5D34B-6D32-429A-B737-D3C0C9EB58B8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10101 temp.aac"
ffmpeg -i "Session - 10101 temp.mp4" -i "Session - 10101 temp.aac" -c copy "Session 10101 - Discover rolling clips with ReplayKit (1440p).mp4"
rm "Session - 10101 temp.mp4"
rm "Session - 10101 temp.aac"

# 15
# Session 10182 - Sync files to the cloud with FileProvider on macOS
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10182/5/9EA118F5-E717-489F-816F-8BF659B0D8AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10182 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10182/5/9EA118F5-E717-489F-816F-8BF659B0D8AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10182 temp.aac"
ffmpeg -i "Session - 10182 temp.mp4" -i "Session - 10182 temp.aac" -c copy "Session 10182 - Sync files to the cloud with FileProvider on macOS (1440p).mp4"
rm "Session - 10182 temp.mp4"
rm "Session - 10182 temp.aac"

# 16
# Session 10231 - Donate intents and expand your app’s presence
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10231/3/E4613D08-78BF-4C2F-AE4E-E1A4B7A68D78/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10231 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10231/3/E4613D08-78BF-4C2F-AE4E-E1A4B7A68D78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10231 temp.aac"
ffmpeg -i "Session - 10231 temp.mp4" -i "Session - 10231 temp.aac" -c copy "Session 10231 - Donate intents and expand your app’s presence (1440p).mp4"
rm "Session - 10231 temp.mp4"
rm "Session - 10231 temp.aac"

# 17
# Session 10187 - Build custom experiences with Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10187/3/53AD885C-179C-4013-A2D3-D985CE932C87/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10187 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10187/3/53AD885C-179C-4013-A2D3-D985CE932C87/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10187 temp.aac"
ffmpeg -i "Session - 10187 temp.mp4" -i "Session - 10187 temp.aac" -c copy "Session 10187 - Build custom experiences with Group Activities (1440p).mp4"
rm "Session - 10187 temp.mp4"
rm "Session - 10187 temp.aac"

# 18
# Session 10115 - What's new in App Analytics
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10115/3/E7E6A158-C193-43E7-9C20-5CA614ED768E/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10115 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10115/3/E7E6A158-C193-43E7-9C20-5CA614ED768E/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10115 temp.aac"
ffmpeg -i "Session - 10115 temp.mp4" -i "Session - 10115 temp.aac" -c copy "Session 10115 - What's new in App Analytics (1440p).mp4"
rm "Session - 10115 temp.mp4"
rm "Session - 10115 temp.aac"

# 19
# Session 10208 - Explore Digital Crown, Trackpad, and iPad pointer automation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10208/7/D03FEAA6-4A84-48E0-BC4B-0B194701D23A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10208 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10208/7/D03FEAA6-4A84-48E0-BC4B-0B194701D23A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10208 temp.aac"
ffmpeg -i "Session - 10208 temp.mp4" -i "Session - 10208 temp.aac" -c copy "Session 10208 - Explore Digital Crown, Trackpad, and iPad pointer automation (1440p).mp4"
rm "Session - 10208 temp.mp4"
rm "Session - 10208 temp.aac"

# 20
# Session 10247 - Capture high-quality photos using video formats
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10247/10/1D70E20D-6FE1-4770-9932-4BC4F4C4F7BA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10247 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10247/10/1D70E20D-6FE1-4770-9932-4BC4F4C4F7BA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10247 temp.aac"
ffmpeg -i "Session - 10247 temp.mp4" -i "Session - 10247 temp.aac" -c copy "Session 10247 - Capture high-quality photos using video formats (1440p).mp4"
rm "Session - 10247 temp.mp4"
rm "Session - 10247 temp.aac"

# 21
# Session 10046 - Improve access to Photos in your app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10046/3/9D12DB10-3776-4369-BF86-964B98D2C082/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10046 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10046/3/9D12DB10-3776-4369-BF86-964B98D2C082/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10046 temp.aac"
ffmpeg -i "Session - 10046 temp.mp4" -i "Session - 10046 temp.aac" -c copy "Session 10046 - Improve access to Photos in your app (1440p).mp4"
rm "Session - 10046 temp.mp4"
rm "Session - 10046 temp.aac"

# 22
# Session 10184 - Design for Group Activities
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10184/8/29115819-C262-4945-BC6F-4DE0655DC0DF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10184 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10184/8/29115819-C262-4945-BC6F-4DE0655DC0DF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10184 temp.aac"
ffmpeg -i "Session - 10184 temp.mp4" -i "Session - 10184 temp.aac" -c copy "Session 10184 - Design for Group Activities (1440p).mp4"
rm "Session - 10184 temp.mp4"
rm "Session - 10184 temp.aac"

# 23
# Session 10129 - Manage software updates in your organization
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10129/6/7E46C26F-2722-4ABF-88BF-38CDBDC23E26/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10129 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10129/6/7E46C26F-2722-4ABF-88BF-38CDBDC23E26/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10129 temp.aac"
ffmpeg -i "Session - 10129 temp.mp4" -i "Session - 10129 temp.aac" -c copy "Session 10129 - Manage software updates in your organization (1440p).mp4"
rm "Session - 10129 temp.mp4"
rm "Session - 10129 temp.aac"

# 24
# Session 10030 - Develop advanced web content
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10030/8/09E3E250-3136-4428-BC4F-F7891EDC76AF/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10030 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10030/8/09E3E250-3136-4428-BC4F-F7891EDC76AF/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10030 temp.aac"
ffmpeg -i "Session - 10030 temp.mp4" -i "Session - 10030 temp.aac" -c copy "Session 10030 - Develop advanced web content (1440p).mp4"
rm "Session - 10030 temp.mp4"
rm "Session - 10030 temp.aac"

# 25
# Session 10148 - Optimize high-end games for Apple GPUs
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10148/8/2E6A96C2-2CC3-4852-A318-C5F493B55EC6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10148 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10148/8/2E6A96C2-2CC3-4852-A318-C5F493B55EC6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10148 temp.aac"
ffmpeg -i "Session - 10148 temp.mp4" -i "Session - 10148 temp.aac" -c copy "Session 10148 - Optimize high-end games for Apple GPUs (1440p).mp4"
rm "Session - 10148 temp.mp4"
rm "Session - 10148 temp.aac"

# 26
# Session 10197 - Discover and curate Swift Packages using Collections
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10197/5/4B9FBC81-D676-431E-934C-6DD3EE985C64/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10197 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10197/5/4B9FBC81-D676-431E-934C-6DD3EE985C64/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10197 temp.aac"
ffmpeg -i "Session - 10197 temp.mp4" -i "Session - 10197 temp.aac" -c copy "Session 10197 - Discover and curate Swift Packages using Collections (1440p).mp4"
rm "Session - 10197 temp.mp4"
rm "Session - 10197 temp.aac"

# 27
# Session 10120 - Support Full Keyboard Access in your iOS app
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10120/11/284E99F6-0E62-4027-AE02-86A26EEBEC07/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10120 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10120/11/284E99F6-0E62-4027-AE02-86A26EEBEC07/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10120 temp.aac"
ffmpeg -i "Session - 10120 temp.mp4" -i "Session - 10120 temp.aac" -c copy "Session 10120 - Support Full Keyboard Access in your iOS app (1440p).mp4"
rm "Session - 10120 temp.mp4"
rm "Session - 10120 temp.aac"

# 28
# Session 10031 - Discover Web Inspector improvements
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10031/10/44412231-AD6C-40B4-8253-43BC3EEBC768/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10031 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10031/10/44412231-AD6C-40B4-8253-43BC3EEBC768/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10031 temp.aac"
ffmpeg -i "Session - 10031 temp.mp4" -i "Session - 10031 temp.aac" -c copy "Session 10031 - Discover Web Inspector improvements (1440p).mp4"
rm "Session - 10031 temp.mp4"
rm "Session - 10031 temp.aac"

# 29
# Session 10118 - Automate CloudKit tests with cktool and declarative schema
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10118/4/9B80307B-4AD2-499D-81D9-ABD4D94DFE78/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10118 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10118/4/9B80307B-4AD2-499D-81D9-ABD4D94DFE78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10118 temp.aac"
ffmpeg -i "Session - 10118 temp.mp4" -i "Session - 10118 temp.aac" -c copy "Session 10118 - Automate CloudKit tests with cktool and declarative schema (1440p).mp4"
rm "Session - 10118 temp.mp4"
rm "Session - 10118 temp.aac"

# 30
# Session 10003 - There and back again - Data transfer on Apple Watch
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10003/7/2AE1FFC2-BFF3-43AC-9488-AA5514C204FB/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10003 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10003/7/2AE1FFC2-BFF3-43AC-9488-AA5514C204FB/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10003 temp.aac"
ffmpeg -i "Session - 10003 temp.mp4" -i "Session - 10003 temp.aac" -c copy "Session 10003 - There and back again - Data transfer on Apple Watch (1440p).mp4"
rm "Session - 10003 temp.mp4"
rm "Session - 10003 temp.aac"

# 31
# Session 10207 - Embrace Expected Failures in XCTest
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10207/5/1AF9A073-9D29-4091-9876-AE8868480EDA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10207 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10207/5/1AF9A073-9D29-4091-9876-AE8868480EDA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10207 temp.aac"
ffmpeg -i "Session - 10207 temp.mp4" -i "Session - 10207 temp.aac" -c copy "Session 10207 - Embrace Expected Failures in XCTest (1440p).mp4"
rm "Session - 10207 temp.mp4"
rm "Session - 10207 temp.aac"

# 32
# Session 10235 - Build interactive tutorials using DocC
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10235/6/D2C51374-4073-4A41-97CB-4217A096F2B3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10235 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10235/6/D2C51374-4073-4A41-97CB-4217A096F2B3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10235 temp.aac"
ffmpeg -i "Session - 10235 temp.mp4" -i "Session - 10235 temp.aac" -c copy "Session 10235 - Build interactive tutorials using DocC (1440p).mp4"
rm "Session - 10235 temp.mp4"
rm "Session - 10235 temp.aac"

# 33
# Session 10146 - What’s new in AVFoundation
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10146/5/DB6BBE8F-5AF9-4331-BF7B-F8DF5AC43A92/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10146 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10146/5/DB6BBE8F-5AF9-4331-BF7B-F8DF5AC43A92/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10146 temp.aac"
ffmpeg -i "Session - 10146 temp.mp4" -i "Session - 10146 temp.aac" -c copy "Session 10146 - What’s new in AVFoundation (1440p).mp4"
rm "Session - 10146 temp.mp4"
rm "Session - 10146 temp.aac"

# 34
# Session 10161 - Explore HDR rendering with EDR
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10161/5/A571AEFA-117F-4E9C-B4A0-C4543637CBFA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10161 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10161/5/A571AEFA-117F-4E9C-B4A0-C4543637CBFA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10161 temp.aac"
ffmpeg -i "Session - 10161 temp.mp4" -i "Session - 10161 temp.aac" -c copy "Session 10161 - Explore HDR rendering with EDR (1440p).mp4"
rm "Session - 10161 temp.mp4"
rm "Session - 10161 temp.aac"

# 35
# Session 10153 - Create image processing apps powered by Apple Silicon
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10153/4/F8C484C1-A0A2-4377-992B-313BEB320A28/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10153 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10153/4/F8C484C1-A0A2-4377-992B-313BEB320A28/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10153 temp.aac"
ffmpeg -i "Session - 10153 temp.mp4" -i "Session - 10153 temp.aac" -c copy "Session 10153 - Create image processing apps powered by Apple Silicon (1440p).mp4"
rm "Session - 10153 temp.mp4"
rm "Session - 10153 temp.aac"

# 36
# Session 10137 - Improve MDM assignment of Apps and Books
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10137/7/FB724053-0CDB-4228-A9A7-CA326DC41FBE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10137 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10137/7/FB724053-0CDB-4228-A9A7-CA326DC41FBE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10137 temp.aac"
ffmpeg -i "Session - 10137 temp.mp4" -i "Session - 10137 temp.aac" -c copy "Session 10137 - Improve MDM assignment of Apps and Books (1440p).mp4"
rm "Session - 10137 temp.mp4"
rm "Session - 10137 temp.aac"

# 37
# Session 10245 - Design for spatial interaction
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10245/8/3C4EE68C-F0FF-4ECE-ADF0-6419DCDE9C00/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10245 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10245/8/3C4EE68C-F0FF-4ECE-ADF0-6419DCDE9C00/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10245 temp.aac"
ffmpeg -i "Session - 10245 temp.mp4" -i "Session - 10245 temp.aac" -c copy "Session 10245 - Design for spatial interaction (1440p).mp4"
rm "Session - 10245 temp.mp4"
rm "Session - 10245 temp.aac"

# 38
# Session 10257 - Meet ClassKit for file-based apps
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10257/6/1A9F8965-41D7-4A10-A0B1-36FE84E977EE/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10257 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10257/6/1A9F8965-41D7-4A10-A0B1-36FE84E977EE/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10257 temp.aac"
ffmpeg -i "Session - 10257 temp.mp4" -i "Session - 10257 temp.aac" -c copy "Session 10257 - Meet ClassKit for file-based apps (1440p).mp4"
rm "Session - 10257 temp.mp4"
rm "Session - 10257 temp.aac"

# 39
# Session 10296 - Diagnose unreliable code with test repetitions
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10296/6/FE383085-9A76-432B-B78A-FF8149F81733/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10296 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10296/6/FE383085-9A76-432B-B78A-FF8149F81733/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10296 temp.aac"
ffmpeg -i "Session - 10296 temp.mp4" -i "Session - 10296 temp.aac" -c copy "Session 10296 - Diagnose unreliable code with test repetitions (1440p).mp4"
rm "Session - 10296 temp.mp4"
rm "Session - 10296 temp.aac"

# 40
# Session 10048 - Principles of great widgets
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10048/6/DE8F1516-0148-4630-A824-44F1BA28F5AA/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10048 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10048/6/DE8F1516-0148-4630-A824-44F1BA28F5AA/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10048 temp.aac"
ffmpeg -i "Session - 10048 temp.mp4" -i "Session - 10048 temp.aac" -c copy "Session 10048 - Principles of great widgets (1440p).mp4"
rm "Session - 10048 temp.mp4"
rm "Session - 10048 temp.aac"

# 41
# Session 10229 - Discover compilation workflows in Metal
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10229/3/B5993DB1-3978-4019-B109-364AE2E6F14A/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10229 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10229/3/B5993DB1-3978-4019-B109-364AE2E6F14A/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10229 temp.aac"
ffmpeg -i "Session - 10229 temp.mp4" -i "Session - 10229 temp.aac" -c copy "Session 10229 - Discover compilation workflows in Metal (1440p).mp4"
rm "Session - 10229 temp.mp4"
rm "Session - 10229 temp.aac"

# 42
# Session 10254 - Swift concurrency - Behind the scenes
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10254/4/528331E5-D153-47F1-81E3-247B1A78A930/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 10254 temp.mp4"
ffmpeg -i https://devstreaming-cdn.apple.com/videos/wwdc/2021/10254/4/528331E5-D153-47F1-81E3-247B1A78A930/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 10254 temp.aac"
ffmpeg -i "Session - 10254 temp.mp4" -i "Session - 10254 temp.aac" -c copy "Session 10254 - Swift concurrency - Behind the scenes (1440p).mp4"
rm "Session - 10254 temp.mp4"
rm "Session - 10254 temp.aac"
