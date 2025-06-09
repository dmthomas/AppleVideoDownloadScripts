
# 1
# Session 324 - Automate your development process with the App Store Connect API
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/324/4/73f2b9d1-c998-4828-a323-9613bc559bd3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 324 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/324/4/73f2b9d1-c998-4828-a323-9613bc559bd3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 324 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/324/4/73f2b9d1-c998-4828-a323-9613bc559bd3/subtitles/eng/prog_index.m3u8 -c copy "Session - 324 temp.vtt"
ffmpeg -i "Session - 324 temp.mp4" -i "Session - 324 temp.aac" -i "Session - 324 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 324 - Automate your development process with the App Store Connect API (1440p).mp4"
rm "Session - 324 temp.vtt"
rm "Session - 324 temp.mp4"
rm "Session - 324 temp.aac"

# 2
# Session 274 - Better together - SwiftUI and RealityKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/274/4/af6a131e-f3ee-4d68-8371-4f52e9c4a3d6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 274 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/274/4/af6a131e-f3ee-4d68-8371-4f52e9c4a3d6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 274 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/274/4/af6a131e-f3ee-4d68-8371-4f52e9c4a3d6/subtitles/eng/prog_index.m3u8 -c copy "Session - 274 temp.vtt"
ffmpeg -i "Session - 274 temp.mp4" -i "Session - 274 temp.aac" -i "Session - 274 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 274 - Better together - SwiftUI and RealityKit (1440p).mp4"
rm "Session - 274 temp.vtt"
rm "Session - 274 temp.mp4"
rm "Session - 274 temp.aac"

# 3
# Session 277 - Bring advanced speech-to-text to your app with SpeechAnalyzer
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/277/4/9eedc53d-668f-48f3-9cca-4f2530bbb2ce/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 277 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/277/4/9eedc53d-668f-48f3-9cca-4f2530bbb2ce/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 277 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/277/4/9eedc53d-668f-48f3-9cca-4f2530bbb2ce/subtitles/eng/prog_index.m3u8 -c copy "Session - 277 temp.vtt"
ffmpeg -i "Session - 277 temp.mp4" -i "Session - 277 temp.aac" -i "Session - 277 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 277 - Bring advanced speech-to-text to your app with SpeechAnalyzer (1440p).mp4"
rm "Session - 277 temp.vtt"
rm "Session - 277 temp.mp4"
rm "Session - 277 temp.aac"

# 4
# Session 313 - Bring Swift Charts to the third dimension
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/313/5/01490c3f-6737-43db-b2fb-f3ccfb1e824c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 313 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/313/5/01490c3f-6737-43db-b2fb-f3ccfb1e824c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 313 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/313/5/01490c3f-6737-43db-b2fb-f3ccfb1e824c/subtitles/eng/prog_index.m3u8 -c copy "Session - 313 temp.vtt"
ffmpeg -i "Session - 313 temp.mp4" -i "Session - 313 temp.aac" -i "Session - 313 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 313 - Bring Swift Charts to the third dimension (1440p).mp4"
rm "Session - 313 temp.vtt"
rm "Session - 313 temp.mp4"
rm "Session - 313 temp.aac"

# 5
# Session 288 - Bring your SceneKit project to RealityKit 
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/288/5/810e7d3c-54d7-43e5-82ba-d0f45b804193/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 288 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/288/5/810e7d3c-54d7-43e5-82ba-d0f45b804193/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 288 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/288/5/810e7d3c-54d7-43e5-82ba-d0f45b804193/subtitles/eng/prog_index.m3u8 -c copy "Session - 288 temp.vtt"
ffmpeg -i "Session - 288 temp.mp4" -i "Session - 288 temp.aac" -i "Session - 288 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 288 - Bring your SceneKit project to RealityKit  (1440p).mp4"
rm "Session - 288 temp.vtt"
rm "Session - 288 temp.mp4"
rm "Session - 288 temp.aac"

# 6
# Session 323 - Build a SwiftUI app with the new design
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/323/4/0fd37581-632a-4827-b656-d192163cece0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 323 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/323/4/0fd37581-632a-4827-b656-d192163cece0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 323 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/323/4/0fd37581-632a-4827-b656-d192163cece0/subtitles/eng/prog_index.m3u8 -c copy "Session - 323 temp.vtt"
ffmpeg -i "Session - 323 temp.mp4" -i "Session - 323 temp.aac" -i "Session - 323 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 323 - Build a SwiftUI app with the new design (1440p).mp4"
rm "Session - 323 temp.vtt"
rm "Session - 323 temp.mp4"
rm "Session - 323 temp.aac"

# 7
# Session 284 - Build a UIKit app with the new design
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/284/4/afb20876-65b2-4aeb-bd50-66e4df1b2281/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 284 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/284/4/afb20876-65b2-4aeb-bd50-66e4df1b2281/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 284 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/284/4/afb20876-65b2-4aeb-bd50-66e4df1b2281/subtitles/eng/prog_index.m3u8 -c copy "Session - 284 temp.vtt"
ffmpeg -i "Session - 284 temp.mp4" -i "Session - 284 temp.aac" -i "Session - 284 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 284 - Build a UIKit app with the new design (1440p).mp4"
rm "Session - 284 temp.vtt"
rm "Session - 284 temp.mp4"
rm "Session - 284 temp.aac"

# 8
# Session 310 - Build an AppKit app with the new design
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/310/5/97dc5fb5-f986-4d12-beb4-c3a389390d36/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 310 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/310/5/97dc5fb5-f986-4d12-beb4-c3a389390d36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 310 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/310/5/97dc5fb5-f986-4d12-beb4-c3a389390d36/subtitles/eng/prog_index.m3u8 -c copy "Session - 310 temp.vtt"
ffmpeg -i "Session - 310 temp.mp4" -i "Session - 310 temp.aac" -i "Session - 310 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 310 - Build an AppKit app with the new design (1440p).mp4"
rm "Session - 310 temp.vtt"
rm "Session - 310 temp.mp4"
rm "Session - 310 temp.aac"

# 9
# Session 319 - Capture cinematic video in your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/319/4/55797f51-c074-44e8-85fe-5aaa0780ba91/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 319 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/319/4/55797f51-c074-44e8-85fe-5aaa0780ba91/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 319 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/319/4/55797f51-c074-44e8-85fe-5aaa0780ba91/subtitles/eng/prog_index.m3u8 -c copy "Session - 319 temp.vtt"
ffmpeg -i "Session - 319 temp.mp4" -i "Session - 319 temp.aac" -i "Session - 319 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 319 - Capture cinematic video in your app (1440p).mp4"
rm "Session - 319 temp.vtt"
rm "Session - 319 temp.mp4"
rm "Session - 319 temp.aac"

# 10
# Session 259 - Code-along - Bring on-device AI to your app using the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/259/5/907f1051-5d00-46a2-bc67-53764270104f/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 259 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/259/5/907f1051-5d00-46a2-bc67-53764270104f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 259 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/259/5/907f1051-5d00-46a2-bc67-53764270104f/subtitles/eng/prog_index.m3u8 -c copy "Session - 259 temp.vtt"
ffmpeg -i "Session - 259 temp.mp4" -i "Session - 259 temp.aac" -i "Session - 259 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 259 - Code-along - Bring on-device AI to your app using the Foundation Models framework (1440p).mp4"
rm "Session - 259 temp.vtt"
rm "Session - 259 temp.mp4"
rm "Session - 259 temp.aac"

# 11
# Session 280 - Code-along - Cook up a rich text experience in SwiftUI with AttributedString
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/280/5/3596f3d4-e661-4414-a6ba-79128adcc8e6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 280 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/280/5/3596f3d4-e661-4414-a6ba-79128adcc8e6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 280 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/280/5/3596f3d4-e661-4414-a6ba-79128adcc8e6/subtitles/eng/prog_index.m3u8 -c copy "Session - 280 temp.vtt"
ffmpeg -i "Session - 280 temp.mp4" -i "Session - 280 temp.aac" -i "Session - 280 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 280 - Code-along - Cook up a rich text experience in SwiftUI with AttributedString (1440p).mp4"
rm "Session - 280 temp.vtt"
rm "Session - 280 temp.mp4"
rm "Session - 280 temp.aac"

# 12
# Session 270 - Code-along - Elevate an app with Swift concurrency
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/270/4/fec27360-7913-4e07-8025-e80187a8d00a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 270 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/270/4/fec27360-7913-4e07-8025-e80187a8d00a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 270 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/270/4/fec27360-7913-4e07-8025-e80187a8d00a/subtitles/eng/prog_index.m3u8 -c copy "Session - 270 temp.vtt"
ffmpeg -i "Session - 270 temp.mp4" -i "Session - 270 temp.aac" -i "Session - 270 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 270 - Code-along - Elevate an app with Swift concurrency (1440p).mp4"
rm "Session - 270 temp.vtt"
rm "Session - 270 temp.mp4"
rm "Session - 270 temp.aac"

# 13
# Session 225 - Code-along - Explore localization with Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/225/5/24973a20-a8c9-4ec6-ad29-6adfde87ea5c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 225 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/225/5/24973a20-a8c9-4ec6-ad29-6adfde87ea5c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 225 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/225/5/24973a20-a8c9-4ec6-ad29-6adfde87ea5c/subtitles/eng/prog_index.m3u8 -c copy "Session - 225 temp.vtt"
ffmpeg -i "Session - 225 temp.mp4" -i "Session - 225 temp.aac" -i "Session - 225 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 225 - Code-along - Explore localization with Xcode (1440p).mp4"
rm "Session - 225 temp.vtt"
rm "Session - 225 temp.mp4"
rm "Session - 225 temp.aac"

# 14
# Session 262 - Combine Metal 4 machine learning and graphics
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/262/4/bd3b9963-4a16-4a43-8b3d-e7f17cb31f3c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 262 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/262/4/bd3b9963-4a16-4a43-8b3d-e7f17cb31f3c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 262 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/262/4/bd3b9963-4a16-4a43-8b3d-e7f17cb31f3c/subtitles/eng/prog_index.m3u8 -c copy "Session - 262 temp.vtt"
ffmpeg -i "Session - 262 temp.mp4" -i "Session - 262 temp.aac" -i "Session - 262 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 262 - Combine Metal 4 machine learning and graphics (1440p).mp4"
rm "Session - 262 temp.vtt"
rm "Session - 262 temp.mp4"
rm "Session - 262 temp.aac"

# 15
# Session 302 - Create a seamless multiview playback experience
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/302/5/87e78c55-cb0a-4d6f-9567-bc3f91ecb747/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 302 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/302/5/87e78c55-cb0a-4d6f-9567-bc3f91ecb747/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 302 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/302/5/87e78c55-cb0a-4d6f-9567-bc3f91ecb747/subtitles/eng/prog_index.m3u8 -c copy "Session - 302 temp.vtt"
ffmpeg -i "Session - 302 temp.mp4" -i "Session - 302 temp.aac" -i "Session - 302 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 302 - Create a seamless multiview playback experience (1440p).mp4"
rm "Session - 302 temp.vtt"
rm "Session - 302 temp.mp4"
rm "Session - 302 temp.aac"

# 16
# Session 361 - Create icons with Icon Composer
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/361/4/cb0f14cc-9cef-42f7-a4bb-26e8c751691a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 361 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/361/4/cb0f14cc-9cef-42f7-a4bb-26e8c751691a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 361 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/361/4/cb0f14cc-9cef-42f7-a4bb-26e8c751691a/subtitles/eng/prog_index.m3u8 -c copy "Session - 361 temp.vtt"
ffmpeg -i "Session - 361 temp.mp4" -i "Session - 361 temp.aac" -i "Session - 361 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 361 - Create icons with Icon Composer (1440p).mp4"
rm "Session - 361 temp.vtt"
rm "Session - 361 temp.mp4"
rm "Session - 361 temp.aac"

# 17
# Session 238 - Customize your app for Assistive Access
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/238/4/a553c517-f6ca-46e7-b339-36e971996e78/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 238 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/238/4/a553c517-f6ca-46e7-b339-36e971996e78/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 238 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/238/4/a553c517-f6ca-46e7-b339-36e971996e78/subtitles/eng/prog_index.m3u8 -c copy "Session - 238 temp.vtt"
ffmpeg -i "Session - 238 temp.mp4" -i "Session - 238 temp.aac" -i "Session - 238 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 238 - Customize your app for Assistive Access (1440p).mp4"
rm "Session - 238 temp.vtt"
rm "Session - 238 temp.mp4"
rm "Session - 238 temp.aac"

# 18
# Session 301 - Deep dive into the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/301/4/955589c1-ae33-47db-9e86-2b87311dedb5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 301 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/301/4/955589c1-ae33-47db-9e86-2b87311dedb5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 301 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/301/4/955589c1-ae33-47db-9e86-2b87311dedb5/subtitles/eng/prog_index.m3u8 -c copy "Session - 301 temp.vtt"
ffmpeg -i "Session - 301 temp.mp4" -i "Session - 301 temp.aac" -i "Session - 301 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 301 - Deep dive into the Foundation Models framework (1440p).mp4"
rm "Session - 301 temp.vtt"
rm "Session - 301 temp.mp4"
rm "Session - 301 temp.aac"

# 19
# Session 299 - Deliver age-appropriate experiences in your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/299/4/ffa39510-a851-4af3-9584-7e37abdfc5bf/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 299 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/299/4/ffa39510-a851-4af3-9584-7e37abdfc5bf/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 299 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/299/4/ffa39510-a851-4af3-9584-7e37abdfc5bf/subtitles/eng/prog_index.m3u8 -c copy "Session - 299 temp.vtt"
ffmpeg -i "Session - 299 temp.mp4" -i "Session - 299 temp.aac" -i "Session - 299 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 299 - Deliver age-appropriate experiences in your app (1440p).mp4"
rm "Session - 299 temp.vtt"
rm "Session - 299 temp.mp4"
rm "Session - 299 temp.aac"

# 20
# Session 359 - Design foundations from idea to interface
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/359/4/5ad3ea3a-0dda-4b07-bdc3-c638d2a8f709/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 359 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/359/4/5ad3ea3a-0dda-4b07-bdc3-c638d2a8f709/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 359 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/359/4/5ad3ea3a-0dda-4b07-bdc3-c638d2a8f709/subtitles/eng/prog_index.m3u8 -c copy "Session - 359 temp.vtt"
ffmpeg -i "Session - 359 temp.mp4" -i "Session - 359 temp.aac" -i "Session - 359 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 359 - Design foundations from idea to interface (1440p).mp4"
rm "Session - 359 temp.vtt"
rm "Session - 359 temp.mp4"
rm "Session - 359 temp.aac"

# 21
# Session 303 - Design hover interactions for visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/303/4/e69ceb99-2702-4bcc-a24d-6b8b2d37ccff/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 303 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/303/4/e69ceb99-2702-4bcc-a24d-6b8b2d37ccff/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 303 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/303/4/e69ceb99-2702-4bcc-a24d-6b8b2d37ccff/subtitles/eng/prog_index.m3u8 -c copy "Session - 303 temp.vtt"
ffmpeg -i "Session - 303 temp.mp4" -i "Session - 303 temp.aac" -i "Session - 303 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 303 - Design hover interactions for visionOS (1440p).mp4"
rm "Session - 303 temp.vtt"
rm "Session - 303 temp.mp4"
rm "Session - 303 temp.aac"

# 22
# Session 281 - Design interactive snippets
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/281/4/b85a7a8d-4835-4c00-b931-c7a7bdec6dd3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 281 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/281/4/b85a7a8d-4835-4c00-b931-c7a7bdec6dd3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 281 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/281/4/b85a7a8d-4835-4c00-b931-c7a7bdec6dd3/subtitles/eng/prog_index.m3u8 -c copy "Session - 281 temp.vtt"
ffmpeg -i "Session - 281 temp.mp4" -i "Session - 281 temp.aac" -i "Session - 281 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 281 - Design interactive snippets (1440p).mp4"
rm "Session - 281 temp.vtt"
rm "Session - 281 temp.mp4"
rm "Session - 281 temp.aac"

# 23
# Session 255 - Design widgets for visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/255/7/af349b4f-e1db-4adc-a446-d92c8942a7c1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 255 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/255/7/af349b4f-e1db-4adc-a446-d92c8942a7c1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 255 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/255/7/af349b4f-e1db-4adc-a446-d92c8942a7c1/subtitles/eng/prog_index.m3u8 -c copy "Session - 255 temp.vtt"
ffmpeg -i "Session - 255 temp.mp4" -i "Session - 255 temp.aac" -i "Session - 255 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 255 - Design widgets for visionOS (1440p).mp4"
rm "Session - 255 temp.vtt"
rm "Session - 255 temp.mp4"
rm "Session - 255 temp.aac"

# 24
# Session 260 - Develop for Shortcuts and Spotlight with App Intents
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/260/8/8d3b0b9e-3bdb-4661-b333-069c3612b565/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 260 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/260/8/8d3b0b9e-3bdb-4661-b333-069c3612b565/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 260 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/260/8/8d3b0b9e-3bdb-4661-b333-069c3612b565/subtitles/eng/prog_index.m3u8 -c copy "Session - 260 temp.vtt"
ffmpeg -i "Session - 260 temp.mp4" -i "Session - 260 temp.aac" -i "Session - 260 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 260 - Develop for Shortcuts and Spotlight with App Intents (1440p).mp4"
rm "Session - 260 temp.vtt"
rm "Session - 260 temp.mp4"
rm "Session - 260 temp.aac"

# 25
# Session 325 - Discover Apple-Hosted Background Assets
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/325/6/cda561c7-42e2-4bcb-a7a2-e52259a23c5d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 325 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/325/6/cda561c7-42e2-4bcb-a7a2-e52259a23c5d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 325 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/325/6/cda561c7-42e2-4bcb-a7a2-e52259a23c5d/subtitles/eng/prog_index.m3u8 -c copy "Session - 325 temp.vtt"
ffmpeg -i "Session - 325 temp.mp4" -i "Session - 325 temp.aac" -i "Session - 325 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 325 - Discover Apple-Hosted Background Assets (1440p).mp4"
rm "Session - 325 temp.vtt"
rm "Session - 325 temp.mp4"
rm "Session - 325 temp.aac"

# 26
# Session 360 - Discover machine learning & AI frameworks on Apple platforms
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/360/5/ea6bc2a8-c1b8-4735-857d-4526abe1348a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 360 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/360/5/ea6bc2a8-c1b8-4735-857d-4526abe1348a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 360 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/360/5/ea6bc2a8-c1b8-4735-857d-4526abe1348a/subtitles/eng/prog_index.m3u8 -c copy "Session - 360 temp.vtt"
ffmpeg -i "Session - 360 temp.mp4" -i "Session - 360 temp.aac" -i "Session - 360 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 360 - Discover machine learning & AI frameworks on Apple platforms (1440p).mp4"
rm "Session - 360 temp.vtt"
rm "Session - 360 temp.mp4"
rm "Session - 360 temp.aac"

# 27
# Session 205 - Discover Metal 4
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/205/4/0ac6aec9-0d2d-43b7-915a-1910976268f3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 205 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/205/4/0ac6aec9-0d2d-43b7-915a-1910976268f3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 205 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/205/4/0ac6aec9-0d2d-43b7-915a-1910976268f3/subtitles/eng/prog_index.m3u8 -c copy "Session - 205 temp.vtt"
ffmpeg -i "Session - 205 temp.mp4" -i "Session - 205 temp.aac" -i "Session - 205 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 205 - Discover Metal 4 (1440p).mp4"
rm "Session - 205 temp.vtt"
rm "Session - 205 temp.mp4"
rm "Session - 205 temp.aac"

# 28
# Session 265 - Dive deeper into Writing Tools
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/265/4/65bf71d2-6fef-47fe-8239-405d7ad9db8d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 265 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/265/4/65bf71d2-6fef-47fe-8239-405d7ad9db8d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 265 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/265/4/65bf71d2-6fef-47fe-8239-405d7ad9db8d/subtitles/eng/prog_index.m3u8 -c copy "Session - 265 temp.vtt"
ffmpeg -i "Session - 265 temp.mp4" -i "Session - 265 temp.aac" -i "Session - 265 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 265 - Dive deeper into Writing Tools (1440p).mp4"
rm "Session - 265 temp.vtt"
rm "Session - 265 temp.mp4"
rm "Session - 265 temp.aac"

# 29
# Session 249 - Dive into App Store server APIs for In-App Purchase
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/249/4/7efe7148-7440-40ff-a24c-becb06197f36/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 249 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/249/4/7efe7148-7440-40ff-a24c-becb06197f36/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 249 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/249/4/7efe7148-7440-40ff-a24c-becb06197f36/subtitles/eng/prog_index.m3u8 -c copy "Session - 249 temp.vtt"
ffmpeg -i "Session - 249 temp.mp4" -i "Session - 249 temp.aac" -i "Session - 249 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 249 - Dive into App Store server APIs for In-App Purchase (1440p).mp4"
rm "Session - 249 temp.vtt"
rm "Session - 249 temp.mp4"
rm "Session - 249 temp.aac"

# 30
# Session 208 - Elevate the design of your iPad app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/208/5/09c21eb9-8870-421d-af8e-7f152020b87b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 208 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/208/5/09c21eb9-8870-421d-af8e-7f152020b87b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 208 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/208/5/09c21eb9-8870-421d-af8e-7f152020b87b/subtitles/eng/prog_index.m3u8 -c copy "Session - 208 temp.vtt"
ffmpeg -i "Session - 208 temp.mp4" -i "Session - 208 temp.aac" -i "Session - 208 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 208 - Elevate the design of your iPad app (1440p).mp4"
rm "Session - 208 temp.vtt"
rm "Session - 208 temp.mp4"
rm "Session - 208 temp.aac"

# 31
# Session 268 - Embracing Swift concurrency
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/268/4/9de10aea-96a5-468d-a7b9-211a8f9b2d0a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 268 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/268/4/9de10aea-96a5-468d-a7b9-211a8f9b2d0a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 268 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/268/4/9de10aea-96a5-468d-a7b9-211a8f9b2d0a/subtitles/eng/prog_index.m3u8 -c copy "Session - 268 temp.vtt"
ffmpeg -i "Session - 268 temp.mp4" -i "Session - 268 temp.aac" -i "Session - 268 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 268 - Embracing Swift concurrency (1440p).mp4"
rm "Session - 268 temp.vtt"
rm "Session - 268 temp.mp4"
rm "Session - 268 temp.aac"

# 32
# Session 215 - Engage players with the Apple Games app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/215/4/e02f5046-a82b-4e61-8d1d-7baaf1c5a28b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 215 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/215/4/e02f5046-a82b-4e61-8d1d-7baaf1c5a28b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 215 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/215/4/e02f5046-a82b-4e61-8d1d-7baaf1c5a28b/subtitles/eng/prog_index.m3u8 -c copy "Session - 215 temp.vtt"
ffmpeg -i "Session - 215 temp.mp4" -i "Session - 215 temp.aac" -i "Session - 215 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 215 - Engage players with the Apple Games app (1440p).mp4"
rm "Session - 215 temp.vtt"
rm "Session - 215 temp.mp4"
rm "Session - 215 temp.aac"

# 33
# Session 293 - Enhance child safety with PermissionKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/293/4/3d149cec-af19-46df-9916-67a21d041047/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 293 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/293/4/3d149cec-af19-46df-9916-67a21d041047/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 293 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/293/4/3d149cec-af19-46df-9916-67a21d041047/subtitles/eng/prog_index.m3u8 -c copy "Session - 293 temp.vtt"
ffmpeg -i "Session - 293 temp.mp4" -i "Session - 293 temp.aac" -i "Session - 293 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 293 - Enhance child safety with PermissionKit (1440p).mp4"
rm "Session - 293 temp.vtt"
rm "Session - 293 temp.mp4"
rm "Session - 293 temp.aac"

# 34
# Session 300 - Enhance your app with machine-learning-based video effects
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/300/4/be89fd99-ba12-4e24-96ed-a626da355488/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 300 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/300/4/be89fd99-ba12-4e24-96ed-a626da355488/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 300 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/300/4/be89fd99-ba12-4e24-96ed-a626da355488/subtitles/eng/prog_index.m3u8 -c copy "Session - 300 temp.vtt"
ffmpeg -i "Session - 300 temp.mp4" -i "Session - 300 temp.aac" -i "Session - 300 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 300 - Enhance your app with machine-learning-based video effects (1440p).mp4"
rm "Session - 300 temp.vtt"
rm "Session - 300 temp.mp4"
rm "Session - 300 temp.aac"

# 35
# Session 251 - Enhance your app’s audio recording capabilities
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/251/4/d14e1f6d-5996-4c7a-8576-c7cb4e6eaf02/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 251 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/251/4/d14e1f6d-5996-4c7a-8576-c7cb4e6eaf02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 251 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/251/4/d14e1f6d-5996-4c7a-8576-c7cb4e6eaf02/subtitles/eng/prog_index.m3u8 -c copy "Session - 251 temp.vtt"
ffmpeg -i "Session - 251 temp.mp4" -i "Session - 251 temp.aac" -i "Session - 251 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 251 - Enhance your app’s audio recording capabilities (1440p).mp4"
rm "Session - 251 temp.vtt"
rm "Session - 251 temp.mp4"
rm "Session - 251 temp.aac"

# 36
# Session 222 - Enhance your app’s multilingual experience
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/222/6/0c2c6210-4f59-409a-ba23-36a7895563d3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 222 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/222/6/0c2c6210-4f59-409a-ba23-36a7895563d3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 222 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/222/6/0c2c6210-4f59-409a-ba23-36a7895563d3/subtitles/eng/prog_index.m3u8 -c copy "Session - 222 temp.vtt"
ffmpeg -i "Session - 222 temp.mp4" -i "Session - 222 temp.aac" -i "Session - 222 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 222 - Enhance your app’s multilingual experience (1440p).mp4"
rm "Session - 222 temp.vtt"
rm "Session - 222 temp.mp4"
rm "Session - 222 temp.aac"

# 37
# Session 253 - Enhancing your camera experience with capture controls
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/253/4/61747dad-b349-43cc-83c6-782e690f2ae1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 253 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/253/4/61747dad-b349-43cc-83c6-782e690f2ae1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 253 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/253/4/61747dad-b349-43cc-83c6-782e690f2ae1/subtitles/eng/prog_index.m3u8 -c copy "Session - 253 temp.vtt"
ffmpeg -i "Session - 253 temp.mp4" -i "Session - 253 temp.aac" -i "Session - 253 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 253 - Enhancing your camera experience with capture controls (1440p).mp4"
rm "Session - 253 temp.vtt"
rm "Session - 253 temp.mp4"
rm "Session - 253 temp.aac"

# 38
# Session 224 - Evaluate your app for Accessibility Nutrition Labels
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/224/5/da32cbb0-5f05-4589-8055-fe7a473056e9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 224 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/224/5/da32cbb0-5f05-4589-8055-fe7a473056e9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 224 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/224/5/da32cbb0-5f05-4589-8055-fe7a473056e9/subtitles/eng/prog_index.m3u8 -c copy "Session - 224 temp.vtt"
ffmpeg -i "Session - 224 temp.mp4" -i "Session - 224 temp.aac" -i "Session - 224 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 224 - Evaluate your app for Accessibility Nutrition Labels (1440p).mp4"
rm "Session - 224 temp.vtt"
rm "Session - 224 temp.mp4"
rm "Session - 224 temp.aac"

# 39
# Session 266 - Explore concurrency in SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/266/7/c7837487-ed14-4560-8c2c-a583596027ca/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 266 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/266/7/c7837487-ed14-4560-8c2c-a583596027ca/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 266 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/266/7/c7837487-ed14-4560-8c2c-a583596027ca/subtitles/eng/prog_index.m3u8 -c copy "Session - 266 temp.vtt"
ffmpeg -i "Session - 266 temp.mp4" -i "Session - 266 temp.aac" -i "Session - 266 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 266 - Explore concurrency in SwiftUI (1440p).mp4"
rm "Session - 266 temp.vtt"
rm "Session - 266 temp.mp4"
rm "Session - 266 temp.aac"

# 40
# Session 223 - Explore enhancements to your spatial business app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/223/4/5af51454-839b-4a10-9b09-2f7018e9e3af/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 223 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/223/4/5af51454-839b-4a10-9b09-2f7018e9e3af/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 223 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/223/4/5af51454-839b-4a10-9b09-2f7018e9e3af/subtitles/eng/prog_index.m3u8 -c copy "Session - 223 temp.vtt"
ffmpeg -i "Session - 223 temp.mp4" -i "Session - 223 temp.aac" -i "Session - 223 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 223 - Explore enhancements to your spatial business app (1440p).mp4"
rm "Session - 223 temp.vtt"
rm "Session - 223 temp.mp4"
rm "Session - 223 temp.aac"

# 41
# Session 298 - Explore large language models on Apple silicon with MLX
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/298/4/fc7619f7-0729-4d62-9a01-ba6020832cb8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 298 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/298/4/fc7619f7-0729-4d62-9a01-ba6020832cb8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 298 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/298/4/fc7619f7-0729-4d62-9a01-ba6020832cb8/subtitles/eng/prog_index.m3u8 -c copy "Session - 298 temp.vtt"
ffmpeg -i "Session - 298 temp.mp4" -i "Session - 298 temp.aac" -i "Session - 298 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 298 - Explore large language models on Apple silicon with MLX (1440p).mp4"
rm "Session - 298 temp.vtt"
rm "Session - 298 temp.mp4"
rm "Session - 298 temp.aac"

# 42
# Session 254 - Explore Metal 4 games
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/254/6/a73ce35f-7f81-4203-9df3-46c48308ca6f/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 254 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/254/6/a73ce35f-7f81-4203-9df3-46c48308ca6f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 254 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/254/6/a73ce35f-7f81-4203-9df3-46c48308ca6f/subtitles/eng/prog_index.m3u8 -c copy "Session - 254 temp.vtt"
ffmpeg -i "Session - 254 temp.mp4" -i "Session - 254 temp.aac" -i "Session - 254 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 254 - Explore Metal 4 games (1440p).mp4"
rm "Session - 254 temp.vtt"
rm "Session - 254 temp.mp4"
rm "Session - 254 temp.aac"

# 43
# Session 275 - Explore new advances in App Intents
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/275/5/354f4cf3-69e7-40de-b8ac-a7a5ce248c11/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 275 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/275/5/354f4cf3-69e7-40de-b8ac-a7a5ce248c11/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 275 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/275/5/354f4cf3-69e7-40de-b8ac-a7a5ce248c11/subtitles/eng/prog_index.m3u8 -c copy "Session - 275 temp.vtt"
ffmpeg -i "Session - 275 temp.mp4" -i "Session - 275 temp.aac" -i "Session - 275 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 275 - Explore new advances in App Intents (1440p).mp4"
rm "Session - 275 temp.vtt"
rm "Session - 275 temp.mp4"
rm "Session - 275 temp.aac"

# 44
# Session 248 - Explore prompt design & safety for on-device foundation models
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/248/7/5f4b2840-b27c-42a1-992f-179475029fb9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 248 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/248/7/5f4b2840-b27c-42a1-992f-179475029fb9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 248 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/248/7/5f4b2840-b27c-42a1-992f-179475029fb9/subtitles/eng/prog_index.m3u8 -c copy "Session - 248 temp.vtt"
ffmpeg -i "Session - 248 temp.mp4" -i "Session - 248 temp.aac" -i "Session - 248 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 248 - Explore prompt design & safety for on-device foundation models (1440p).mp4"
rm "Session - 248 temp.vtt"
rm "Session - 248 temp.mp4"
rm "Session - 248 temp.aac"

# 45
# Session 289 - Explore spatial accessory input on visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/289/4/7934a0e5-f8a8-4530-b614-5ed367076da5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 289 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/289/4/7934a0e5-f8a8-4530-b614-5ed367076da5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 289 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/289/4/7934a0e5-f8a8-4530-b614-5ed367076da5/subtitles/eng/prog_index.m3u8 -c copy "Session - 289 temp.vtt"
ffmpeg -i "Session - 289 temp.mp4" -i "Session - 289 temp.aac" -i "Session - 289 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 289 - Explore spatial accessory input on visionOS (1440p).mp4"
rm "Session - 289 temp.vtt"
rm "Session - 289 temp.mp4"
rm "Session - 289 temp.aac"

# 46
# Session 307 - Explore Swift and Java interoperability
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/307/5/79c0d8b7-243d-484f-890b-ecebf507a1e7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 307 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/307/5/79c0d8b7-243d-484f-890b-ecebf507a1e7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 307 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/307/5/79c0d8b7-243d-484f-890b-ecebf507a1e7/subtitles/eng/prog_index.m3u8 -c copy "Session - 307 temp.vtt"
ffmpeg -i "Session - 307 temp.mp4" -i "Session - 307 temp.aac" -i "Session - 307 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 307 - Explore Swift and Java interoperability (1440p).mp4"
rm "Session - 307 temp.vtt"
rm "Session - 307 temp.mp4"
rm "Session - 307 temp.aac"

# 47
# Session 304 - Explore video experiences for visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/304/4/4051f77f-237f-4404-bdec-006dced0b2a2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 304 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/304/4/4051f77f-237f-4404-bdec-006dced0b2a2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 304 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/304/4/4051f77f-237f-4404-bdec-006dced0b2a2/subtitles/eng/prog_index.m3u8 -c copy "Session - 304 temp.vtt"
ffmpeg -i "Session - 304 temp.mp4" -i "Session - 304 temp.aac" -i "Session - 304 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 304 - Explore video experiences for visionOS (1440p).mp4"
rm "Session - 304 temp.vtt"
rm "Session - 304 temp.mp4"
rm "Session - 304 temp.aac"

# 48
# Session 234 - Filter and tunnel network traffic with NetworkExtension
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/234/4/54f59553-dbd4-48aa-8240-99dbbc735d7b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 234 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/234/4/54f59553-dbd4-48aa-8240-99dbbc735d7b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 234 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/234/4/54f59553-dbd4-48aa-8240-99dbbc735d7b/subtitles/eng/prog_index.m3u8 -c copy "Session - 234 temp.vtt"
ffmpeg -i "Session - 234 temp.mp4" -i "Session - 234 temp.aac" -i "Session - 234 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 234 - Filter and tunnel network traffic with NetworkExtension (1440p).mp4"
rm "Session - 234 temp.vtt"
rm "Session - 234 temp.mp4"
rm "Session - 234 temp.aac"

# 49
# Session 227 - Finish tasks in the background
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/227/4/b4d5d5a5-5c5a-4f37-a4ad-66fea0b6f25d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 227 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/227/4/b4d5d5a5-5c5a-4f37-a4ad-66fea0b6f25d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 227 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/227/4/b4d5d5a5-5c5a-4f37-a4ad-66fea0b6f25d/subtitles/eng/prog_index.m3u8 -c copy "Session - 227 temp.vtt"
ffmpeg -i "Session - 227 temp.mp4" -i "Session - 227 temp.aac" -i "Session - 227 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 227 - Finish tasks in the background (1440p).mp4"
rm "Session - 227 temp.vtt"
rm "Session - 227 temp.mp4"
rm "Session - 227 temp.aac"

# 50
# Session 314 - Get ahead with quantum-secure cryptography
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/314/4/69450908-6907-44d0-9f37-9ffdec893aa2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 314 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/314/4/69450908-6907-44d0-9f37-9ffdec893aa2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 314 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/314/4/69450908-6907-44d0-9f37-9ffdec893aa2/subtitles/eng/prog_index.m3u8 -c copy "Session - 314 temp.vtt"
ffmpeg -i "Session - 314 temp.mp4" -i "Session - 314 temp.aac" -i "Session - 314 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 314 - Get ahead with quantum-secure cryptography (1440p).mp4"
rm "Session - 314 temp.vtt"
rm "Session - 314 temp.mp4"
rm "Session - 314 temp.aac"

# 51
# Session 214 - Get started with Game Center
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/214/5/c6c0d647-5ddc-44aa-869b-d27b44774678/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 214 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/214/5/c6c0d647-5ddc-44aa-869b-d27b44774678/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 214 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/214/5/c6c0d647-5ddc-44aa-869b-d27b44774678/subtitles/eng/prog_index.m3u8 -c copy "Session - 214 temp.vtt"
ffmpeg -i "Session - 214 temp.mp4" -i "Session - 214 temp.aac" -i "Session - 214 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 214 - Get started with Game Center (1440p).mp4"
rm "Session - 214 temp.vtt"
rm "Session - 214 temp.mp4"
rm "Session - 214 temp.aac"

# 52
# Session 315 - Get started with MLX for Apple silicon
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/315/4/7321e1ec-e5c2-45a5-a0ea-5e84afc61e0b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 315 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/315/4/7321e1ec-e5c2-45a5-a0ea-5e84afc61e0b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 315 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/315/4/7321e1ec-e5c2-45a5-a0ea-5e84afc61e0b/subtitles/eng/prog_index.m3u8 -c copy "Session - 315 temp.vtt"
ffmpeg -i "Session - 315 temp.mp4" -i "Session - 315 temp.aac" -i "Session - 315 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 315 - Get started with MLX for Apple silicon (1440p).mp4"
rm "Session - 315 temp.vtt"
rm "Session - 315 temp.mp4"
rm "Session - 315 temp.aac"

# 53
# Session 244 - Get to know App Intents
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/244/5/54cb9dae-53ff-4b7a-9091-2e1d6b3d779e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 244 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/244/5/54cb9dae-53ff-4b7a-9091-2e1d6b3d779e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 244 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/244/5/54cb9dae-53ff-4b7a-9091-2e1d6b3d779e/subtitles/eng/prog_index.m3u8 -c copy "Session - 244 temp.vtt"
ffmpeg -i "Session - 244 temp.mp4" -i "Session - 244 temp.aac" -i "Session - 244 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 244 - Get to know App Intents (1440p).mp4"
rm "Session - 244 temp.vtt"
rm "Session - 244 temp.mp4"
rm "Session - 244 temp.aac"

# 54
# Session 203 - Get to know the ManagedApp Framework 
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/203/6/f89d3254-c464-4d37-80cd-45de128efd20/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 203 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/203/6/f89d3254-c464-4d37-80cd-45de128efd20/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 203 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/203/6/f89d3254-c464-4d37-80cd-45de128efd20/subtitles/eng/prog_index.m3u8 -c copy "Session - 203 temp.vtt"
ffmpeg -i "Session - 203 temp.mp4" -i "Session - 203 temp.aac" -i "Session - 203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 203 - Get to know the ManagedApp Framework  (1440p).mp4"
rm "Session - 203 temp.vtt"
rm "Session - 203 temp.mp4"
rm "Session - 203 temp.aac"

# 55
# Session 356 - Get to know the new design system
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/356/6/689577bd-34c7-48cb-ba66-22d13d7aca5a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 356 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/356/6/689577bd-34c7-48cb-ba66-22d13d7aca5a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 356 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/356/6/689577bd-34c7-48cb-ba66-22d13d7aca5a/subtitles/eng/prog_index.m3u8 -c copy "Session - 356 temp.vtt"
ffmpeg -i "Session - 356 temp.mp4" -i "Session - 356 temp.aac" -i "Session - 356 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 356 - Get to know the new design system (1440p).mp4"
rm "Session - 356 temp.vtt"
rm "Session - 356 temp.mp4"
rm "Session - 356 temp.aac"

# 56
# Session 204 - Go further with MapKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/204/5/38ed2a79-6f38-4c36-8d25-933f80d3b8ce/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 204 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/204/5/38ed2a79-6f38-4c36-8d25-933f80d3b8ce/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 204 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/204/5/38ed2a79-6f38-4c36-8d25-933f80d3b8ce/subtitles/eng/prog_index.m3u8 -c copy "Session - 204 temp.vtt"
ffmpeg -i "Session - 204 temp.mp4" -i "Session - 204 temp.aac" -i "Session - 204 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 204 - Go further with MapKit (1440p).mp4"
rm "Session - 204 temp.vtt"
rm "Session - 204 temp.mp4"
rm "Session - 204 temp.aac"

# 57
# Session 211 - Go further with Metal 4 games
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/211/4/03920d98-a8a0-4cc8-bc99-3fcf874e0232/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 211 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/211/4/03920d98-a8a0-4cc8-bc99-3fcf874e0232/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 211 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/211/4/03920d98-a8a0-4cc8-bc99-3fcf874e0232/subtitles/eng/prog_index.m3u8 -c copy "Session - 211 temp.vtt"
ffmpeg -i "Session - 211 temp.mp4" -i "Session - 211 temp.aac" -i "Session - 211 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 211 - Go further with Metal 4 games (1440p).mp4"
rm "Session - 211 temp.vtt"
rm "Session - 211 temp.mp4"
rm "Session - 211 temp.aac"

# 58
# Session 312 - Improve memory usage and performance with Swift
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/312/4/ae42066d-6af2-4371-bf68-81a81ddef963/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 312 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/312/4/ae42066d-6af2-4371-bf68-81a81ddef963/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 312 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/312/4/ae42066d-6af2-4371-bf68-81a81ddef963/subtitles/eng/prog_index.m3u8 -c copy "Session - 312 temp.vtt"
ffmpeg -i "Session - 312 temp.mp4" -i "Session - 312 temp.aac" -i "Session - 312 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 312 - Improve memory usage and performance with Swift (1440p).mp4"
rm "Session - 312 temp.vtt"
rm "Session - 312 temp.mp4"
rm "Session - 312 temp.aac"

# 59
# Session 246 - Integrate privacy into your development process
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/246/4/37a0cde9-fca8-4877-b05c-95e677c0e2b0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 246 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/246/4/37a0cde9-fca8-4877-b05c-95e677c0e2b0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 246 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/246/4/37a0cde9-fca8-4877-b05c-95e677c0e2b0/subtitles/eng/prog_index.m3u8 -c copy "Session - 246 temp.vtt"
ffmpeg -i "Session - 246 temp.mp4" -i "Session - 246 temp.aac" -i "Session - 246 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 246 - Integrate privacy into your development process (1440p).mp4"
rm "Session - 246 temp.vtt"
rm "Session - 246 temp.mp4"
rm "Session - 246 temp.aac"

# 60
# Session 403 - Learn about Apple Immersive Video technologies
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/403/4/ef519281-1213-4ddf-892a-ca33ae288ef1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 403 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/403/4/ef519281-1213-4ddf-892a-ca33ae288ef1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 403 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/403/4/ef519281-1213-4ddf-892a-ca33ae288ef1/subtitles/eng/prog_index.m3u8 -c copy "Session - 403 temp.vtt"
ffmpeg -i "Session - 403 temp.mp4" -i "Session - 403 temp.aac" -i "Session - 403 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 403 - Learn about Apple Immersive Video technologies (1440p).mp4"
rm "Session - 403 temp.vtt"
rm "Session - 403 temp.mp4"
rm "Session - 403 temp.aac"

# 61
# Session 297 - Learn about the Apple Projected Media Profile
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/297/5/331d65eb-4973-4be1-a3b2-c1ae3ec8703a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 297 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/297/5/331d65eb-4973-4be1-a3b2-c1ae3ec8703a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 297 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/297/5/331d65eb-4973-4be1-a3b2-c1ae3ec8703a/subtitles/eng/prog_index.m3u8 -c copy "Session - 297 temp.vtt"
ffmpeg -i "Session - 297 temp.mp4" -i "Session - 297 temp.aac" -i "Session - 297 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 297 - Learn about the Apple Projected Media Profile (1440p).mp4"
rm "Session - 297 temp.vtt"
rm "Session - 297 temp.mp4"
rm "Session - 297 temp.aac"

# 62
# Session 235 - Learn more about Declarative Web Push
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/235/4/03c1e705-ee7b-4731-9b16-f7a1a7607546/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 235 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/235/4/03c1e705-ee7b-4731-9b16-f7a1a7607546/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 235 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/235/4/03c1e705-ee7b-4731-9b16-f7a1a7607546/subtitles/eng/prog_index.m3u8 -c copy "Session - 235 temp.vtt"
ffmpeg -i "Session - 235 temp.mp4" -i "Session - 235 temp.aac" -i "Session - 235 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 235 - Learn more about Declarative Web Push (1440p).mp4"
rm "Session - 235 temp.vtt"
rm "Session - 235 temp.mp4"
rm "Session - 235 temp.aac"

# 63
# Session 209 - Level up your games
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/209/4/45dc1092-c205-4dc3-8e6c-fa075886dce8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 209 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/209/4/45dc1092-c205-4dc3-8e6c-fa075886dce8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 209 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/209/4/45dc1092-c205-4dc3-8e6c-fa075886dce8/subtitles/eng/prog_index.m3u8 -c copy "Session - 209 temp.vtt"
ffmpeg -i "Session - 209 temp.mp4" -i "Session - 209 temp.aac" -i "Session - 209 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 209 - Level up your games (1440p).mp4"
rm "Session - 209 temp.vtt"
rm "Session - 209 temp.mp4"
rm "Session - 209 temp.aac"

# 64
# Session 404 - Make a big impact with small writing changes
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/404/4/59f0f7aa-24a1-477b-b61b-2baeebe52df0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 404 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/404/4/59f0f7aa-24a1-477b-b61b-2baeebe52df0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 404 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/404/4/59f0f7aa-24a1-477b-b61b-2baeebe52df0/subtitles/eng/prog_index.m3u8 -c copy "Session - 404 temp.vtt"
ffmpeg -i "Session - 404 temp.mp4" -i "Session - 404 temp.aac" -i "Session - 404 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 404 - Make a big impact with small writing changes (1440p).mp4"
rm "Session - 404 temp.vtt"
rm "Session - 404 temp.mp4"
rm "Session - 404 temp.aac"

# 65
# Session 229 - Make your Mac app more accessible to everyone
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/229/5/85268a8c-59ed-4f8c-942d-8835f8a76dd3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 229 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/229/5/85268a8c-59ed-4f8c-942d-8835f8a76dd3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 229 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/229/5/85268a8c-59ed-4f8c-942d-8835f8a76dd3/subtitles/eng/prog_index.m3u8 -c copy "Session - 229 temp.vtt"
ffmpeg -i "Session - 229 temp.mp4" -i "Session - 229 temp.aac" -i "Session - 229 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 229 - Make your Mac app more accessible to everyone (1440p).mp4"
rm "Session - 229 temp.vtt"
rm "Session - 229 temp.mp4"
rm "Session - 229 temp.aac"

# 66
# Session 282 - Make your UIKit app more flexible
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/282/4/24e46505-a3b3-4027-ac3f-0bd2b53dcdeb/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 282 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/282/4/24e46505-a3b3-4027-ac3f-0bd2b53dcdeb/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 282 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/282/4/24e46505-a3b3-4027-ac3f-0bd2b53dcdeb/subtitles/eng/prog_index.m3u8 -c copy "Session - 282 temp.vtt"
ffmpeg -i "Session - 282 temp.mp4" -i "Session - 282 temp.aac" -i "Session - 282 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 282 - Make your UIKit app more flexible (1440p).mp4"
rm "Session - 282 temp.vtt"
rm "Session - 282 temp.mp4"
rm "Session - 282 temp.aac"

# 67
# Session 346 - Meet Containerization
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/346/5/addb7968-a35a-4c71-967f-a125b913b4c3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 346 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/346/5/addb7968-a35a-4c71-967f-a125b913b4c3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 346 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/346/5/addb7968-a35a-4c71-967f-a125b913b4c3/subtitles/eng/prog_index.m3u8 -c copy "Session - 346 temp.vtt"
ffmpeg -i "Session - 346 temp.mp4" -i "Session - 346 temp.aac" -i "Session - 346 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 346 - Meet Containerization (1440p).mp4"
rm "Session - 346 temp.vtt"
rm "Session - 346 temp.mp4"
rm "Session - 346 temp.aac"

# 68
# Session 219 - Meet Liquid Glass
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/219/4/476dabc8-f3bb-4190-8929-4ba7131c939d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 219 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/219/4/476dabc8-f3bb-4190-8929-4ba7131c939d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 219 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/219/4/476dabc8-f3bb-4190-8929-4ba7131c939d/subtitles/eng/prog_index.m3u8 -c copy "Session - 219 temp.vtt"
ffmpeg -i "Session - 219 temp.mp4" -i "Session - 219 temp.aac" -i "Session - 219 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 219 - Meet Liquid Glass (1440p).mp4"
rm "Session - 219 temp.vtt"
rm "Session - 219 temp.mp4"
rm "Session - 219 temp.aac"

# 69
# Session 285 - Meet PaperKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/285/4/338ce5dc-94ee-4f86-a122-4bd01d8b1239/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 285 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/285/4/338ce5dc-94ee-4f86-a122-4bd01d8b1239/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 285 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/285/4/338ce5dc-94ee-4f86-a122-4bd01d8b1239/subtitles/eng/prog_index.m3u8 -c copy "Session - 285 temp.vtt"
ffmpeg -i "Session - 285 temp.mp4" -i "Session - 285 temp.aac" -i "Session - 285 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 285 - Meet PaperKit (1440p).mp4"
rm "Session - 285 temp.vtt"
rm "Session - 285 temp.mp4"
rm "Session - 285 temp.aac"

# 70
# Session 273 - Meet SwiftUI spatial layout
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/273/4/f5d120d6-7302-42ff-8ced-17923f0f6aa8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 273 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/273/4/f5d120d6-7302-42ff-8ced-17923f0f6aa8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 273 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/273/4/f5d120d6-7302-42ff-8ced-17923f0f6aa8/subtitles/eng/prog_index.m3u8 -c copy "Session - 273 temp.vtt"
ffmpeg -i "Session - 273 temp.mp4" -i "Session - 273 temp.aac" -i "Session - 273 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 273 - Meet SwiftUI spatial layout (1440p).mp4"
rm "Session - 273 temp.vtt"
rm "Session - 273 temp.mp4"
rm "Session - 273 temp.aac"

# 71
# Session 286 - Meet the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/286/4/6f221dca-f35f-4dad-bfec-0ec0970849bb/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 286 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/286/4/6f221dca-f35f-4dad-bfec-0ec0970849bb/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 286 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/286/4/6f221dca-f35f-4dad-bfec-0ec0970849bb/subtitles/eng/prog_index.m3u8 -c copy "Session - 286 temp.vtt"
ffmpeg -i "Session - 286 temp.mp4" -i "Session - 286 temp.aac" -i "Session - 286 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 286 - Meet the Foundation Models framework (1440p).mp4"
rm "Session - 286 temp.vtt"
rm "Session - 286 temp.mp4"
rm "Session - 286 temp.aac"

# 72
# Session 321 - Meet the HealthKit Medications API
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/321/6/70a69650-e4ac-44fc-ac42-cb7ca679de9d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 321 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/321/6/70a69650-e4ac-44fc-ac42-cb7ca679de9d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 321 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/321/6/70a69650-e4ac-44fc-ac42-cb7ca679de9d/subtitles/eng/prog_index.m3u8 -c copy "Session - 321 temp.vtt"
ffmpeg -i "Session - 321 temp.mp4" -i "Session - 321 temp.aac" -i "Session - 321 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 321 - Meet the HealthKit Medications API (1440p).mp4"
rm "Session - 321 temp.vtt"
rm "Session - 321 temp.mp4"
rm "Session - 321 temp.aac"

# 73
# Session 231 - Meet WebKit for SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/231/5/b6c4d9dc-8351-437b-bc3b-95372381cf23/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 231 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/231/5/b6c4d9dc-8351-437b-bc3b-95372381cf23/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 231 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/231/5/b6c4d9dc-8351-437b-bc3b-95372381cf23/subtitles/eng/prog_index.m3u8 -c copy "Session - 231 temp.vtt"
ffmpeg -i "Session - 231 temp.mp4" -i "Session - 231 temp.aac" -i "Session - 231 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 231 - Meet WebKit for SwiftUI (1440p).mp4"
rm "Session - 231 temp.vtt"
rm "Session - 231 temp.mp4"
rm "Session - 231 temp.aac"

# 74
# Session 308 - Optimize CPU performance with Instruments
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/308/4/5c144645-dea8-4f16-97ac-a6dd76cf72d8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 308 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/308/4/5c144645-dea8-4f16-97ac-a6dd76cf72d8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 308 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/308/4/5c144645-dea8-4f16-97ac-a6dd76cf72d8/subtitles/eng/prog_index.m3u8 -c copy "Session - 308 temp.vtt"
ffmpeg -i "Session - 308 temp.mp4" -i "Session - 308 temp.aac" -i "Session - 308 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 308 - Optimize CPU performance with Instruments (1440p).mp4"
rm "Session - 308 temp.vtt"
rm "Session - 308 temp.mp4"
rm "Session - 308 temp.aac"

# 75
# Session 257 - Optimize home electricity usage with EnergyKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/257/5/af3f4fb6-a561-4208-8035-3f6a77252946/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 257 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/257/5/af3f4fb6-a561-4208-8035-3f6a77252946/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 257 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/257/5/af3f4fb6-a561-4208-8035-3f6a77252946/subtitles/eng/prog_index.m3u8 -c copy "Session - 257 temp.vtt"
ffmpeg -i "Session - 257 temp.mp4" -i "Session - 257 temp.aac" -i "Session - 257 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 257 - Optimize home electricity usage with EnergyKit (1440p).mp4"
rm "Session - 257 temp.vtt"
rm "Session - 257 temp.mp4"
rm "Session - 257 temp.aac"

# 76
# Session 306 - Optimize SwiftUI performance with Instruments
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/306/4/cc55ba18-71e2-4481-8491-3473e650fdcc/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 306 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/306/4/cc55ba18-71e2-4481-8491-3473e650fdcc/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 306 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/306/4/cc55ba18-71e2-4481-8491-3473e650fdcc/subtitles/eng/prog_index.m3u8 -c copy "Session - 306 temp.vtt"
ffmpeg -i "Session - 306 temp.mp4" -i "Session - 306 temp.aac" -i "Session - 306 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 306 - Optimize SwiftUI performance with Instruments (1440p).mp4"
rm "Session - 306 temp.vtt"
rm "Session - 306 temp.mp4"
rm "Session - 306 temp.aac"

# 77
# Session 305 - Optimize your custom environments for visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/305/4/abf788b6-8972-46f4-980f-6ddb018734f3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 305 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/305/4/abf788b6-8972-46f4-980f-6ddb018734f3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 305 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/305/4/abf788b6-8972-46f4-980f-6ddb018734f3/subtitles/eng/prog_index.m3u8 -c copy "Session - 305 temp.vtt"
ffmpeg -i "Session - 305 temp.mp4" -i "Session - 305 temp.aac" -i "Session - 305 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 305 - Optimize your custom environments for visionOS (1440p).mp4"
rm "Session - 305 temp.vtt"
rm "Session - 305 temp.mp4"
rm "Session - 305 temp.aac"

# 78
# Session 252 - Optimize your monetization with App Analytics
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/252/5/adef7487-7011-47b3-8efb-93421930f6d2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 252 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/252/5/adef7487-7011-47b3-8efb-93421930f6d2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 252 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/252/5/adef7487-7011-47b3-8efb-93421930f6d2/subtitles/eng/prog_index.m3u8 -c copy "Session - 252 temp.vtt"
ffmpeg -i "Session - 252 temp.mp4" -i "Session - 252 temp.aac" -i "Session - 252 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 252 - Optimize your monetization with App Analytics (1440p).mp4"
rm "Session - 252 temp.vtt"
rm "Session - 252 temp.mp4"
rm "Session - 252 temp.aac"

# 79
# Session 316 - Principles of inclusive app design
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/316/6/59b25911-3ac3-41d5-a2db-2175a37a118f/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 316 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/316/6/59b25911-3ac3-41d5-a2db-2175a37a118f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 316 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/316/6/59b25911-3ac3-41d5-a2db-2175a37a118f/subtitles/eng/prog_index.m3u8 -c copy "Session - 316 temp.vtt"
ffmpeg -i "Session - 316 temp.mp4" -i "Session - 316 temp.aac" -i "Session - 316 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 316 - Principles of inclusive app design (1440p).mp4"
rm "Session - 316 temp.vtt"
rm "Session - 316 temp.mp4"
rm "Session - 316 temp.aac"

# 80
# Session 226 - Profile and optimize power usage in your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/226/4/b8318d6d-95e6-42c6-b883-c4164edfa29e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 226 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/226/4/b8318d6d-95e6-42c6-b883-c4164edfa29e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 226 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/226/4/b8318d6d-95e6-42c6-b883-c4164edfa29e/subtitles/eng/prog_index.m3u8 -c copy "Session - 226 temp.vtt"
ffmpeg -i "Session - 226 temp.mp4" -i "Session - 226 temp.aac" -i "Session - 226 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 226 - Profile and optimize power usage in your app (1440p).mp4"
rm "Session - 226 temp.vtt"
rm "Session - 226 temp.mp4"
rm "Session - 226 temp.aac"

# 81
# Session 272 - Read documents using the Vision framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/272/4/4e80b3e0-9c62-4150-84e9-6b051c14dfa9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 272 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/272/4/4e80b3e0-9c62-4150-84e9-6b051c14dfa9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 272 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/272/4/4e80b3e0-9c62-4150-84e9-6b051c14dfa9/subtitles/eng/prog_index.m3u8 -c copy "Session - 272 temp.vtt"
ffmpeg -i "Session - 272 temp.mp4" -i "Session - 272 temp.aac" -i "Session - 272 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 272 - Read documents using the Vision framework (1440p).mp4"
rm "Session - 272 temp.vtt"
rm "Session - 272 temp.mp4"
rm "Session - 272 temp.aac"

# 82
# Session 344 - Record, replay, and review - UI automation with Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/344/6/d83ce906-0fb6-484b-a0f2-4f678161d5b8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 344 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/344/6/d83ce906-0fb6-484b-a0f2-4f678161d5b8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 344 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/344/6/d83ce906-0fb6-484b-a0f2-4f678161d5b8/subtitles/eng/prog_index.m3u8 -c copy "Session - 344 temp.vtt"
ffmpeg -i "Session - 344 temp.mp4" -i "Session - 344 temp.aac" -i "Session - 344 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 344 - Record, replay, and review - UI automation with Xcode (1440p).mp4"
rm "Session - 344 temp.vtt"
rm "Session - 344 temp.mp4"
rm "Session - 344 temp.aac"

# 83
# Session 311 - Safely mix C, C++, and Swift
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/311/4/10e5709a-8f4f-488a-92f6-f551b4ce97c5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 311 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/311/4/10e5709a-8f4f-488a-92f6-f551b4ce97c5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 311 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/311/4/10e5709a-8f4f-488a-92f6-f551b4ce97c5/subtitles/eng/prog_index.m3u8 -c copy "Session - 311 temp.vtt"
ffmpeg -i "Session - 311 temp.mp4" -i "Session - 311 temp.aac" -i "Session - 311 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 311 - Safely mix C, C++, and Swift (1440p).mp4"
rm "Session - 311 temp.vtt"
rm "Session - 311 temp.mp4"
rm "Session - 311 temp.aac"

# 84
# Session 220 - Say hello to the new look of app icons
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/220/4/eb340303-3d49-4fcc-84c9-9dc98543ddaf/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 220 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/220/4/eb340303-3d49-4fcc-84c9-9dc98543ddaf/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 220 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/220/4/eb340303-3d49-4fcc-84c9-9dc98543ddaf/subtitles/eng/prog_index.m3u8 -c copy "Session - 220 temp.vtt"
ffmpeg -i "Session - 220 temp.mp4" -i "Session - 220 temp.aac" -i "Session - 220 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 220 - Say hello to the new look of app icons (1440p).mp4"
rm "Session - 220 temp.vtt"
rm "Session - 220 temp.mp4"
rm "Session - 220 temp.aac"

# 85
# Session 290 - Set the scene with SwiftUI in visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/290/4/fb07fe18-8745-4cfd-8448-1879b8f207dc/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 290 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/290/4/fb07fe18-8745-4cfd-8448-1879b8f207dc/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 290 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/290/4/fb07fe18-8745-4cfd-8448-1879b8f207dc/subtitles/eng/prog_index.m3u8 -c copy "Session - 290 temp.vtt"
ffmpeg -i "Session - 290 temp.mp4" -i "Session - 290 temp.aac" -i "Session - 290 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 290 - Set the scene with SwiftUI in visionOS (1440p).mp4"
rm "Session - 290 temp.vtt"
rm "Session - 290 temp.mp4"
rm "Session - 290 temp.aac"

# 86
# Session 318 - Share visionOS experiences with nearby people
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/318/5/b5e843e6-41fc-4ddd-8aa6-91e3ede41898/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 318 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/318/5/b5e843e6-41fc-4ddd-8aa6-91e3ede41898/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 318 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/318/5/b5e843e6-41fc-4ddd-8aa6-91e3ede41898/subtitles/eng/prog_index.m3u8 -c copy "Session - 318 temp.vtt"
ffmpeg -i "Session - 318 temp.mp4" -i "Session - 318 temp.aac" -i "Session - 318 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 318 - Share visionOS experiences with nearby people (1440p).mp4"
rm "Session - 318 temp.vtt"
rm "Session - 318 temp.mp4"
rm "Session - 318 temp.aac"

# 87
# Session 228 - Supercharge device connectivity with Wi-Fi Aware
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/228/4/b7b10ed3-bcfe-4935-919a-1b7faef02d2b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 228 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/228/4/b7b10ed3-bcfe-4935-919a-1b7faef02d2b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 228 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/228/4/b7b10ed3-bcfe-4935-919a-1b7faef02d2b/subtitles/eng/prog_index.m3u8 -c copy "Session - 228 temp.vtt"
ffmpeg -i "Session - 228 temp.mp4" -i "Session - 228 temp.aac" -i "Session - 228 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 228 - Supercharge device connectivity with Wi-Fi Aware (1440p).mp4"
rm "Session - 228 temp.vtt"
rm "Session - 228 temp.mp4"
rm "Session - 228 temp.aac"

# 88
# Session 296 - Support immersive video playback in visionOS apps
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/296/4/5953ed86-1de9-408e-9d39-2efe18da426b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 296 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/296/4/5953ed86-1de9-408e-9d39-2efe18da426b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 296 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/296/4/5953ed86-1de9-408e-9d39-2efe18da426b/subtitles/eng/prog_index.m3u8 -c copy "Session - 296 temp.vtt"
ffmpeg -i "Session - 296 temp.mp4" -i "Session - 296 temp.aac" -i "Session - 296 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 296 - Support immersive video playback in visionOS apps (1440p).mp4"
rm "Session - 296 temp.vtt"
rm "Session - 296 temp.mp4"
rm "Session - 296 temp.aac"

# 89
# Session 291 - SwiftData - Dive into inheritance and schema migration
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/291/4/446be11b-b8d3-42dd-b981-a22010ddbbe9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 291 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/291/4/446be11b-b8d3-42dd-b981-a22010ddbbe9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 291 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/291/4/446be11b-b8d3-42dd-b981-a22010ddbbe9/subtitles/eng/prog_index.m3u8 -c copy "Session - 291 temp.vtt"
ffmpeg -i "Session - 291 temp.mp4" -i "Session - 291 temp.aac" -i "Session - 291 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 291 - SwiftData - Dive into inheritance and schema migration (1440p).mp4"
rm "Session - 291 temp.vtt"
rm "Session - 291 temp.mp4"
rm "Session - 291 temp.aac"

# 90
# Session 322 - Track workouts with HealthKit on iOS and iPadOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/322/4/f9d00075-ebbe-458c-a1e6-597ff5d78a1b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 322 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/322/4/f9d00075-ebbe-458c-a1e6-597ff5d78a1b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 322 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/322/4/f9d00075-ebbe-458c-a1e6-597ff5d78a1b/subtitles/eng/prog_index.m3u8 -c copy "Session - 322 temp.vtt"
ffmpeg -i "Session - 322 temp.mp4" -i "Session - 322 temp.aac" -i "Session - 322 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 322 - Track workouts with HealthKit on iOS and iPadOS (1440p).mp4"
rm "Session - 322 temp.vtt"
rm "Session - 322 temp.mp4"
rm "Session - 322 temp.aac"

# 91
# Session 216 - Turbocharge your app for CarPlay
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/216/4/e2928559-f686-450b-899e-329e93341e5b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 216 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/216/4/e2928559-f686-450b-899e-329e93341e5b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 216 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/216/4/e2928559-f686-450b-899e-329e93341e5b/subtitles/eng/prog_index.m3u8 -c copy "Session - 216 temp.vtt"
ffmpeg -i "Session - 216 temp.mp4" -i "Session - 216 temp.aac" -i "Session - 216 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 216 - Turbocharge your app for CarPlay (1440p).mp4"
rm "Session - 216 temp.vtt"
rm "Session - 216 temp.mp4"
rm "Session - 216 temp.aac"

# 92
# Session 236 - Unlock GPU computing with WebGPU
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/236/5/3eb6d0b1-48d5-46d6-bb81-a6ce4b03b8aa/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 236 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/236/5/3eb6d0b1-48d5-46d6-bb81-a6ce4b03b8aa/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 236 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/236/5/3eb6d0b1-48d5-46d6-bb81-a6ce4b03b8aa/subtitles/eng/prog_index.m3u8 -c copy "Session - 236 temp.vtt"
ffmpeg -i "Session - 236 temp.mp4" -i "Session - 236 temp.aac" -i "Session - 236 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 236 - Unlock GPU computing with WebGPU (1440p).mp4"
rm "Session - 236 temp.vtt"
rm "Session - 236 temp.mp4"
rm "Session - 236 temp.aac"

# 93
# Session 250 - Use structured concurrency with Network framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/250/4/ffac19d6-02fb-4abc-a491-fc009e5d38e3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 250 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/250/4/ffac19d6-02fb-4abc-a491-fc009e5d38e3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 250 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/250/4/ffac19d6-02fb-4abc-a491-fc009e5d38e3/subtitles/eng/prog_index.m3u8 -c copy "Session - 250 temp.vtt"
ffmpeg -i "Session - 250 temp.mp4" -i "Session - 250 temp.aac" -i "Session - 250 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 250 - Use structured concurrency with Network framework (1440p).mp4"
rm "Session - 250 temp.vtt"
rm "Session - 250 temp.mp4"
rm "Session - 250 temp.aac"

# 94
# Session 232 - Verify identity documents on the web
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/232/4/c1386ee3-b8b0-4086-99fe-9f05e4b1cd17/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 232 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/232/4/c1386ee3-b8b0-4086-99fe-9f05e4b1cd17/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 232 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/232/4/c1386ee3-b8b0-4086-99fe-9f05e4b1cd17/subtitles/eng/prog_index.m3u8 -c copy "Session - 232 temp.vtt"
ffmpeg -i "Session - 232 temp.mp4" -i "Session - 232 temp.aac" -i "Session - 232 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 232 - Verify identity documents on the web (1440p).mp4"
rm "Session - 232 temp.vtt"
rm "Session - 232 temp.mp4"
rm "Session - 232 temp.aac"

# 95
# Session 230 - Wake up to the AlarmKit API
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/230/4/d60bc47c-1b62-4fa0-a1d1-d046cf20f1de/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 230 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/230/4/d60bc47c-1b62-4fa0-a1d1-d046cf20f1de/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 230 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/230/4/d60bc47c-1b62-4fa0-a1d1-d046cf20f1de/subtitles/eng/prog_index.m3u8 -c copy "Session - 230 temp.vtt"
ffmpeg -i "Session - 230 temp.mp4" -i "Session - 230 temp.aac" -i "Session - 230 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 230 - Wake up to the AlarmKit API (1440p).mp4"
rm "Session - 230 temp.vtt"
rm "Session - 230 temp.mp4"
rm "Session - 230 temp.aac"

# 96
# Session 237 - What’s new for the spatial web
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/237/5/f5fcabf4-e9fa-420b-a1a8-3e4868fccca9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 237 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/237/5/f5fcabf4-e9fa-420b-a1a8-3e4868fccca9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 237 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/237/5/f5fcabf4-e9fa-420b-a1a8-3e4868fccca9/subtitles/eng/prog_index.m3u8 -c copy "Session - 237 temp.vtt"
ffmpeg -i "Session - 237 temp.mp4" -i "Session - 237 temp.aac" -i "Session - 237 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 237 - What’s new for the spatial web (1440p).mp4"
rm "Session - 237 temp.vtt"
rm "Session - 237 temp.mp4"
rm "Session - 237 temp.aac"

# 97
# Session 221 - What’s new in AdAttributionKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/221/4/09c47047-90c9-48df-9ed1-f6d24303043e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 221 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/221/4/09c47047-90c9-48df-9ed1-f6d24303043e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 221 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/221/4/09c47047-90c9-48df-9ed1-f6d24303043e/subtitles/eng/prog_index.m3u8 -c copy "Session - 221 temp.vtt"
ffmpeg -i "Session - 221 temp.mp4" -i "Session - 221 temp.aac" -i "Session - 221 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 221 - What’s new in AdAttributionKit (1440p).mp4"
rm "Session - 221 temp.vtt"
rm "Session - 221 temp.mp4"
rm "Session - 221 temp.aac"

# 98
# Session 328 - What’s new in App Store Connect
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/328/6/e2b4ccaa-ad5a-421e-898e-2f1825e6c7ab/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 328 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/328/6/e2b4ccaa-ad5a-421e-898e-2f1825e6c7ab/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 328 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/328/6/e2b4ccaa-ad5a-421e-898e-2f1825e6c7ab/subtitles/eng/prog_index.m3u8 -c copy "Session - 328 temp.vtt"
ffmpeg -i "Session - 328 temp.mp4" -i "Session - 328 temp.aac" -i "Session - 328 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 328 - What’s new in App Store Connect (1440p).mp4"
rm "Session - 328 temp.vtt"
rm "Session - 328 temp.mp4"
rm "Session - 328 temp.aac"

# 99
# Session 258 - What’s new in Apple device management and identity
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/258/4/00c0d5e4-631c-40a0-b535-65404ad0e9c1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 258 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/258/4/00c0d5e4-631c-40a0-b535-65404ad0e9c1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 258 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/258/4/00c0d5e4-631c-40a0-b535-65404ad0e9c1/subtitles/eng/prog_index.m3u8 -c copy "Session - 258 temp.vtt"
ffmpeg -i "Session - 258 temp.mp4" -i "Session - 258 temp.aac" -i "Session - 258 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 258 - What’s new in Apple device management and identity (1440p).mp4"
rm "Session - 258 temp.vtt"
rm "Session - 258 temp.mp4"
rm "Session - 258 temp.aac"

# 100
# Session 201 - What’s new in Apple Pay
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/201/6/b2ba4cc0-5a44-4934-9a49-90c53d540a24/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 201 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/201/6/b2ba4cc0-5a44-4934-9a49-90c53d540a24/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 201 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/201/6/b2ba4cc0-5a44-4934-9a49-90c53d540a24/subtitles/eng/prog_index.m3u8 -c copy "Session - 201 temp.vtt"
ffmpeg -i "Session - 201 temp.mp4" -i "Session - 201 temp.aac" -i "Session - 201 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 201 - What’s new in Apple Pay (1440p).mp4"
rm "Session - 201 temp.vtt"
rm "Session - 201 temp.mp4"
rm "Session - 201 temp.aac"

# 101
# Session 276 - What’s new in BNNS Graph
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/276/4/68973e7e-a4db-44eb-9c9f-f90f3dde4a75/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 276 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/276/4/68973e7e-a4db-44eb-9c9f-f90f3dde4a75/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 276 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/276/4/68973e7e-a4db-44eb-9c9f-f90f3dde4a75/subtitles/eng/prog_index.m3u8 -c copy "Session - 276 temp.vtt"
ffmpeg -i "Session - 276 temp.mp4" -i "Session - 276 temp.aac" -i "Session - 276 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 276 - What’s new in BNNS Graph (1440p).mp4"
rm "Session - 276 temp.vtt"
rm "Session - 276 temp.mp4"
rm "Session - 276 temp.aac"

# 102
# Session 294 - What’s new in Metal rendering for immersive apps
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/294/4/e0a53a43-a861-4846-9d3a-45232b5e959a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 294 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/294/4/e0a53a43-a861-4846-9d3a-45232b5e959a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 294 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/294/4/e0a53a43-a861-4846-9d3a-45232b5e959a/subtitles/eng/prog_index.m3u8 -c copy "Session - 294 temp.vtt"
ffmpeg -i "Session - 294 temp.mp4" -i "Session - 294 temp.aac" -i "Session - 294 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 294 - What’s new in Metal rendering for immersive apps (1440p).mp4"
rm "Session - 294 temp.vtt"
rm "Session - 294 temp.mp4"
rm "Session - 294 temp.aac"

# 103
# Session 279 - What’s new in passkeys
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/279/5/39c2b950-9bc8-4e0a-a336-98ec2ed224a2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 279 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/279/5/39c2b950-9bc8-4e0a-a336-98ec2ed224a2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 279 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/279/5/39c2b950-9bc8-4e0a-a336-98ec2ed224a2/subtitles/eng/prog_index.m3u8 -c copy "Session - 279 temp.vtt"
ffmpeg -i "Session - 279 temp.mp4" -i "Session - 279 temp.aac" -i "Session - 279 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 279 - What’s new in passkeys (1440p).mp4"
rm "Session - 279 temp.vtt"
rm "Session - 279 temp.mp4"
rm "Session - 279 temp.aac"

# 104
# Session 287 - What’s new in RealityKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/287/4/23ef24fe-2271-4352-b5af-b350e85dc101/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 287 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/287/4/23ef24fe-2271-4352-b5af-b350e85dc101/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 287 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/287/4/23ef24fe-2271-4352-b5af-b350e85dc101/subtitles/eng/prog_index.m3u8 -c copy "Session - 287 temp.vtt"
ffmpeg -i "Session - 287 temp.mp4" -i "Session - 287 temp.aac" -i "Session - 287 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 287 - What’s new in RealityKit (1440p).mp4"
rm "Session - 287 temp.vtt"
rm "Session - 287 temp.mp4"
rm "Session - 287 temp.aac"

# 105
# Session 233 - What’s new in Safari and WebKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/233/5/d86dec2f-e399-4978-b704-a5136136da93/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 233 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/233/5/d86dec2f-e399-4978-b704-a5136136da93/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 233 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/233/5/d86dec2f-e399-4978-b704-a5136136da93/subtitles/eng/prog_index.m3u8 -c copy "Session - 233 temp.vtt"
ffmpeg -i "Session - 233 temp.mp4" -i "Session - 233 temp.aac" -i "Session - 233 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 233 - What’s new in Safari and WebKit (1440p).mp4"
rm "Session - 233 temp.vtt"
rm "Session - 233 temp.mp4"
rm "Session - 233 temp.aac"

# 106
# Session 337 - What’s new in SF Symbols 7
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/337/4/28c79e89-c364-4095-9e5b-cbbbbbd29b17/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 337 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/337/4/28c79e89-c364-4095-9e5b-cbbbbbd29b17/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 337 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/337/4/28c79e89-c364-4095-9e5b-cbbbbbd29b17/subtitles/eng/prog_index.m3u8 -c copy "Session - 337 temp.vtt"
ffmpeg -i "Session - 337 temp.mp4" -i "Session - 337 temp.aac" -i "Session - 337 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 337 - What’s new in SF Symbols 7 (1440p).mp4"
rm "Session - 337 temp.vtt"
rm "Session - 337 temp.mp4"
rm "Session - 337 temp.aac"

# 107
# Session 241 - What’s new in StoreKit and In-App Purchase
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/241/5/bb873ce3-f42a-498c-9c03-4cd7fadb6075/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 241 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/241/5/bb873ce3-f42a-498c-9c03-4cd7fadb6075/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 241 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/241/5/bb873ce3-f42a-498c-9c03-4cd7fadb6075/subtitles/eng/prog_index.m3u8 -c copy "Session - 241 temp.vtt"
ffmpeg -i "Session - 241 temp.mp4" -i "Session - 241 temp.aac" -i "Session - 241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 241 - What’s new in StoreKit and In-App Purchase (1440p).mp4"
rm "Session - 241 temp.vtt"
rm "Session - 241 temp.mp4"
rm "Session - 241 temp.aac"

# 108
# Session 245 - What’s new in Swift
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/245/5/ffab291a-af6f-4f45-9ee5-d504cabc053c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 245 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/245/5/ffab291a-af6f-4f45-9ee5-d504cabc053c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 245 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/245/5/ffab291a-af6f-4f45-9ee5-d504cabc053c/subtitles/eng/prog_index.m3u8 -c copy "Session - 245 temp.vtt"
ffmpeg -i "Session - 245 temp.mp4" -i "Session - 245 temp.aac" -i "Session - 245 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 245 - What’s new in Swift (1440p).mp4"
rm "Session - 245 temp.vtt"
rm "Session - 245 temp.mp4"
rm "Session - 245 temp.aac"

# 109
# Session 256 - What’s new in SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/256/4/353ed635-9639-48db-8c8c-69b2b7e499c1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 256 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/256/4/353ed635-9639-48db-8c8c-69b2b7e499c1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 256 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/256/4/353ed635-9639-48db-8c8c-69b2b7e499c1/subtitles/eng/prog_index.m3u8 -c copy "Session - 256 temp.vtt"
ffmpeg -i "Session - 256 temp.mp4" -i "Session - 256 temp.aac" -i "Session - 256 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 256 - What’s new in SwiftUI (1440p).mp4"
rm "Session - 256 temp.vtt"
rm "Session - 256 temp.mp4"
rm "Session - 256 temp.aac"

# 110
# Session 243 - What’s new in UIKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/243/4/9d493d7f-4ae0-47d2-9b97-c3ad66cdf3c4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 243 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/243/4/9d493d7f-4ae0-47d2-9b97-c3ad66cdf3c4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 243 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/243/4/9d493d7f-4ae0-47d2-9b97-c3ad66cdf3c4/subtitles/eng/prog_index.m3u8 -c copy "Session - 243 temp.vtt"
ffmpeg -i "Session - 243 temp.mp4" -i "Session - 243 temp.aac" -i "Session - 243 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 243 - What’s new in UIKit (1440p).mp4"
rm "Session - 243 temp.vtt"
rm "Session - 243 temp.mp4"
rm "Session - 243 temp.aac"

# 111
# Session 317 - What’s new in visionOS 26
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/317/4/4700af86-65f4-429a-b0a7-7dd18247c03d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 317 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/317/4/4700af86-65f4-429a-b0a7-7dd18247c03d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 317 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/317/4/4700af86-65f4-429a-b0a7-7dd18247c03d/subtitles/eng/prog_index.m3u8 -c copy "Session - 317 temp.vtt"
ffmpeg -i "Session - 317 temp.mp4" -i "Session - 317 temp.aac" -i "Session - 317 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 317 - What’s new in visionOS 26 (1440p).mp4"
rm "Session - 317 temp.vtt"
rm "Session - 317 temp.mp4"
rm "Session - 317 temp.aac"

# 112
# Session 202 - What’s new in Wallet
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/202/5/8fe1fffa-e36b-4be6-a752-5ac3a921f7fa/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 202 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/202/5/8fe1fffa-e36b-4be6-a752-5ac3a921f7fa/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 202 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/202/5/8fe1fffa-e36b-4be6-a752-5ac3a921f7fa/subtitles/eng/prog_index.m3u8 -c copy "Session - 202 temp.vtt"
ffmpeg -i "Session - 202 temp.mp4" -i "Session - 202 temp.aac" -i "Session - 202 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 202 - What’s new in Wallet (1440p).mp4"
rm "Session - 202 temp.vtt"
rm "Session - 202 temp.mp4"
rm "Session - 202 temp.aac"

# 113
# Session 334 - What’s new in watchOS 26
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/334/6/578bf261-7e37-4689-a465-bd1300c0f908/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 334 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/334/6/578bf261-7e37-4689-a465-bd1300c0f908/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 334 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/334/6/578bf261-7e37-4689-a465-bd1300c0f908/subtitles/eng/prog_index.m3u8 -c copy "Session - 334 temp.vtt"
ffmpeg -i "Session - 334 temp.mp4" -i "Session - 334 temp.aac" -i "Session - 334 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 334 - What’s new in watchOS 26 (1440p).mp4"
rm "Session - 334 temp.vtt"
rm "Session - 334 temp.mp4"
rm "Session - 334 temp.aac"

# 114
# Session 278 - What’s new in widgets
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/278/6/2b85cabe-2b0a-4290-a667-9170e4b5ae18/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 278 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/278/6/2b85cabe-2b0a-4290-a667-9170e4b5ae18/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 278 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/278/6/2b85cabe-2b0a-4290-a667-9170e4b5ae18/subtitles/eng/prog_index.m3u8 -c copy "Session - 278 temp.vtt"
ffmpeg -i "Session - 278 temp.mp4" -i "Session - 278 temp.aac" -i "Session - 278 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 278 - What’s new in widgets (1440p).mp4"
rm "Session - 278 temp.vtt"
rm "Session - 278 temp.mp4"
rm "Session - 278 temp.aac"

# 115
# Session 247 - What’s new in Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/247/5/5455d9cc-d071-4119-84e7-db8eadeaaeb0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 247 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/247/5/5455d9cc-d071-4119-84e7-db8eadeaaeb0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 247 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2025/247/5/5455d9cc-d071-4119-84e7-db8eadeaaeb0/subtitles/eng/prog_index.m3u8 -c copy "Session - 247 temp.vtt"
ffmpeg -i "Session - 247 temp.mp4" -i "Session - 247 temp.aac" -i "Session - 247 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 247 - What’s new in Xcode (1440p).mp4"
rm "Session - 247 temp.vtt"
rm "Session - 247 temp.mp4"
rm "Session - 247 temp.aac"
