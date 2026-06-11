
# 1
# Session 121 - Announcing Apple’s next big step for Siri and iPhone
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/121/1/f1e6baa3-3c16-4944-abec-3525818a2702/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 121 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/121/1/f1e6baa3-3c16-4944-abec-3525818a2702/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 121 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/121/1/f1e6baa3-3c16-4944-abec-3525818a2702/subtitles/en/prog_index.m3u8 -c copy "Session - 121 temp.vtt"
ffmpeg -i "Session - 121 temp.mp4" -i "Session - 121 temp.aac" -i "Session - 121 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 121 - Announcing Apple’s next big step for Siri and iPhone (1440p).mp4"
rm "Session - 121 temp.vtt"
rm "Session - 121 temp.mp4"
rm "Session - 121 temp.aac"

# 2
# Session 297 - Best practices for integrating visual intelligence in your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/297/5/25343020-b502-4808-967a-6f6460789dc2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 297 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/297/5/25343020-b502-4808-967a-6f6460789dc2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 297 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/297/5/25343020-b502-4808-967a-6f6460789dc2/subtitles/en/prog_index.m3u8 -c copy "Session - 297 temp.vtt"
ffmpeg -i "Session - 297 temp.mp4" -i "Session - 297 temp.aac" -i "Session - 297 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 297 - Best practices for integrating visual intelligence in your app (1440p).mp4"
rm "Session - 297 temp.vtt"
rm "Session - 297 temp.mp4"
rm "Session - 297 temp.aac"

# 3
# Session 339 - Bring an LLM provider to the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/339/4/334f1ee9-4263-4c86-9b10-632f0f2edab1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 339 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/339/4/334f1ee9-4263-4c86-9b10-632f0f2edab1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 339 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/339/4/334f1ee9-4263-4c86-9b10-632f0f2edab1/subtitles/en/prog_index.m3u8 -c copy "Session - 339 temp.vtt"
ffmpeg -i "Session - 339 temp.mp4" -i "Session - 339 temp.aac" -i "Session - 339 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 339 - Bring an LLM provider to the Foundation Models framework (1440p).mp4"
rm "Session - 339 temp.vtt"
rm "Session - 339 temp.mp4"
rm "Session - 339 temp.aac"

# 4
# Session 356 - Bringing Cyberpunk 2077 to Mac
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/356/5/d3ce460b-554d-4760-ae03-072c5acf42aa/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 356 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/356/5/d3ce460b-554d-4760-ae03-072c5acf42aa/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 356 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/356/5/d3ce460b-554d-4760-ae03-072c5acf42aa/subtitles/en/prog_index.m3u8 -c copy "Session - 356 temp.vtt"
ffmpeg -i "Session - 356 temp.mp4" -i "Session - 356 temp.aac" -i "Session - 356 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 356 - Bringing Cyberpunk 2077 to Mac (1440p).mp4"
rm "Session - 356 temp.vtt"
rm "Session - 356 temp.mp4"
rm "Session - 356 temp.aac"

# 5
# Session 303 - Build a responsive camera app that launches quickly
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/303/5/fb6dc55a-c026-4ce1-9902-7a744fef4c99/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 303 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/303/5/fb6dc55a-c026-4ce1-9902-7a744fef4c99/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 303 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/303/5/fb6dc55a-c026-4ce1-9902-7a744fef4c99/subtitles/en/prog_index.m3u8 -c copy "Session - 303 temp.vtt"
ffmpeg -i "Session - 303 temp.mp4" -i "Session - 303 temp.aac" -i "Session - 303 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 303 - Build a responsive camera app that launches quickly (1440p).mp4"
rm "Session - 303 temp.vtt"
rm "Session - 303 temp.mp4"
rm "Session - 303 temp.aac"

# 6
# Session 242 - Build agentic app experiences with the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/242/4/7f05515d-be1a-43a0-9962-a1f77f115666/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 242 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/242/4/7f05515d-be1a-43a0-9962-a1f77f115666/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 242 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/242/4/7f05515d-be1a-43a0-9962-a1f77f115666/subtitles/en/prog_index.m3u8 -c copy "Session - 242 temp.vtt"
ffmpeg -i "Session - 242 temp.mp4" -i "Session - 242 temp.aac" -i "Session - 242 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 242 - Build agentic app experiences with the Foundation Models framework (1440p).mp4"
rm "Session - 242 temp.vtt"
rm "Session - 242 temp.mp4"
rm "Session - 242 temp.aac"

# 7
# Session 334 - Build AI-powered scripts with the fm CLI and Python SDK
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/334/4/65b71eea-f323-4f86-9096-889b6da91bdd/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 334 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/334/4/65b71eea-f323-4f86-9096-889b6da91bdd/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 334 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/334/4/65b71eea-f323-4f86-9096-889b6da91bdd/subtitles/en/prog_index.m3u8 -c copy "Session - 334 temp.vtt"
ffmpeg -i "Session - 334 temp.mp4" -i "Session - 334 temp.aac" -i "Session - 334 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 334 - Build AI-powered scripts with the fm CLI and Python SDK (1440p).mp4"
rm "Session - 334 temp.vtt"
rm "Session - 334 temp.mp4"
rm "Session - 334 temp.aac"

# 8
# Session 240 - Build intelligent Siri experiences with App Schemas
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/240/4/d46aac11-3990-42cd-bb33-4ce5e958b902/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 240 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/240/4/d46aac11-3990-42cd-bb33-4ce5e958b902/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 240 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/240/4/d46aac11-3990-42cd-bb33-4ce5e958b902/subtitles/en/prog_index.m3u8 -c copy "Session - 240 temp.vtt"
ffmpeg -i "Session - 240 temp.mp4" -i "Session - 240 temp.aac" -i "Session - 240 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 240 - Build intelligent Siri experiences with App Schemas (1440p).mp4"
rm "Session - 240 temp.vtt"
rm "Session - 240 temp.mp4"
rm "Session - 240 temp.aac"

# 9
# Session 338 - Build live production tools for Apple Immersive Video
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/338/5/4549be24-44c7-4214-ab9b-f21f9ed04691/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 338 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/338/5/4549be24-44c7-4214-ab9b-f21f9ed04691/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 338 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/338/5/4549be24-44c7-4214-ab9b-f21f9ed04691/subtitles/en/prog_index.m3u8 -c copy "Session - 338 temp.vtt"
ffmpeg -i "Session - 338 temp.mp4" -i "Session - 338 temp.aac" -i "Session - 338 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 338 - Build live production tools for Apple Immersive Video (1440p).mp4"
rm "Session - 338 temp.vtt"
rm "Session - 338 temp.mp4"
rm "Session - 338 temp.aac"

# 10
# Session 287 - Build next-generation experiences with visionOS 27
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/287/4/979d9278-8250-46f9-ac82-79669ba7b479/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 287 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/287/4/979d9278-8250-46f9-ac82-79669ba7b479/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 287 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/287/4/979d9278-8250-46f9-ac82-79669ba7b479/subtitles/en/prog_index.m3u8 -c copy "Session - 287 temp.vtt"
ffmpeg -i "Session - 287 temp.mp4" -i "Session - 287 temp.aac" -i "Session - 287 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 287 - Build next-generation experiences with visionOS 27 (1440p).mp4"
rm "Session - 287 temp.vtt"
rm "Session - 287 temp.mp4"
rm "Session - 287 temp.aac"

# 11
# Session 265 - Build real-time apps and services with gRPC and Swift
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/265/4/05249c6d-4136-4164-a8d0-5db0bbb22c7f/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 265 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/265/4/05249c6d-4136-4164-a8d0-5db0bbb22c7f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 265 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/265/4/05249c6d-4136-4164-a8d0-5db0bbb22c7f/subtitles/en/prog_index.m3u8 -c copy "Session - 265 temp.vtt"
ffmpeg -i "Session - 265 temp.mp4" -i "Session - 265 temp.aac" -i "Session - 265 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 265 - Build real-time apps and services with gRPC and Swift (1440p).mp4"
rm "Session - 265 temp.vtt"
rm "Session - 265 temp.mp4"
rm "Session - 265 temp.aac"

# 12
# Session 359 - Build real-time neural rendering pipelines with Metal
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/359/5/9da4a720-0dcb-4b8e-b61b-ba8310a61f29/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 359 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/359/5/9da4a720-0dcb-4b8e-b61b-ba8310a61f29/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 359 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/359/5/9da4a720-0dcb-4b8e-b61b-ba8310a61f29/subtitles/en/prog_index.m3u8 -c copy "Session - 359 temp.vtt"
ffmpeg -i "Session - 359 temp.mp4" -i "Session - 359 temp.aac" -i "Session - 359 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 359 - Build real-time neural rendering pipelines with Metal (1440p).mp4"
rm "Session - 359 temp.vtt"
rm "Session - 359 temp.mp4"
rm "Session - 359 temp.aac"

# 13
# Session 319 - Build with the new Apple Foundation Model on Private Cloud Compute
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/319/4/1a3ac4f6-73d2-4a24-9e5d-0cfd56564f42/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 319 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/319/4/1a3ac4f6-73d2-4a24-9e5d-0cfd56564f42/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 319 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/319/4/1a3ac4f6-73d2-4a24-9e5d-0cfd56564f42/subtitles/en/prog_index.m3u8 -c copy "Session - 319 temp.vtt"
ffmpeg -i "Session - 319 temp.mp4" -i "Session - 319 temp.aac" -i "Session - 319 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 319 - Build with the new Apple Foundation Model on Private Cloud Compute (1440p).mp4"
rm "Session - 319 temp.vtt"
rm "Session - 319 temp.mp4"
rm "Session - 319 temp.aac"

# 14
# Session 261 - Build, deliver, and automate with Xcode Cloud
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/261/7/35c49f2b-3f0a-4956-826b-d54d9fed678e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 261 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/261/7/35c49f2b-3f0a-4956-826b-d54d9fed678e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 261 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/261/7/35c49f2b-3f0a-4956-826b-d54d9fed678e/subtitles/en/prog_index.m3u8 -c copy "Session - 261 temp.vtt"
ffmpeg -i "Session - 261 temp.mp4" -i "Session - 261 temp.aac" -i "Session - 261 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 261 - Build, deliver, and automate with Xcode Cloud (1440p).mp4"
rm "Session - 261 temp.vtt"
rm "Session - 261 temp.mp4"
rm "Session - 261 temp.aac"

# 15
# Session 275 - Code-along - Add persistence with SwiftData
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/275/4/7c64f887-3c3c-4bdf-8472-72d6b96f8e3d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 275 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/275/4/7c64f887-3c3c-4bdf-8472-72d6b96f8e3d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 275 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/275/4/7c64f887-3c3c-4bdf-8472-72d6b96f8e3d/subtitles/en/prog_index.m3u8 -c copy "Session - 275 temp.vtt"
ffmpeg -i "Session - 275 temp.mp4" -i "Session - 275 temp.aac" -i "Session - 275 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 275 - Code-along - Add persistence with SwiftData (1440p).mp4"
rm "Session - 275 temp.vtt"
rm "Session - 275 temp.mp4"
rm "Session - 275 temp.aac"

# 16
# Session 271 - Code-along - Build powerful drag and drop in SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/271/5/07f08d32-e28e-476f-8ebe-a3600b2e917c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 271 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/271/5/07f08d32-e28e-476f-8ebe-a3600b2e917c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 271 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/271/5/07f08d32-e28e-476f-8ebe-a3600b2e917c/subtitles/en/prog_index.m3u8 -c copy "Session - 271 temp.vtt"
ffmpeg -i "Session - 271 temp.mp4" -i "Session - 271 temp.aac" -i "Session - 271 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 271 - Code-along - Build powerful drag and drop in SwiftUI (1440p).mp4"
rm "Session - 271 temp.vtt"
rm "Session - 271 temp.mp4"
rm "Session - 271 temp.aac"

# 17
# Session 344 - Code-along - Make your app available to Siri
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/344/4/ee45cb19-e252-41f4-a2e0-e9b59238c7aa/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 344 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/344/4/ee45cb19-e252-41f4-a2e0-e9b59238c7aa/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 344 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/344/4/ee45cb19-e252-41f4-a2e0-e9b59238c7aa/subtitles/en/prog_index.m3u8 -c copy "Session - 344 temp.vtt"
ffmpeg -i "Session - 344 temp.mp4" -i "Session - 344 temp.aac" -i "Session - 344 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 344 - Code-along - Make your app available to Siri (1440p).mp4"
rm "Session - 344 temp.vtt"
rm "Session - 344 temp.mp4"
rm "Session - 344 temp.aac"

# 18
# Session 284 - Collaborate on structured 3D models in visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/284/4/fa1d15b1-3f28-415a-907a-8ae1bb344494/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 284 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/284/4/fa1d15b1-3f28-415a-907a-8ae1bb344494/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 284 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/284/4/fa1d15b1-3f28-415a-907a-8ae1bb344494/subtitles/en/prog_index.m3u8 -c copy "Session - 284 temp.vtt"
ffmpeg -i "Session - 284 temp.mp4" -i "Session - 284 temp.aac" -i "Session - 284 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 284 - Collaborate on structured 3D models in visionOS (1440p).mp4"
rm "Session - 284 temp.vtt"
rm "Session - 284 temp.mp4"
rm "Session - 284 temp.aac"

# 19
# Session 251 - Communicate your brand identity on iOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/251/4/52fb4c75-99ba-419f-90d6-bfef374ac966/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 251 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/251/4/52fb4c75-99ba-419f-90d6-bfef374ac966/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 251 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/251/4/52fb4c75-99ba-419f-90d6-bfef374ac966/subtitles/en/prog_index.m3u8 -c copy "Session - 251 temp.vtt"
ffmpeg -i "Session - 251 temp.mp4" -i "Session - 251 temp.aac" -i "Session - 251 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 251 - Communicate your brand identity on iOS (1440p).mp4"
rm "Session - 251 temp.vtt"
rm "Session - 251 temp.mp4"
rm "Session - 251 temp.aac"

# 20
# Session 322 - Compose advanced graphics effects with SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/322/4/db4c622a-2091-45ef-a024-df317a5b55a5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 322 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/322/4/db4c622a-2091-45ef-a024-df317a5b55a5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 322 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/322/4/db4c622a-2091-45ef-a024-df317a5b55a5/subtitles/en/prog_index.m3u8 -c copy "Session - 322 temp.vtt"
ffmpeg -i "Session - 322 temp.mp4" -i "Session - 322 temp.aac" -i "Session - 322 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 322 - Compose advanced graphics effects with SwiftUI (1440p).mp4"
rm "Session - 322 temp.vtt"
rm "Session - 322 temp.mp4"
rm "Session - 322 temp.aac"

# 21
# Session 290 - Craft clear names for features and labels in your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/290/4/6a4ef6cd-2a95-432c-aac9-315cb3cb7ff6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 290 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/290/4/6a4ef6cd-2a95-432c-aac9-315cb3cb7ff6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 290 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/290/4/6a4ef6cd-2a95-432c-aac9-315cb3cb7ff6/subtitles/en/prog_index.m3u8 -c copy "Session - 290 temp.vtt"
ffmpeg -i "Session - 290 temp.mp4" -i "Session - 290 temp.aac" -i "Session - 290 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 290 - Craft clear names for features and labels in your app (1440p).mp4"
rm "Session - 290 temp.vtt"
rm "Session - 290 temp.mp4"
rm "Session - 290 temp.aac"

# 22
# Session 375 - Create high quality images using Image Playground
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/375/4/01104285-3253-4b2d-80c3-0d5cdf95c97e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 375 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/375/4/01104285-3253-4b2d-80c3-0d5cdf95c97e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 375 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/375/4/01104285-3253-4b2d-80c3-0d5cdf95c97e/subtitles/en/prog_index.m3u8 -c copy "Session - 375 temp.vtt"
ffmpeg -i "Session - 375 temp.mp4" -i "Session - 375 temp.aac" -i "Session - 375 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 375 - Create high quality images using Image Playground (1440p).mp4"
rm "Session - 375 temp.vtt"
rm "Session - 375 temp.mp4"
rm "Session - 375 temp.aac"

# 23
# Session 226 - Create live communication experiences 
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/226/4/f8343d5b-0c78-4396-be05-956666fb4ae0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 226 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/226/4/f8343d5b-0c78-4396-be05-956666fb4ae0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 226 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/226/4/f8343d5b-0c78-4396-be05-956666fb4ae0/subtitles/en/prog_index.m3u8 -c copy "Session - 226 temp.vtt"
ffmpeg -i "Session - 226 temp.mp4" -i "Session - 226 temp.aac" -i "Session - 226 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 226 - Create live communication experiences  (1440p).mp4"
rm "Session - 226 temp.vtt"
rm "Session - 226 temp.mp4"
rm "Session - 226 temp.aac"

# 24
# Session 299 - Create robust evaluations for agentic apps
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/299/4/ef9fbc06-fc78-4896-9848-0f0fe2e75fb9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 299 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/299/4/ef9fbc06-fc78-4896-9848-0f0fe2e75fb9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 299 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/299/4/ef9fbc06-fc78-4896-9848-0f0fe2e75fb9/subtitles/en/prog_index.m3u8 -c copy "Session - 299 temp.vtt"
ffmpeg -i "Session - 299 temp.mp4" -i "Session - 299 temp.aac" -i "Session - 299 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 299 - Create robust evaluations for agentic apps (1440p).mp4"
rm "Session - 299 temp.vtt"
rm "Session - 299 temp.mp4"
rm "Session - 299 temp.aac"

# 25
# Session 227 - Create UI prototypes using agents in Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/227/4/f96c1da6-a49b-4d9a-8612-340d198d201b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 227 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/227/4/f96c1da6-a49b-4d9a-8612-340d198d201b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 227 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/227/4/f96c1da6-a49b-4d9a-8612-340d198d201b/subtitles/en/prog_index.m3u8 -c copy "Session - 227 temp.vtt"
ffmpeg -i "Session - 227 temp.mp4" -i "Session - 227 temp.aac" -i "Session - 227 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 227 - Create UI prototypes using agents in Xcode (1440p).mp4"
rm "Session - 227 temp.vtt"
rm "Session - 227 temp.mp4"
rm "Session - 227 temp.aac"

# 26
# Session 216 - Create web extensions for Safari
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/216/5/4fceecc8-1e28-465c-b894-fd0d03067c18/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 216 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/216/5/4fceecc8-1e28-465c-b894-fd0d03067c18/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 216 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/216/5/4fceecc8-1e28-465c-b894-fd0d03067c18/subtitles/en/prog_index.m3u8 -c copy "Session - 216 temp.vtt"
ffmpeg -i "Session - 216 temp.mp4" -i "Session - 216 temp.aac" -i "Session - 216 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 216 - Create web extensions for Safari (1440p).mp4"
rm "Session - 216 temp.vtt"
rm "Session - 216 temp.mp4"
rm "Session - 216 temp.aac"

# 27
# Session 243 - Debug and profile agentic app experiences with Instruments
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/243/4/127c397a-8124-4f3d-ad18-ac2a1d275803/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 243 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/243/4/127c397a-8124-4f3d-ad18-ac2a1d275803/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 243 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/243/4/127c397a-8124-4f3d-ad18-ac2a1d275803/subtitles/en/prog_index.m3u8 -c copy "Session - 243 temp.vtt"
ffmpeg -i "Session - 243 temp.mp4" -i "Session - 243 temp.aac" -i "Session - 243 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 243 - Debug and profile agentic app experiences with Instruments (1440p).mp4"
rm "Session - 243 temp.vtt"
rm "Session - 243 temp.mp4"
rm "Session - 243 temp.aac"

# 28
# Session 207 - Deliver workout insights with HealthKit workout zones
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/207/5/8627c1d4-7a34-46f2-8491-f0d1c138edd1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 207 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/207/5/8627c1d4-7a34-46f2-8491-f0d1c138edd1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 207 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/207/5/8627c1d4-7a34-46f2-8491-f0d1c138edd1/subtitles/en/prog_index.m3u8 -c copy "Session - 207 temp.vtt"
ffmpeg -i "Session - 207 temp.mp4" -i "Session - 207 temp.aac" -i "Session - 207 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 207 - Deliver workout insights with HealthKit workout zones (1440p).mp4"
rm "Session - 207 temp.vtt"
rm "Session - 207 temp.mp4"
rm "Session - 207 temp.aac"

# 29
# Session 234 - Design immersive environments for visionOS apps and the spatial web
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/234/4/88f2dbdd-e1b1-4b50-9fa0-69a32ac768b2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 234 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/234/4/88f2dbdd-e1b1-4b50-9fa0-69a32ac768b2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 234 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/234/4/88f2dbdd-e1b1-4b50-9fa0-69a32ac768b2/subtitles/en/prog_index.m3u8 -c copy "Session - 234 temp.vtt"
ffmpeg -i "Session - 234 temp.mp4" -i "Session - 234 temp.aac" -i "Session - 234 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 234 - Design immersive environments for visionOS apps and the spatial web (1440p).mp4"
rm "Session - 234 temp.vtt"
rm "Session - 234 temp.mp4"
rm "Session - 234 temp.aac"

# 30
# Session 292 - Design intuitive search experiences
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/292/5/05adbfdf-d9ba-4a6d-8d2f-f43593907f55/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 292 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/292/5/05adbfdf-d9ba-4a6d-8d2f-f43593907f55/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 292 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/292/5/05adbfdf-d9ba-4a6d-8d2f-f43593907f55/subtitles/en/prog_index.m3u8 -c copy "Session - 292 temp.vtt"
ffmpeg -i "Session - 292 temp.mp4" -i "Session - 292 temp.aac" -i "Session - 292 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 292 - Design intuitive search experiences (1440p).mp4"
rm "Session - 292 temp.vtt"
rm "Session - 292 temp.mp4"
rm "Session - 292 temp.aac"

# 31
# Session 252 - Design no-code games with Reality Composer Pro 3
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/252/6/572c2388-69f6-4e57-9eba-c71b65f5f6ed/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 252 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/252/6/572c2388-69f6-4e57-9eba-c71b65f5f6ed/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 252 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/252/6/572c2388-69f6-4e57-9eba-c71b65f5f6ed/subtitles/en/prog_index.m3u8 -c copy "Session - 252 temp.vtt"
ffmpeg -i "Session - 252 temp.mp4" -i "Session - 252 temp.aac" -i "Session - 252 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 252 - Design no-code games with Reality Composer Pro 3 (1440p).mp4"
rm "Session - 252 temp.vtt"
rm "Session - 252 temp.mp4"
rm "Session - 252 temp.aac"

# 32
# Session 389 - Discover container machines
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/389/4/8dd035e7-0481-4028-b4bd-e91ba3634198/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 389 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/389/4/8dd035e7-0481-4028-b4bd-e91ba3634198/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 389 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/389/4/8dd035e7-0481-4028-b4bd-e91ba3634198/subtitles/en/prog_index.m3u8 -c copy "Session - 389 temp.vtt"
ffmpeg -i "Session - 389 temp.mp4" -i "Session - 389 temp.aac" -i "Session - 389 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 389 - Discover container machines (1440p).mp4"
rm "Session - 389 temp.vtt"
rm "Session - 389 temp.mp4"
rm "Session - 389 temp.aac"

# 33
# Session 256 - Discover generated subtitles and subtitle styles
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/256/4/d28efb5e-5550-468d-b1d1-caec51ce55e6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 256 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/256/4/d28efb5e-5550-468d-b1d1-caec51ce55e6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 256 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/256/4/d28efb5e-5550-468d-b1d1-caec51ce55e6/subtitles/en/prog_index.m3u8 -c copy "Session - 256 temp.vtt"
ffmpeg -i "Session - 256 temp.mp4" -i "Session - 256 temp.aac" -i "Session - 256 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 256 - Discover generated subtitles and subtitle styles (1440p).mp4"
rm "Session - 256 temp.vtt"
rm "Session - 256 temp.mp4"
rm "Session - 256 temp.aac"

# 34
# Session 345 - Discover new capabilities in the App Intents framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/345/4/bc719e14-772a-4737-aceb-6e54cda6b511/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 345 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/345/4/bc719e14-772a-4737-aceb-6e54cda6b511/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 345 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/345/4/bc719e14-772a-4737-aceb-6e54cda6b511/subtitles/en/prog_index.m3u8 -c copy "Session - 345 temp.vtt"
ffmpeg -i "Session - 345 temp.mp4" -i "Session - 345 temp.aac" -i "Session - 345 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 345 - Discover new capabilities in the App Intents framework (1440p).mp4"
rm "Session - 345 temp.vtt"
rm "Session - 345 temp.mp4"
rm "Session - 345 temp.aac"

# 35
# Session 282 - Discover the Spatial Preview framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/282/5/958c34c9-f20e-4c6d-826a-eeed7ce7ba9e/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 282 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/282/5/958c34c9-f20e-4c6d-826a-eeed7ce7ba9e/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 282 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/282/5/958c34c9-f20e-4c6d-826a-eeed7ce7ba9e/subtitles/en/prog_index.m3u8 -c copy "Session - 282 temp.vtt"
ffmpeg -i "Session - 282 temp.mp4" -i "Session - 282 temp.aac" -i "Session - 282 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 282 - Discover the Spatial Preview framework (1440p).mp4"
rm "Session - 282 temp.vtt"
rm "Session - 282 temp.mp4"
rm "Session - 282 temp.aac"

# 36
# Session 285 - Discover USDKit and what’s new in OpenUSD
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/285/4/335150b6-c2b8-4711-a632-45a34d449eac/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 285 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/285/4/335150b6-c2b8-4711-a632-45a34d449eac/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 285 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/285/4/335150b6-c2b8-4711-a632-45a34d449eac/subtitles/en/prog_index.m3u8 -c copy "Session - 285 temp.vtt"
ffmpeg -i "Session - 285 temp.mp4" -i "Session - 285 temp.aac" -i "Session - 285 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 285 - Discover USDKit and what’s new in OpenUSD (1440p).mp4"
rm "Session - 285 temp.vtt"
rm "Session - 285 temp.mp4"
rm "Session - 285 temp.aac"

# 37
# Session 325 - Dive into Core AI model authoring and optimization
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/325/5/8d08c9d4-3c64-49e1-8590-8b76bd9ad4cb/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 325 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/325/5/8d08c9d4-3c64-49e1-8590-8b76bd9ad4cb/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 325 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/325/5/8d08c9d4-3c64-49e1-8590-8b76bd9ad4cb/subtitles/en/prog_index.m3u8 -c copy "Session - 325 temp.vtt"
ffmpeg -i "Session - 325 temp.mp4" -i "Session - 325 temp.aac" -i "Session - 325 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 325 - Dive into Core AI model authoring and optimization (1440p).mp4"
rm "Session - 325 temp.vtt"
rm "Session - 325 temp.mp4"
rm "Session - 325 temp.aac"

# 38
# Session 321 - Dive into lazy stacks and scrolling with SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/321/5/78830752-d07d-4d89-aeab-94405c084de9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 321 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/321/5/78830752-d07d-4d89-aeab-94405c084de9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 321 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/321/5/78830752-d07d-4d89-aeab-94405c084de9/subtitles/en/prog_index.m3u8 -c copy "Session - 321 temp.vtt"
ffmpeg -i "Session - 321 temp.mp4" -i "Session - 321 temp.aac" -i "Session - 321 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 321 - Dive into lazy stacks and scrolling with SwiftUI (1440p).mp4"
rm "Session - 321 temp.vtt"
rm "Session - 321 temp.mp4"
rm "Session - 321 temp.aac"

# 39
# Session 370 - Elevate your app’s text experience with TextKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/370/5/f61dbe38-7302-451a-b3ab-9851d5746315/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 370 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/370/5/f61dbe38-7302-451a-b3ab-9851d5746315/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 370 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/370/5/f61dbe38-7302-451a-b3ab-9851d5746315/subtitles/en/prog_index.m3u8 -c copy "Session - 370 temp.vtt"
ffmpeg -i "Session - 370 temp.mp4" -i "Session - 370 temp.aac" -i "Session - 370 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 370 - Elevate your app’s text experience with TextKit (1440p).mp4"
rm "Session - 370 temp.vtt"
rm "Session - 370 temp.mp4"
rm "Session - 370 temp.aac"

# 40
# Session 305 - Enhance RAW image processing with Core Image
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/305/5/d8d5f3ce-0ff1-45a3-a630-436743477c62/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 305 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/305/5/d8d5f3ce-0ff1-45a3-a630-436743477c62/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 305 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/305/5/d8d5f3ce-0ff1-45a3-a630-436743477c62/subtitles/en/prog_index.m3u8 -c copy "Session - 305 temp.vtt"
ffmpeg -i "Session - 305 temp.mp4" -i "Session - 305 temp.aac" -i "Session - 305 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 305 - Enhance RAW image processing with Core Image (1440p).mp4"
rm "Session - 305 temp.vtt"
rm "Session - 305 temp.mp4"
rm "Session - 305 temp.aac"

# 41
# Session 219 - Enhance the accessibility of your reading app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/219/4/da70a3a7-e193-4513-904f-991788c1fa81/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 219 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/219/4/da70a3a7-e193-4513-904f-991788c1fa81/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 219 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/219/4/da70a3a7-e193-4513-904f-991788c1fa81/subtitles/en/prog_index.m3u8 -c copy "Session - 219 temp.vtt"
ffmpeg -i "Session - 219 temp.mp4" -i "Session - 219 temp.aac" -i "Session - 219 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 219 - Enhance the accessibility of your reading app (1440p).mp4"
rm "Session - 219 temp.vtt"
rm "Session - 219 temp.mp4"
rm "Session - 219 temp.aac"

# 42
# Session 205 - Enhance your presence on the App Store
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/205/4/47ee16f9-fba0-48a3-9d60-065befef7a95/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 205 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/205/4/47ee16f9-fba0-48a3-9d60-065befef7a95/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 205 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/205/4/47ee16f9-fba0-48a3-9d60-065befef7a95/subtitles/en/prog_index.m3u8 -c copy "Session - 205 temp.vtt"
ffmpeg -i "Session - 205 temp.mp4" -i "Session - 205 temp.aac" -i "Session - 205 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 205 - Enhance your presence on the App Store (1440p).mp4"
rm "Session - 205 temp.vtt"
rm "Session - 205 temp.mp4"
rm "Session - 205 temp.aac"

# 43
# Session 224 - Expand the capabilities of your Virtualization app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/224/5/33a91529-8caf-409e-9c54-1b8952744651/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 224 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/224/5/33a91529-8caf-409e-9c54-1b8952744651/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 224 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/224/5/33a91529-8caf-409e-9c54-1b8952744651/subtitles/en/prog_index.m3u8 -c copy "Session - 224 temp.vtt"
ffmpeg -i "Session - 224 temp.mp4" -i "Session - 224 temp.aac" -i "Session - 224 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 224 - Expand the capabilities of your Virtualization app (1440p).mp4"
rm "Session - 224 temp.vtt"
rm "Session - 224 temp.mp4"
rm "Session - 224 temp.aac"

# 44
# Session 343 - Explore advanced App Intents features for Siri and Apple Intelligence
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/343/4/00190d1d-55b6-4eb2-9ee3-e09f3d8d1c7d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 343 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/343/4/00190d1d-55b6-4eb2-9ee3-e09f3d8d1c7d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 343 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/343/4/00190d1d-55b6-4eb2-9ee3-e09f3d8d1c7d/subtitles/en/prog_index.m3u8 -c copy "Session - 343 temp.vtt"
ffmpeg -i "Session - 343 temp.mp4" -i "Session - 343 temp.aac" -i "Session - 343 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 343 - Explore advanced App Intents features for Siri and Apple Intelligence (1440p).mp4"
rm "Session - 343 temp.vtt"
rm "Session - 343 temp.mp4"
rm "Session - 343 temp.aac"

# 45
# Session 279 - Explore advances in RealityKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/279/4/ab575725-be7d-4348-a3ae-6595ef4070c4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 279 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/279/4/ab575725-be7d-4348-a3ae-6595ef4070c4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 279 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/279/4/ab575725-be7d-4348-a3ae-6595ef4070c4/subtitles/en/prog_index.m3u8 -c copy "Session - 279 temp.vtt"
ffmpeg -i "Session - 279 temp.mp4" -i "Session - 279 temp.aac" -i "Session - 279 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 279 - Explore advances in RealityKit (1440p).mp4"
rm "Session - 279 temp.vtt"
rm "Session - 279 temp.mp4"
rm "Session - 279 temp.aac"

# 46
# Session 233 - Explore distributed inference and training with MLX
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/233/4/379c319a-5718-4fd2-aac6-2f97180c5892/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 233 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/233/4/379c319a-5718-4fd2-aac6-2f97180c5892/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 233 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/233/4/379c319a-5718-4fd2-aac6-2f97180c5892/subtitles/en/prog_index.m3u8 -c copy "Session - 233 temp.vtt"
ffmpeg -i "Session - 233 temp.mp4" -i "Session - 233 temp.aac" -i "Session - 233 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 233 - Explore distributed inference and training with MLX (1440p).mp4"
rm "Session - 233 temp.vtt"
rm "Session - 233 temp.mp4"
rm "Session - 233 temp.aac"

# 47
# Session 283 - Explore enhancements to visionOS object tracking
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/283/4/22b92960-c65b-450f-b42c-6d6bff64a9b4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 283 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/283/4/22b92960-c65b-450f-b42c-6d6bff64a9b4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 283 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/283/4/22b92960-c65b-450f-b42c-6d6bff64a9b4/subtitles/en/prog_index.m3u8 -c copy "Session - 283 temp.vtt"
ffmpeg -i "Session - 283 temp.mp4" -i "Session - 283 temp.aac" -i "Session - 283 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 283 - Explore enhancements to visionOS object tracking (1440p).mp4"
rm "Session - 283 temp.vtt"
rm "Session - 283 temp.mp4"
rm "Session - 283 temp.aac"

# 48
# Session 320 - Explore immersive website environments in visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/320/4/e1844891-477b-4612-ad8d-10e55bf395ba/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 320 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/320/4/e1844891-477b-4612-ad8d-10e55bf395ba/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 320 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/320/4/e1844891-477b-4612-ad8d-10e55bf395ba/subtitles/en/prog_index.m3u8 -c copy "Session - 320 temp.vtt"
ffmpeg -i "Session - 320 temp.mp4" -i "Session - 320 temp.aac" -i "Session - 320 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 320 - Explore immersive website environments in visionOS (1440p).mp4"
rm "Session - 320 temp.vtt"
rm "Session - 320 temp.mp4"
rm "Session - 320 temp.aac"

# 49
# Session 328 - Explore numerical computing in Swift with MLX
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/328/5/51d0ab0a-f401-4514-9f04-6b211897d3e8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 328 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/328/5/51d0ab0a-f401-4514-9f04-6b211897d3e8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 328 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/328/5/51d0ab0a-f401-4514-9f04-6b211897d3e8/subtitles/en/prog_index.m3u8 -c copy "Session - 328 temp.vtt"
ffmpeg -i "Session - 328 temp.mp4" -i "Session - 328 temp.aac" -i "Session - 328 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 328 - Explore numerical computing in Swift with MLX (1440p).mp4"
rm "Session - 328 temp.vtt"
rm "Session - 328 temp.mp4"
rm "Session - 328 temp.aac"

# 50
# Session 309 - Explore Retention Messaging in App Store Connect
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/309/4/afa0aec8-f216-43ed-bcb1-1a3742e49dac/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 309 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/309/4/afa0aec8-f216-43ed-bcb1-1a3742e49dac/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 309 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/309/4/afa0aec8-f216-43ed-bcb1-1a3742e49dac/subtitles/en/prog_index.m3u8 -c copy "Session - 309 temp.vtt"
ffmpeg -i "Session - 309 temp.mp4" -i "Session - 309 temp.aac" -i "Session - 309 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 309 - Explore Retention Messaging in App Store Connect (1440p).mp4"
rm "Session - 309 temp.vtt"
rm "Session - 309 temp.mp4"
rm "Session - 309 temp.aac"

# 51
# Session 281 - Extend Reality Composer Pro 3 functionality with Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/281/6/1aef704f-ccc6-4c1d-b7b7-94da42d29609/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 281 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/281/6/1aef704f-ccc6-4c1d-b7b7-94da42d29609/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 281 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/281/6/1aef704f-ccc6-4c1d-b7b7-94da42d29609/subtitles/en/prog_index.m3u8 -c copy "Session - 281 temp.vtt"
ffmpeg -i "Session - 281 temp.mp4" -i "Session - 281 temp.aac" -i "Session - 281 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 281 - Extend Reality Composer Pro 3 functionality with Xcode (1440p).mp4"
rm "Session - 281 temp.vtt"
rm "Session - 281 temp.mp4"
rm "Session - 281 temp.aac"

# 52
# Session 388 - Find and fix performance issues in your Metal games
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/388/4/682e727f-75f9-441f-81d9-2d6f38bde4b0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 388 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/388/4/682e727f-75f9-441f-81d9-2d6f38bde4b0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 388 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/388/4/682e727f-75f9-441f-81d9-2d6f38bde4b0/subtitles/en/prog_index.m3u8 -c copy "Session - 388 temp.vtt"
ffmpeg -i "Session - 388 temp.mp4" -i "Session - 388 temp.aac" -i "Session - 388 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 388 - Find and fix performance issues in your Metal games (1440p).mp4"
rm "Session - 388 temp.vtt"
rm "Session - 388 temp.mp4"
rm "Session - 388 temp.aac"

# 53
# Session 369 - Find your accessory with Bluetooth Channel Sounding
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/369/4/fea90204-fd38-4da4-b9e7-5dce37bc87d8/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 369 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/369/4/fea90204-fd38-4da4-b9e7-5dce37bc87d8/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 369 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/369/4/fea90204-fd38-4da4-b9e7-5dce37bc87d8/subtitles/en/prog_index.m3u8 -c copy "Session - 369 temp.vtt"
ffmpeg -i "Session - 369 temp.mp4" -i "Session - 369 temp.aac" -i "Session - 369 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 369 - Find your accessory with Bluetooth Channel Sounding (1440p).mp4"
rm "Session - 369 temp.vtt"
rm "Session - 369 temp.mp4"
rm "Session - 369 temp.aac"

# 54
# Session 394 - Get ready for WWDC26
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/394/3/957ab100-9008-44f0-804b-37ad25ee524c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 394 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/394/3/957ab100-9008-44f0-804b-37ad25ee524c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 394 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/394/3/957ab100-9008-44f0-804b-37ad25ee524c/subtitles/eng/prog_index.m3u8 -c copy "Session - 394 temp.vtt"
ffmpeg -i "Session - 394 temp.mp4" -i "Session - 394 temp.aac" -i "Session - 394 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 394 - Get ready for WWDC26 (1440p).mp4"
rm "Session - 394 temp.vtt"
rm "Session - 394 temp.mp4"
rm "Session - 394 temp.aac"

# 55
# Session 215 - Get started with the HTML Model Element
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/215/4/b7d159c9-ee29-45d9-80f5-87b6a1c90565/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 215 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/215/4/b7d159c9-ee29-45d9-80f5-87b6a1c90565/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 215 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/215/4/b7d159c9-ee29-45d9-80f5-87b6a1c90565/subtitles/en/prog_index.m3u8 -c copy "Session - 215 temp.vtt"
ffmpeg -i "Session - 215 temp.mp4" -i "Session - 215 temp.aac" -i "Session - 215 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 215 - Get started with the HTML Model Element (1440p).mp4"
rm "Session - 215 temp.vtt"
rm "Session - 215 temp.mp4"
rm "Session - 215 temp.aac"

# 56
# Session 260 - Get the most out of Device Hub
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/260/4/87d4b48f-1dfb-413f-a4f8-44d80b0f3432/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 260 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/260/4/87d4b48f-1dfb-413f-a4f8-44d80b0f3432/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 260 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/260/4/87d4b48f-1dfb-413f-a4f8-44d80b0f3432/subtitles/en/prog_index.m3u8 -c copy "Session - 260 temp.vtt"
ffmpeg -i "Session - 260 temp.mp4" -i "Session - 260 temp.aac" -i "Session - 260 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 260 - Get the most out of Device Hub (1440p).mp4"
rm "Session - 260 temp.vtt"
rm "Session - 260 temp.mp4"
rm "Session - 260 temp.aac"

# 57
# Session 304 - Implement high resolution photo capture
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/304/4/7a18d6ee-a63d-4402-bfb6-85a21dfac7dd/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 304 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/304/4/7a18d6ee-a63d-4402-bfb6-85a21dfac7dd/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 304 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/304/4/7a18d6ee-a63d-4402-bfb6-85a21dfac7dd/subtitles/en/prog_index.m3u8 -c copy "Session - 304 temp.vtt"
ffmpeg -i "Session - 304 temp.mp4" -i "Session - 304 temp.aac" -i "Session - 304 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 304 - Implement high resolution photo capture (1440p).mp4"
rm "Session - 304 temp.vtt"
rm "Session - 304 temp.mp4"
rm "Session - 304 temp.aac"

# 58
# Session 335 - Improve your prompts by hill-climbing with Evaluations
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/335/4/a464d330-6aa2-456d-9a07-eae997aef08c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 335 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/335/4/a464d330-6aa2-456d-9a07-eae997aef08c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 335 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/335/4/a464d330-6aa2-456d-9a07-eae997aef08c/subtitles/en/prog_index.m3u8 -c copy "Session - 335 temp.vtt"
ffmpeg -i "Session - 335 temp.mp4" -i "Session - 335 temp.aac" -i "Session - 335 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 335 - Improve your prompts by hill-climbing with Evaluations (1440p).mp4"
rm "Session - 335 temp.vtt"
rm "Session - 335 temp.mp4"
rm "Session - 335 temp.aac"

# 59
# Session 254 - Integrate MusicKit into your app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/254/5/d4b2c60a-8a2a-41d1-a55a-0fd60d927798/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 254 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/254/5/d4b2c60a-8a2a-41d1-a55a-0fd60d927798/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 254 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/254/5/d4b2c60a-8a2a-41d1-a55a-0fd60d927798/subtitles/en/prog_index.m3u8 -c copy "Session - 254 temp.vtt"
ffmpeg -i "Session - 254 temp.mp4" -i "Session - 254 temp.aac" -i "Session - 254 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 254 - Integrate MusicKit into your app (1440p).mp4"
rm "Session - 254 temp.vtt"
rm "Session - 254 temp.mp4"
rm "Session - 254 temp.aac"

# 60
# Session 326 - Integrate on-device AI models into your app using Core AI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/326/5/7ff038e2-12cb-4b92-9f49-1d051db7ce5d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 326 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/326/5/7ff038e2-12cb-4b92-9f49-1d051db7ce5d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 326 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/326/5/7ff038e2-12cb-4b92-9f49-1d051db7ce5d/subtitles/en/prog_index.m3u8 -c copy "Session - 326 temp.vtt"
ffmpeg -i "Session - 326 temp.mp4" -i "Session - 326 temp.aac" -i "Session - 326 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 326 - Integrate on-device AI models into your app using Core AI (1440p).mp4"
rm "Session - 326 temp.vtt"
rm "Session - 326 temp.mp4"
rm "Session - 326 temp.aac"

# 61
# Session 280 - Iterate your spatial scenes faster with Reality Composer Pro 3
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/280/4/0f02d465-7874-4ac3-aac3-b1b792efecd3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 280 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/280/4/0f02d465-7874-4ac3-aac3-b1b792efecd3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 280 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/280/4/0f02d465-7874-4ac3-aac3-b1b792efecd3/subtitles/en/prog_index.m3u8 -c copy "Session - 280 temp.vtt"
ffmpeg -i "Session - 280 temp.mp4" -i "Session - 280 temp.aac" -i "Session - 280 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 280 - Iterate your spatial scenes faster with Reality Composer Pro 3 (1440p).mp4"
rm "Session - 280 temp.vtt"
rm "Session - 280 temp.mp4"
rm "Session - 280 temp.aac"

# 62
# Session 314 - Learn CSS Grid Lanes
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/314/4/72928edd-5728-4010-b8f0-27f1a7bdec8c/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 314 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/314/4/72928edd-5728-4010-b8f0-27f1a7bdec8c/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 314 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/314/4/72928edd-5728-4010-b8f0-27f1a7bdec8c/subtitles/en/prog_index.m3u8 -c copy "Session - 314 temp.vtt"
ffmpeg -i "Session - 314 temp.mp4" -i "Session - 314 temp.aac" -i "Session - 314 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 314 - Learn CSS Grid Lanes (1440p).mp4"
rm "Session - 314 temp.vtt"
rm "Session - 314 temp.mp4"
rm "Session - 314 temp.aac"

# 63
# Session 223 - Live Activities essentials
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/223/4/9098c495-ea8b-44f9-b852-f6eb64840161/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 223 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/223/4/9098c495-ea8b-44f9-b852-f6eb64840161/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 223 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/223/4/9098c495-ea8b-44f9-b852-f6eb64840161/subtitles/en/prog_index.m3u8 -c copy "Session - 223 temp.vtt"
ffmpeg -i "Session - 223 temp.mp4" -i "Session - 223 temp.aac" -i "Session - 223 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 223 - Live Activities essentials (1440p).mp4"
rm "Session - 223 temp.vtt"
rm "Session - 223 temp.mp4"
rm "Session - 223 temp.aac"

# 64
# Session 246 - LLM search using Core Spotlight
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/246/4/b390ab9d-d231-4cf5-9d1b-e4270ef5012b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 246 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/246/4/b390ab9d-d231-4cf5-9d1b-e4270ef5012b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 246 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/246/4/b390ab9d-d231-4cf5-9d1b-e4270ef5012b/subtitles/en/prog_index.m3u8 -c copy "Session - 246 temp.vtt"
ffmpeg -i "Session - 246 temp.mp4" -i "Session - 246 temp.aac" -i "Session - 246 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 246 - LLM search using Core Spotlight (1440p).mp4"
rm "Session - 246 temp.vtt"
rm "Session - 246 temp.mp4"
rm "Session - 246 temp.aac"

# 65
# Session 358 - Make your game great with touch
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/358/4/fdd21d54-a233-49d4-8d00-4dc51284515d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 358 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/358/4/fdd21d54-a233-49d4-8d00-4dc51284515d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 358 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/358/4/fdd21d54-a233-49d4-8d00-4dc51284515d/subtitles/en/prog_index.m3u8 -c copy "Session - 358 temp.vtt"
ffmpeg -i "Session - 358 temp.mp4" -i "Session - 358 temp.aac" -i "Session - 358 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 358 - Make your game great with touch (1440p).mp4"
rm "Session - 358 temp.vtt"
rm "Session - 358 temp.mp4"
rm "Session - 358 temp.aac"

# 66
# Session 324 - Meet Core AI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/324/4/3b67b624-4060-495f-9ba7-659805ee6b88/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 324 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/324/4/3b67b624-4060-495f-9ba7-659805ee6b88/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 324 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/324/4/3b67b624-4060-495f-9ba7-659805ee6b88/subtitles/en/prog_index.m3u8 -c copy "Session - 324 temp.vtt"
ffmpeg -i "Session - 324 temp.mp4" -i "Session - 324 temp.aac" -i "Session - 324 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 324 - Meet Core AI (1440p).mp4"
rm "Session - 324 temp.vtt"
rm "Session - 324 temp.mp4"
rm "Session - 324 temp.aac"

# 67
# Session 298 - Meet the Evaluations framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/298/5/0ffb7161-1edb-4e6f-872d-55be82c4402d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 298 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/298/5/0ffb7161-1edb-4e6f-872d-55be82c4402d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 298 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/298/5/0ffb7161-1edb-4e6f-872d-55be82c4402d/subtitles/en/prog_index.m3u8 -c copy "Session - 298 temp.vtt"
ffmpeg -i "Session - 298 temp.mp4" -i "Session - 298 temp.aac" -i "Session - 298 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 298 - Meet the Evaluations framework (1440p).mp4"
rm "Session - 298 temp.vtt"
rm "Session - 298 temp.mp4"
rm "Session - 298 temp.aac"

# 68
# Session 253 - Meet the Music Understanding framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/253/5/db1c3715-aaaf-42db-8e9e-66d2a0011430/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 253 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/253/5/db1c3715-aaaf-42db-8e9e-66d2a0011430/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 253 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/253/5/db1c3715-aaaf-42db-8e9e-66d2a0011430/subtitles/en/prog_index.m3u8 -c copy "Session - 253 temp.vtt"
ffmpeg -i "Session - 253 temp.mp4" -i "Session - 253 temp.aac" -i "Session - 253 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 253 - Meet the Music Understanding framework (1440p).mp4"
rm "Session - 253 temp.vtt"
rm "Session - 253 temp.mp4"
rm "Session - 253 temp.aac"

# 69
# Session 222 - Meet the new MetricKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/222/4/86b76599-f095-4bd8-8004-f1dbd1bacb84/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 222 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/222/4/86b76599-f095-4bd8-8004-f1dbd1bacb84/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 222 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/222/4/86b76599-f095-4bd8-8004-f1dbd1bacb84/subtitles/en/prog_index.m3u8 -c copy "Session - 222 temp.vtt"
ffmpeg -i "Session - 222 temp.mp4" -i "Session - 222 temp.aac" -i "Session - 222 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 222 - Meet the new MetricKit (1440p).mp4"
rm "Session - 222 temp.vtt"
rm "Session - 222 temp.mp4"
rm "Session - 222 temp.aac"

# 70
# Session 312 - Meet the Now Playing framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/312/5/3f128d25-f1c6-49d3-a9c0-0bdc22af5f95/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 312 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/312/5/3f128d25-f1c6-49d3-a9c0-0bdc22af5f95/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 312 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/312/5/3f128d25-f1c6-49d3-a9c0-0bdc22af5f95/subtitles/en/prog_index.m3u8 -c copy "Session - 312 temp.vtt"
ffmpeg -i "Session - 312 temp.mp4" -i "Session - 312 temp.aac" -i "Session - 312 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 312 - Meet the Now Playing framework (1440p).mp4"
rm "Session - 312 temp.vtt"
rm "Session - 312 temp.mp4"
rm "Session - 312 temp.aac"

# 71
# Session 379 - Meet Trust Insights
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/379/4/e12c4703-5c00-44f7-a5f8-80f6e5b7ebd5/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 379 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/379/4/e12c4703-5c00-44f7-a5f8-80f6e5b7ebd5/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 379 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/379/4/e12c4703-5c00-44f7-a5f8-80f6e5b7ebd5/subtitles/en/prog_index.m3u8 -c copy "Session - 379 temp.vtt"
ffmpeg -i "Session - 379 temp.mp4" -i "Session - 379 temp.aac" -i "Session - 379 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 379 - Meet Trust Insights (1440p).mp4"
rm "Session - 379 temp.vtt"
rm "Session - 379 temp.mp4"
rm "Session - 379 temp.aac"

# 72
# Session 267 - Migrate to Swift Testing
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/267/4/d54e4861-10d9-4d4d-9952-3fe311cd2dc4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 267 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/267/4/d54e4861-10d9-4d4d-9952-3fe311cd2dc4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 267 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/267/4/d54e4861-10d9-4d4d-9952-3fe311cd2dc4/subtitles/en/prog_index.m3u8 -c copy "Session - 267 temp.vtt"
ffmpeg -i "Session - 267 temp.mp4" -i "Session - 267 temp.aac" -i "Session - 267 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 267 - Migrate to Swift Testing (1440p).mp4"
rm "Session - 267 temp.vtt"
rm "Session - 267 temp.mp4"
rm "Session - 267 temp.aac"

# 73
# Session 289 - Modernize your AppKit app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/289/5/6a2a7cfa-56a1-4cbb-ae54-1f229e1708ae/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 289 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/289/5/6a2a7cfa-56a1-4cbb-ae54-1f229e1708ae/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 289 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/289/5/6a2a7cfa-56a1-4cbb-ae54-1f229e1708ae/subtitles/en/prog_index.m3u8 -c copy "Session - 289 temp.vtt"
ffmpeg -i "Session - 289 temp.mp4" -i "Session - 289 temp.aac" -i "Session - 289 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 289 - Modernize your AppKit app (1440p).mp4"
rm "Session - 289 temp.vtt"
rm "Session - 289 temp.mp4"
rm "Session - 289 temp.aac"

# 74
# Session 278 - Modernize your UIKit app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/278/4/8c3f2e61-52d3-4915-9543-96e2f13adc8b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 278 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/278/4/8c3f2e61-52d3-4915-9543-96e2f13adc8b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 278 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/278/4/8c3f2e61-52d3-4915-9543-96e2f13adc8b/subtitles/en/prog_index.m3u8 -c copy "Session - 278 temp.vtt"
ffmpeg -i "Session - 278 temp.mp4" -i "Session - 278 temp.aac" -i "Session - 278 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 278 - Modernize your UIKit app (1440p).mp4"
rm "Session - 278 temp.vtt"
rm "Session - 278 temp.mp4"
rm "Session - 278 temp.aac"

# 75
# Session 391 - Offer subscriptions to groups and organizations
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/391/4/84af4bfe-b42d-4350-91d0-5581899a3e9d/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 391 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/391/4/84af4bfe-b42d-4350-91d0-5581899a3e9d/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 391 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/391/4/84af4bfe-b42d-4350-91d0-5581899a3e9d/subtitles/en/prog_index.m3u8 -c copy "Session - 391 temp.vtt"
ffmpeg -i "Session - 391 temp.mp4" -i "Session - 391 temp.aac" -i "Session - 391 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 391 - Offer subscriptions to groups and organizations (1440p).mp4"
rm "Session - 391 temp.vtt"
rm "Session - 391 temp.mp4"
rm "Session - 391 temp.aac"

# 76
# Session 330 - Optimize custom machine learning operations with Metal tensors
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/330/4/0ff2c290-e47b-4d88-8a8f-0634e11506a4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 330 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/330/4/0ff2c290-e47b-4d88-8a8f-0634e11506a4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 330 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/330/4/0ff2c290-e47b-4d88-8a8f-0634e11506a4/subtitles/en/prog_index.m3u8 -c copy "Session - 330 temp.vtt"
ffmpeg -i "Session - 330 temp.mp4" -i "Session - 330 temp.aac" -i "Session - 330 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 330 - Optimize custom machine learning operations with Metal tensors (1440p).mp4"
rm "Session - 330 temp.vtt"
rm "Session - 330 temp.mp4"
rm "Session - 330 temp.aac"

# 77
# Session 221 - Prepare your tvOS apps for Dynamic Type
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/221/5/ada10ebd-34f8-4f57-92b5-4b3cd6281267/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 221 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/221/5/ada10ebd-34f8-4f57-92b5-4b3cd6281267/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 221 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/221/5/ada10ebd-34f8-4f57-92b5-4b3cd6281267/subtitles/en/prog_index.m3u8 -c copy "Session - 221 temp.vtt"
ffmpeg -i "Session - 221 temp.mp4" -i "Session - 221 temp.aac" -i "Session - 221 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 221 - Prepare your tvOS apps for Dynamic Type (1440p).mp4"
rm "Session - 221 temp.vtt"
rm "Session - 221 temp.mp4"
rm "Session - 221 temp.aac"

# 78
# Session 250 - Principles of great design
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/250/4/ad804f32-2805-48aa-891c-8c742579acab/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 250 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/250/4/ad804f32-2805-48aa-891c-8c742579acab/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 250 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/250/4/ad804f32-2805-48aa-891c-8c742579acab/subtitles/en/prog_index.m3u8 -c copy "Session - 250 temp.vtt"
ffmpeg -i "Session - 250 temp.mp4" -i "Session - 250 temp.aac" -i "Session - 250 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 250 - Principles of great design (1440p).mp4"
rm "Session - 250 temp.vtt"
rm "Session - 250 temp.mp4"
rm "Session - 250 temp.aac"

# 79
# Session 268 - Profile, fix, and verify - Improve app responsiveness with Instruments
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/268/4/7d94575d-e65b-4033-811f-199586ac587a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 268 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/268/4/7d94575d-e65b-4033-811f-199586ac587a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 268 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/268/4/7d94575d-e65b-4033-811f-199586ac587a/subtitles/en/prog_index.m3u8 -c copy "Session - 268 temp.vtt"
ffmpeg -i "Session - 268 temp.mp4" -i "Session - 268 temp.aac" -i "Session - 268 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 268 - Profile, fix, and verify - Improve app responsiveness with Instruments (1440p).mp4"
rm "Session - 268 temp.vtt"
rm "Session - 268 temp.mp4"
rm "Session - 268 temp.aac"

# 80
# Session 203 - Read between the strokes with PencilKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/203/4/eb979cd5-af5b-4091-87ec-4839e8d131b9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 203 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/203/4/eb979cd5-af5b-4091-87ec-4839e8d131b9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 203 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/203/4/eb979cd5-af5b-4091-87ec-4839e8d131b9/subtitles/en/prog_index.m3u8 -c copy "Session - 203 temp.vtt"
ffmpeg -i "Session - 203 temp.mp4" -i "Session - 203 temp.aac" -i "Session - 203 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 203 - Read between the strokes with PencilKit (1440p).mp4"
rm "Session - 203 temp.vtt"
rm "Session - 203 temp.mp4"
rm "Session - 203 temp.aac"

# 81
# Session 315 - Rediscover the HTML select element
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/315/4/f3bd9835-9ced-4f6a-a0f1-655000972674/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 315 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/315/4/f3bd9835-9ced-4f6a-a0f1-655000972674/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 315 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/315/4/f3bd9835-9ced-4f6a-a0f1-655000972674/subtitles/en/prog_index.m3u8 -c copy "Session - 315 temp.vtt"
ffmpeg -i "Session - 315 temp.mp4" -i "Session - 315 temp.aac" -i "Session - 315 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 315 - Rediscover the HTML select element (1440p).mp4"
rm "Session - 315 temp.vtt"
rm "Session - 315 temp.mp4"
rm "Session - 315 temp.aac"

# 82
# Session 220 - Refine accessibility for custom controls
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/220/4/945f8d34-8427-4476-ae75-34edc4a9c3f9/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 220 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/220/4/945f8d34-8427-4476-ae75-34edc4a9c3f9/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 220 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/220/4/945f8d34-8427-4476-ae75-34edc4a9c3f9/subtitles/en/prog_index.m3u8 -c copy "Session - 220 temp.vtt"
ffmpeg -i "Session - 220 temp.mp4" -i "Session - 220 temp.aac" -i "Session - 220 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 220 - Refine accessibility for custom controls (1440p).mp4"
rm "Session - 220 temp.vtt"
rm "Session - 220 temp.mp4"
rm "Session - 220 temp.aac"

# 83
# Session 212 - Rev up your CarPlay app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/212/4/c594f5de-1012-4f5a-bad4-95ca200f5f58/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 212 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/212/4/c594f5de-1012-4f5a-bad4-95ca200f5f58/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 212 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/212/4/c594f5de-1012-4f5a-bad4-95ca200f5f58/subtitles/en/prog_index.m3u8 -c copy "Session - 212 temp.vtt"
ffmpeg -i "Session - 212 temp.mp4" -i "Session - 212 temp.aac" -i "Session - 212 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 212 - Rev up your CarPlay app (1440p).mp4"
rm "Session - 212 temp.vtt"
rm "Session - 212 temp.mp4"
rm "Session - 212 temp.aac"

# 84
# Session 232 - Run local agentic AI on the Mac using MLX
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/232/4/f309be4a-8e5b-4c0f-843a-fcbd84c5e2d1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 232 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/232/4/f309be4a-8e5b-4c0f-843a-fcbd84c5e2d1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 232 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/232/4/f309be4a-8e5b-4c0f-843a-fcbd84c5e2d1/subtitles/en/prog_index.m3u8 -c copy "Session - 232 temp.vtt"
ffmpeg -i "Session - 232 temp.mp4" -i "Session - 232 temp.aac" -i "Session - 232 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 232 - Run local agentic AI on the Mac using MLX (1440p).mp4"
rm "Session - 232 temp.vtt"
rm "Session - 232 temp.mp4"
rm "Session - 232 temp.aac"

# 85
# Session 347 - Secure your app - mitigate risks to agentic features
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/347/4/07cdbfeb-280a-49e3-aeba-c18fbb0d32b4/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 347 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/347/4/07cdbfeb-280a-49e3-aeba-c18fbb0d32b4/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 347 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/347/4/07cdbfeb-280a-49e3-aeba-c18fbb0d32b4/subtitles/en/prog_index.m3u8 -c copy "Session - 347 temp.vtt"
ffmpeg -i "Session - 347 temp.mp4" -i "Session - 347 temp.aac" -i "Session - 347 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 347 - Secure your app - mitigate risks to agentic features (1440p).mp4"
rm "Session - 347 temp.vtt"
rm "Session - 347 temp.mp4"
rm "Session - 347 temp.aac"

# 86
# Session 201 - Secure your apps with App Attest
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/201/4/d3eb2e5b-5104-4aee-a754-9985008a5b06/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 201 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/201/4/d3eb2e5b-5104-4aee-a754-9985008a5b06/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 201 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/201/4/d3eb2e5b-5104-4aee-a754-9985008a5b06/subtitles/en/prog_index.m3u8 -c copy "Session - 201 temp.vtt"
ffmpeg -i "Session - 201 temp.mp4" -i "Session - 201 temp.aac" -i "Session - 201 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 201 - Secure your apps with App Attest (1440p).mp4"
rm "Session - 201 temp.vtt"
rm "Session - 201 temp.mp4"
rm "Session - 201 temp.aac"

# 87
# Session 357 - Speedrun your game port with agentic coding
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/357/5/5cfd0ceb-598f-4535-9abc-12e22a778326/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 357 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/357/5/5cfd0ceb-598f-4535-9abc-12e22a778326/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 357 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/357/5/5cfd0ceb-598f-4535-9abc-12e22a778326/subtitles/en/prog_index.m3u8 -c copy "Session - 357 temp.vtt"
ffmpeg -i "Session - 357 temp.mp4" -i "Session - 357 temp.aac" -i "Session - 357 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 357 - Speedrun your game port with agentic coding (1440p).mp4"
rm "Session - 357 temp.vtt"
rm "Session - 357 temp.mp4"
rm "Session - 357 temp.aac"

# 88
# Session 393 - Supercharge your spatial workflows with Reality Composer Pro 3
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/393/4/e68b947f-f7f3-49b5-b959-7a70fd9899c3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 393 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/393/4/e68b947f-f7f3-49b5-b959-7a70fd9899c3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 393 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/393/4/e68b947f-f7f3-49b5-b959-7a70fd9899c3/subtitles/en/prog_index.m3u8 -c copy "Session - 393 temp.vtt"
ffmpeg -i "Session - 393 temp.mp4" -i "Session - 393 temp.aac" -i "Session - 393 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 393 - Supercharge your spatial workflows with Reality Composer Pro 3 (1440p).mp4"
rm "Session - 393 temp.vtt"
rm "Session - 393 temp.mp4"
rm "Session - 393 temp.aac"

# 89
# Session 341 - Support the Center Stage front camera in your iOS app
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/341/4/fa1380a3-e2ab-4442-9302-817be212e991/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 341 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/341/4/fa1380a3-e2ab-4442-9302-817be212e991/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 341 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/341/4/fa1380a3-e2ab-4442-9302-817be212e991/subtitles/en/prog_index.m3u8 -c copy "Session - 341 temp.vtt"
ffmpeg -i "Session - 341 temp.mp4" -i "Session - 341 temp.aac" -i "Session - 341 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 341 - Support the Center Stage front camera in your iOS app (1440p).mp4"
rm "Session - 341 temp.vtt"
rm "Session - 341 temp.mp4"
rm "Session - 341 temp.aac"

# 90
# Session 213 - Translate your app using agents in Xcode
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/213/4/be1ee662-a447-4df4-89a5-5411447c0eeb/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 213 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/213/4/be1ee662-a447-4df4-89a5-5411447c0eeb/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 213 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/213/4/be1ee662-a447-4df4-89a5-5411447c0eeb/subtitles/en/prog_index.m3u8 -c copy "Session - 213 temp.vtt"
ffmpeg -i "Session - 213 temp.mp4" -i "Session - 213 temp.aac" -i "Session - 213 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 213 - Translate your app using agents in Xcode (1440p).mp4"
rm "Session - 213 temp.vtt"
rm "Session - 213 temp.mp4"
rm "Session - 213 temp.aac"

# 91
# Session 378 - Unlock in-game content with StoreKit and Background Assets
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/378/6/16c93f95-21e8-4f7f-bb96-2b3c682fa6c7/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 378 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/378/6/16c93f95-21e8-4f7f-bb96-2b3c682fa6c7/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 378 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/378/6/16c93f95-21e8-4f7f-bb96-2b3c682fa6c7/subtitles/en/prog_index.m3u8 -c copy "Session - 378 temp.vtt"
ffmpeg -i "Session - 378 temp.mp4" -i "Session - 378 temp.aac" -i "Session - 378 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 378 - Unlock in-game content with StoreKit and Background Assets (1440p).mp4"
rm "Session - 378 temp.vtt"
rm "Session - 378 temp.mp4"
rm "Session - 378 temp.aac"

# 92
# Session 372 - Unwrap PaperKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/372/4/012a7de6-cf54-420f-aaf7-02ea568485bf/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 372 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/372/4/012a7de6-cf54-420f-aaf7-02ea568485bf/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 372 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/372/4/012a7de6-cf54-420f-aaf7-02ea568485bf/subtitles/en/prog_index.m3u8 -c copy "Session - 372 temp.vtt"
ffmpeg -i "Session - 372 temp.mp4" -i "Session - 372 temp.aac" -i "Session - 372 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 372 - Unwrap PaperKit (1440p).mp4"
rm "Session - 372 temp.vtt"
rm "Session - 372 temp.mp4"
rm "Session - 372 temp.aac"

# 93
# Session 286 - Use foveated streaming to bring immersive content to visionOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/286/4/fa302edd-f95a-49f4-b51c-3899d49c6dec/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 286 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/286/4/fa302edd-f95a-49f4-b51c-3899d49c6dec/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 286 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/286/4/fa302edd-f95a-49f4-b51c-3899d49c6dec/subtitles/en/prog_index.m3u8 -c copy "Session - 286 temp.vtt"
ffmpeg -i "Session - 286 temp.mp4" -i "Session - 286 temp.aac" -i "Session - 286 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 286 - Use foveated streaming to bring immersive content to visionOS (1440p).mp4"
rm "Session - 286 temp.vtt"
rm "Session - 286 temp.mp4"
rm "Session - 286 temp.aac"

# 94
# Session 272 - Use SwiftUI with AppKit and UIKit
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/272/5/e1e4aa9a-cbe2-4f83-9cea-3dcaae19afd6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 272 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/272/5/e1e4aa9a-cbe2-4f83-9cea-3dcaae19afd6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 272 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/272/5/e1e4aa9a-cbe2-4f83-9cea-3dcaae19afd6/subtitles/en/prog_index.m3u8 -c copy "Session - 272 temp.vtt"
ffmpeg -i "Session - 272 temp.mp4" -i "Session - 272 temp.aac" -i "Session - 272 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 272 - Use SwiftUI with AppKit and UIKit (1440p).mp4"
rm "Session - 272 temp.vtt"
rm "Session - 272 temp.mp4"
rm "Session - 272 temp.aac"

# 95
# Session 295 - Validate your App Intents adoption with AppIntentsTesting
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/295/4/cdcee6d3-e3e9-4201-b1ef-cd33e2d10e6f/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 295 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/295/4/cdcee6d3-e3e9-4201-b1ef-cd33e2d10e6f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 295 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/295/4/cdcee6d3-e3e9-4201-b1ef-cd33e2d10e6f/subtitles/en/prog_index.m3u8 -c copy "Session - 295 temp.vtt"
ffmpeg -i "Session - 295 temp.mp4" -i "Session - 295 temp.aac" -i "Session - 295 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 295 - Validate your App Intents adoption with AppIntentsTesting (1440p).mp4"
rm "Session - 295 temp.vtt"
rm "Session - 295 temp.mp4"
rm "Session - 295 temp.aac"

# 96
# Session 210 - What’s new in Apple In-App Purchase
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/210/4/f029ab19-6670-48c6-b9b1-88ac6692cdda/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 210 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/210/4/f029ab19-6670-48c6-b9b1-88ac6692cdda/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 210 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/210/4/f029ab19-6670-48c6-b9b1-88ac6692cdda/subtitles/en/prog_index.m3u8 -c copy "Session - 210 temp.vtt"
ffmpeg -i "Session - 210 temp.mp4" -i "Session - 210 temp.aac" -i "Session - 210 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 210 - What’s new in Apple In-App Purchase (1440p).mp4"
rm "Session - 210 temp.vtt"
rm "Session - 210 temp.mp4"
rm "Session - 210 temp.aac"

# 97
# Session 230 - What’s new in assessment on macOS
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/230/4/03914f48-0bbe-4f2d-bb09-3ae676579cf2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 230 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/230/4/03914f48-0bbe-4f2d-bb09-3ae676579cf2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 230 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/230/4/03914f48-0bbe-4f2d-bb09-3ae676579cf2/subtitles/en/prog_index.m3u8 -c copy "Session - 230 temp.vtt"
ffmpeg -i "Session - 230 temp.mp4" -i "Session - 230 temp.aac" -i "Session - 230 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 230 - What’s new in assessment on macOS (1440p).mp4"
rm "Session - 230 temp.vtt"
rm "Session - 230 temp.mp4"
rm "Session - 230 temp.aac"

# 98
# Session 237 - What’s new in image understanding
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/237/6/a3bdea1e-5c1d-44bc-8c21-9e1958774bd3/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 237 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/237/6/a3bdea1e-5c1d-44bc-8c21-9e1958774bd3/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 237 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/237/6/a3bdea1e-5c1d-44bc-8c21-9e1958774bd3/subtitles/en/prog_index.m3u8 -c copy "Session - 237 temp.vtt"
ffmpeg -i "Session - 237 temp.mp4" -i "Session - 237 temp.aac" -i "Session - 237 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 237 - What’s new in image understanding (1440p).mp4"
rm "Session - 237 temp.vtt"
rm "Session - 237 temp.mp4"
rm "Session - 237 temp.aac"

# 99
# Session 206 - What’s new in managing Apple devices
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/206/4/e49f983e-700d-4d52-ae6b-a0fa1ea89fd0/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 206 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/206/4/e49f983e-700d-4d52-ae6b-a0fa1ea89fd0/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 206 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/206/4/e49f983e-700d-4d52-ae6b-a0fa1ea89fd0/subtitles/en/prog_index.m3u8 -c copy "Session - 206 temp.vtt"
ffmpeg -i "Session - 206 temp.mp4" -i "Session - 206 temp.aac" -i "Session - 206 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 206 - What’s new in managing Apple devices (1440p).mp4"
rm "Session - 206 temp.vtt"
rm "Session - 206 temp.mp4"
rm "Session - 206 temp.aac"

# 100
# Session 310 - What’s new in Shortcuts
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/310/4/50ce70ab-88da-49ff-8c57-d9136d231e76/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 310 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/310/4/50ce70ab-88da-49ff-8c57-d9136d231e76/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 310 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/310/4/50ce70ab-88da-49ff-8c57-d9136d231e76/subtitles/en/prog_index.m3u8 -c copy "Session - 310 temp.vtt"
ffmpeg -i "Session - 310 temp.mp4" -i "Session - 310 temp.aac" -i "Session - 310 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 310 - What’s new in Shortcuts (1440p).mp4"
rm "Session - 310 temp.vtt"
rm "Session - 310 temp.mp4"
rm "Session - 310 temp.aac"

# 101
# Session 262 - What’s new in Swift
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/262/5/d430e425-34fc-4ed5-b590-507ac593453a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 262 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/262/5/d430e425-34fc-4ed5-b590-507ac593453a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 262 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/262/5/d430e425-34fc-4ed5-b590-507ac593453a/subtitles/en/prog_index.m3u8 -c copy "Session - 262 temp.vtt"
ffmpeg -i "Session - 262 temp.mp4" -i "Session - 262 temp.aac" -i "Session - 262 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 262 - What’s new in Swift (1440p).mp4"
rm "Session - 262 temp.vtt"
rm "Session - 262 temp.mp4"
rm "Session - 262 temp.aac"

# 102
# Session 274 - What’s new in SwiftData
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/274/4/87fb1efb-9956-414e-8c99-f2579fe86da2/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 274 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/274/4/87fb1efb-9956-414e-8c99-f2579fe86da2/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 274 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/274/4/87fb1efb-9956-414e-8c99-f2579fe86da2/subtitles/en/prog_index.m3u8 -c copy "Session - 274 temp.vtt"
ffmpeg -i "Session - 274 temp.mp4" -i "Session - 274 temp.aac" -i "Session - 274 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 274 - What’s new in SwiftData (1440p).mp4"
rm "Session - 274 temp.vtt"
rm "Session - 274 temp.mp4"
rm "Session - 274 temp.aac"

# 103
# Session 269 - What’s new in SwiftUI
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/269/4/9215cf93-1308-4706-91e8-34d4e40939d1/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 269 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/269/4/9215cf93-1308-4706-91e8-34d4e40939d1/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 269 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/269/4/9215cf93-1308-4706-91e8-34d4e40939d1/subtitles/en/prog_index.m3u8 -c copy "Session - 269 temp.vtt"
ffmpeg -i "Session - 269 temp.mp4" -i "Session - 269 temp.aac" -i "Session - 269 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 269 - What’s new in SwiftUI (1440p).mp4"
rm "Session - 269 temp.vtt"
rm "Session - 269 temp.mp4"
rm "Session - 269 temp.aac"

# 104
# Session 241 - What’s new in the Foundation Models framework
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/241/6/900558cb-1997-490a-9aac-2461b209e578/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 241 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/241/6/900558cb-1997-490a-9aac-2461b209e578/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 241 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/241/6/900558cb-1997-490a-9aac-2461b209e578/subtitles/en/prog_index.m3u8 -c copy "Session - 241 temp.vtt"
ffmpeg -i "Session - 241 temp.mp4" -i "Session - 241 temp.aac" -i "Session - 241 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 241 - What’s new in the Foundation Models framework (1440p).mp4"
rm "Session - 241 temp.vtt"
rm "Session - 241 temp.mp4"
rm "Session - 241 temp.aac"

# 105
# Session 209 - What’s new in Wallet
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/209/5/25eb40d5-b64d-4677-bc99-f5c3a30d386a/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 209 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/209/5/25eb40d5-b64d-4677-bc99-f5c3a30d386a/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 209 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/209/5/25eb40d5-b64d-4677-bc99-f5c3a30d386a/subtitles/en/prog_index.m3u8 -c copy "Session - 209 temp.vtt"
ffmpeg -i "Session - 209 temp.mp4" -i "Session - 209 temp.aac" -i "Session - 209 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 209 - What’s new in Wallet (1440p).mp4"
rm "Session - 209 temp.vtt"
rm "Session - 209 temp.mp4"
rm "Session - 209 temp.aac"

# 106
# Session 204 - What’s new in WebKit for Safari 27
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/204/5/0226f57f-eb7b-4c8d-91cb-0ac8f245d88b/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 204 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/204/5/0226f57f-eb7b-4c8d-91cb-0ac8f245d88b/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 204 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/204/5/0226f57f-eb7b-4c8d-91cb-0ac8f245d88b/subtitles/en/prog_index.m3u8 -c copy "Session - 204 temp.vtt"
ffmpeg -i "Session - 204 temp.mp4" -i "Session - 204 temp.aac" -i "Session - 204 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 204 - What’s new in WebKit for Safari 27 (1440p).mp4"
rm "Session - 204 temp.vtt"
rm "Session - 204 temp.mp4"
rm "Session - 204 temp.aac"

# 107
# Session 258 - What’s new in Xcode 27
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/258/4/66bc9c90-649b-4a16-a2bb-1e6f16b1ec73/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 258 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/258/4/66bc9c90-649b-4a16-a2bb-1e6f16b1ec73/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 258 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/258/4/66bc9c90-649b-4a16-a2bb-1e6f16b1ec73/subtitles/en/prog_index.m3u8 -c copy "Session - 258 temp.vtt"
ffmpeg -i "Session - 258 temp.mp4" -i "Session - 258 temp.aac" -i "Session - 258 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 258 - What’s new in Xcode 27 (1440p).mp4"
rm "Session - 258 temp.vtt"
rm "Session - 258 temp.mp4"
rm "Session - 258 temp.aac"

# 108
# Session 277 - WidgetKit foundations
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/277/4/e9dd0c7d-3a2e-4cf3-9e65-c9cba19d3616/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 277 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/277/4/e9dd0c7d-3a2e-4cf3-9e65-c9cba19d3616/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 277 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/277/4/e9dd0c7d-3a2e-4cf3-9e65-c9cba19d3616/subtitles/en/prog_index.m3u8 -c copy "Session - 277 temp.vtt"
ffmpeg -i "Session - 277 temp.mp4" -i "Session - 277 temp.aac" -i "Session - 277 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 277 - WidgetKit foundations (1440p).mp4"
rm "Session - 277 temp.vtt"
rm "Session - 277 temp.mp4"
rm "Session - 277 temp.aac"

# 109
# Session 122 - WWDC26 Platforms State of the Union Recap
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/122/3/acc0a465-b6fa-446b-8f3f-dc122d862f47/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 122 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/122/3/acc0a465-b6fa-446b-8f3f-dc122d862f47/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 122 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/122/3/acc0a465-b6fa-446b-8f3f-dc122d862f47/subtitles/en/prog_index.m3u8 -c copy "Session - 122 temp.vtt"
ffmpeg -i "Session - 122 temp.mp4" -i "Session - 122 temp.aac" -i "Session - 122 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 122 - WWDC26 Platforms State of the Union Recap (1440p).mp4"
rm "Session - 122 temp.vtt"
rm "Session - 122 temp.mp4"
rm "Session - 122 temp.aac"

# 110
# Session 259 - Xcode, agents, and you
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/259/4/f4d40bb5-32db-418f-8a6e-396c77044afb/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 259 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/259/4/f4d40bb5-32db-418f-8a6e-396c77044afb/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 259 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/259/4/f4d40bb5-32db-418f-8a6e-396c77044afb/subtitles/en/prog_index.m3u8 -c copy "Session - 259 temp.vtt"
ffmpeg -i "Session - 259 temp.mp4" -i "Session - 259 temp.aac" -i "Session - 259 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 259 - Xcode, agents, and you (1440p).mp4"
rm "Session - 259 temp.vtt"
rm "Session - 259 temp.mp4"
rm "Session - 259 temp.aac"

#111
# Session 397 - Dub Dub Daily - Day 2
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/397/2/84ab23e3-fe1e-4fa1-9896-67424f14dda6/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 397 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/397/2/84ab23e3-fe1e-4fa1-9896-67424f14dda6/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 397 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/397/2/84ab23e3-fe1e-4fa1-9896-67424f14dda6/subtitles/en/prog_index.m3u8 -c copy "Session - 397 temp.vtt"
ffmpeg -i "Session - 397 temp.mp4" -i "Session - 397 temp.aac" -i "Session - 397 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 397 - Dub Dub Daily - Day 2 (1440p).mp4"
rm "Session - 397 temp.vtt"
rm "Session - 397 temp.mp4"
rm "Session - 397 temp.aac"

#112
# Session 398 - Dub Dub Daily - Day 3
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/398/2/410c7536-3689-45c3-a343-661e3cdd641f/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Session - 398 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/398/2/410c7536-3689-45c3-a343-661e3cdd641f/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 398 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/398/2/410c7536-3689-45c3-a343-661e3cdd641f/subtitles/en/prog_index.m3u8 -c copy "Session - 398 temp.vtt"
ffmpeg -i "Session - 398 temp.mp4" -i "Session - 398 temp.aac" -i "Session - 398 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 398 - Dub Dub Daily - Day 3 (1080p).mp4"
rm "Session - 398 temp.vtt"
rm "Session - 398 temp.mp4"
rm "Session - 398 temp.aac"

#113
# Session 399 - Dub Dub Daily - Day 4
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/399/2/3b82f5d9-fdd9-47cd-862b-8d6c6d9ffa02/cmaf/hvc/1440p_8100/hvc_1440p_8100.m3u8 -c copy "Session - 399 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/399/2/3b82f5d9-fdd9-47cd-862b-8d6c6d9ffa02/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Session - 399 temp.aac"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/wwdc/2026/399/2/3b82f5d9-fdd9-47cd-862b-8d6c6d9ffa02/subtitles/en/prog_index.m3u8 -c copy "Session - 399 temp.vtt"
ffmpeg -i "Session - 399 temp.mp4" -i "Session - 399 temp.aac" -i "Session - 399 temp.vtt" -map 0:v -map 1:a -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Session 399 - Dub Dub Daily - Day 4 (1440p).mp4"
rm "Session - 399 temp.vtt"
rm "Session - 399 temp.mp4"
rm "Session - 399 temp.aac"