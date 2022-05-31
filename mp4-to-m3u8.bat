SET file=%cd%
SET cName=%~N1

mkdir %cName%\data
cd %cName%

ffmpeg -i ../%cName%.mp4 -codec: copy -start_number 0 -strftime_mkdir 1 -hls_segment_filename data/file%%03d.jpg -hls_time 10.0 -hls_list_size 0 -f hls filename.m3u8

pause