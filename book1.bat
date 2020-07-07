set "FF=c:\ffmpeg\bin\ffmpeg" :: Path to FFmpeg
set "IN=TRIM.MP4" :: Input video
%FF% -i %IN% -vf format=pix_fmts=rgb24,histogram=levels_mode=logarithmic -y out.mp4
pause
pause