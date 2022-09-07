# Apple Special Event September 2022 1440p

ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/sdr_hvc_1440p_8100/prog_index.m3u8 -c copy "Apple Special Event September 2022 temp.mp4"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/audio_main_en_2ch_aac_128/prog_index.m3u8 -c copy "Apple Special Event September 2022 temp.aac"

ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/zh/zh.m3u8 -c copy "Apple Special Event September 2022 temp zh.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/de/de.m3u8 -c copy "Apple Special Event September 2022 temp de.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/en/en.m3u8 -c copy "Apple Special Event September 2022 temp en.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/fr/fr.m3u8 -c copy "Apple Special Event September 2022 temp fr.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/es/es.m3u8 -c copy "Apple Special Event September 2022 temp es.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/ja/ja.m3u8 -c copy "Apple Special Event September 2022 temp ja.vtt"
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/cc/ko/ko.m3u8 -c copy "Apple Special Event September 2022 temp ko.vtt"

#comment out the following three lines if you don't want Dolby Atmos audio
ffmpeg -i https://events-delivery.apple.com/2807skttevpekgjkgcyolyxgkexyahqp/vod_main_uBrhfterdnATbRGdGaVycejRcVEsrpga/audio_main_en_16ch_atmos_640/prog_index.m3u8 -c copy "Apple Special Event September 2022 temp atmos.mp4"
ffmpeg -i "Apple Special Event September 2022 temp.mp4" -i "Apple Special Event September 2022 temp atmos.mp4" -i "Apple Special Event September 2022 temp.aac" -i "Apple Special Event September 2022 temp zh.vtt" -i "Apple Special Event September 2022 temp de.vtt" -i "Apple Special Event September 2022 temp en.vtt" -i "Apple Special Event September 2022 temp fr.vtt" -i "Apple Special Event September 2022 temp es.vtt" -i "Apple Special Event September 2022 temp ja.vtt" -i "Apple Special Event September 2022 temp ko.vtt" -map 0:v -map 1:a -map 2:a -metadata:s:a:0 title="Dolby Atmos" -metadata:s:a:0 language=eng -metadata:s:a:1 title="Stereo" -metadata:s:a:1 language=eng -acodec copy -vcodec copy -map 3 -c:s:0 mov_text -metadata:s:s:0 language=zho -map 4 -c:s:1 mov_text -metadata:s:s:1 language=deu -map 5 -c:s:2 mov_text -metadata:s:s:2 language=eng -map 6 -c:s:3 mov_text -metadata:s:s:3 language=fra -map 7 -c:s:4 mov_text -metadata:s:s:4 language=spa -map 8 -c:s:5 mov_text -metadata:s:s:5 language=jpn -map 9 -c:s:6 mov_text -metadata:s:s:6 language=kor "Apple Special Event September 2022 Address (1440p).mp4"
rm "Apple Special Event September 2022 temp atmos.mp4"

#uncomment the following line if you didn't want Dolby Atmos audio
#ffmpeg -i "Apple Special Event September 2022 temp.mp4" -i "Apple Special Event September 2022 temp.aac" -c copy "Apple Special Event September 2022 Address (1440p).mp4"

rm "Apple Special Event September 2022 temp.mp4"
rm "Apple Special Event September 2022 temp.aac"
rm "Apple Special Event September 2022 temp zh.vtt"
rm "Apple Special Event September 2022 temp de.vtt"
rm "Apple Special Event September 2022 temp en.vtt"
rm "Apple Special Event September 2022 temp fr.vtt"
rm "Apple Special Event September 2022 temp es.vtt"
rm "Apple Special Event September 2022 temp ja.vtt"
rm "Apple Special Event September 2022 temp ko.vtt"