# WWDC25 Keynote
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/sdr_hvc_2160p_16800/prog_index.m3u8 -c copy "WWDC 2025 Keynote temp.mp4"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "WWDC 2025 Keynote temp.aac"

ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/zh/zh.m3u8 -c copy "WWDC 2025 Keynote temp zh.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/de/de.m3u8 -c copy "WWDC 2025 Keynote temp de.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/en/en.m3u8 -c copy "WWDC 2025 Keynote temp en.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/fr/fr.m3u8 -c copy "WWDC 2025 Keynote temp fr.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/es/es.m3u8 -c copy "WWDC 2025 Keynote temp es.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/ja/ja.m3u8 -c copy "WWDC 2025 Keynote temp ja.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/ko/ko.m3u8 -c copy "WWDC 2025 Keynote temp ko.vtt"
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/cc/pt-br/pt-br.m3u8 -c copy "WWDC 2025 Keynote temp pt-br.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -extension_picky 0 -i https://events-delivery.apple.com/0705ssefukzgmvtafvdghmccmofevkcb/vod_main_tbRmxUmgfZUDgixPtvpuvDHQcDAUqvUq/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "WWDC 2025 Keynote temp atmos.mp4"
ffmpeg -i "WWDC 2025 Keynote temp.mp4" -i "WWDC 2025 Keynote temp atmos.mp4" -i "WWDC 2025 Keynote temp.aac" -i "WWDC 2025 Keynote temp zh.vtt" -i "WWDC 2025 Keynote temp de.vtt" -i "WWDC 2025 Keynote temp en.vtt" -i "WWDC 2025 Keynote temp fr.vtt" -i "WWDC 2025 Keynote temp es.vtt" -i "WWDC 2025 Keynote temp ja.vtt" -i "WWDC 2025 Keynote temp ko.vtt" -i "WWDC 2025 Keynote temp pt-br.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor -map 10 -c:s:7 mov_text -metadata:s:s:7 language=por "Apple WWDC 2025 Keynote Address (2160p).mp4"
rm "WWDC 2025 Keynote temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "WWDC 2025 Keynote temp.mp4" -i "WWDC 2025 Keynote temp.aac" -c copy "Apple WWDC 2025 Keynote Address (2160p).mp4"

rm "WWDC 2025 Keynote temp.mp4"
rm "WWDC 2025 Keynote temp.aac"
rm "WWDC 2025 Keynote temp zh.vtt"
rm "WWDC 2025 Keynote temp de.vtt"
rm "WWDC 2025 Keynote temp en.vtt"
rm "WWDC 2025 Keynote temp fr.vtt"
rm "WWDC 2025 Keynote temp es.vtt"
rm "WWDC 2025 Keynote temp ja.vtt"
rm "WWDC 2025 Keynote temp ko.vtt"
rm "WWDC 2025 Keynote temp pt-br.vtt"