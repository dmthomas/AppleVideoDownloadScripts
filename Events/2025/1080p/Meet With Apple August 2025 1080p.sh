# Explore the Biggest Updates from WWDC25 1080p
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/meet-with-apple/2025/201/5/597cbd02-a20e-4124-9596-a8acc21e96af/cmaf/hvc/1080p_5800/hvc_1080p_5800.m3u8 -c copy "Explore the Biggest Updates from WWDC25 temp.mp4"
ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/meet-with-apple/2025/201/5/597cbd02-a20e-4124-9596-a8acc21e96af/cmaf/aac/lc_192/aac_lc_192.m3u8 -c copy "Explore the Biggest Updates from WWDC25 temp.aac"

ffmpeg -extension_picky 0 -i https://devstreaming-cdn.apple.com/videos/meet-with-apple/2025/201/5/597cbd02-a20e-4124-9596-a8acc21e96af/subtitles/eng/prog_index.m3u8 -c copy "Explore the Biggest Updates from WWDC25 en.vtt"

ffmpeg -i "Explore the Biggest Updates from WWDC25 temp.mp4" -i "Explore the Biggest Updates from WWDC25 temp.aac" -i "Explore the Biggest Updates from WWDC25 en.vtt" -map 0:v -map 1:a -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 2 -c:s:0 mov_text -metadata:s:s:0 language=eng "Explore the Biggest Updates from WWDC25 (1080p).mp4"


rm "Explore the Biggest Updates from WWDC25 temp.mp4"
rm "Explore the Biggest Updates from WWDC25 temp.aac"
rm "Explore the Biggest Updates from WWDC25 en.vtt"