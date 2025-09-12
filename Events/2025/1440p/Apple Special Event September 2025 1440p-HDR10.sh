# Apple Special Event September 2025 1440p HDR10

ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/hdr10_hvc_1440p_9700/prog_index.m3u8 -c copy "Apple Special Event September 2025 temp.mp4"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Apple Special Event September 2025 temp.aac"

ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/en/en.m3u8 -c copy "Apple Special Event September 2025 temp en.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/zh/zh.m3u8 -c copy "Apple Special Event September 2025 temp zh.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/de/de.m3u8 -c copy "Apple Special Event September 2025 temp de.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/fr/fr.m3u8 -c copy "Apple Special Event September 2025 temp fr.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/es/es.m3u8 -c copy "Apple Special Event September 2025 temp es.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/ja/ja.m3u8 -c copy "Apple Special Event September 2025 temp ja.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/cc/ko/ko.m3u8 -c copy "Apple Special Event September 2025 temp ko.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/1208epinirnubocgyngedcvpuacuxred/vod_main_thyQUHMGRRKFgEaEVkDMKRbPKZstDPjT/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "Apple Special Event September 2025 temp atmos.mp4"
ffmpeg -i "Apple Special Event September 2025 temp.mp4" -i "Apple Special Event September 2025 temp atmos.mp4" -i "Apple Special Event September 2025 temp.aac" -i "Apple Special Event September 2025 temp en.vtt" -i "Apple Special Event September 2025 temp zh.vtt" -i "Apple Special Event September 2025 temp de.vtt" -i "Apple Special Event September 2025 temp fr.vtt" -i "Apple Special Event September 2025 temp es.vtt" -i "Apple Special Event September 2025 temp ja.vtt" -i "Apple Special Event September 2025 temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=eng -map 4 -c:s:1 mov_text -metadata:s:s:1 language=zho -map 5 -c:s:2 mov_text -metadata:s:s:2 language=deu -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple Special Event September 2025 (1440-hdr).mp4"
rm "Apple Special Event September 2025 temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "Apple Special Event September 2025 temp.mp4" -i "Apple Special Event September 2025 temp.aac" -c copy "Apple Special Event September 2025 Address (1440p).mp4"

rm "Apple Special Event September 2025 temp.mp4"
rm "Apple Special Event September 2025 temp.aac"
rm "Apple Special Event September 2025 temp zh.vtt"
rm "Apple Special Event September 2025 temp de.vtt"
rm "Apple Special Event September 2025 temp en.vtt"
rm "Apple Special Event September 2025 temp fr.vtt"
rm "Apple Special Event September 2025 temp es.vtt"
rm "Apple Special Event September 2025 temp ja.vtt"
rm "Apple Special Event September 2025 temp ko.vtt"