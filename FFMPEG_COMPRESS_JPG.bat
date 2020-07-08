::set chaine=_CAMESCOPE_out
set chaine=COUVERTURE_
::for %%1 in ("*.mp4") do ffmpeg -i %%1 -s 720x576 -threads auto -c:v libx264 -b 2000k -r 25  -ab 448k -ar 48000 "newfiles\%chaine%%%~n1.MP4"
::for %%1 in ("*.avi") do ffmpeg -i %%1 -strict -2 -c:v libx264 -crf 19 -preset slow -c:a aac -b:a 192k -ac 2 "newfiles\%chaine%%%~n1.avi"
::ffmpeg -i %1 -s 720x576 -threads auto -c:v libx264 -b 2000k -r 25  -ab 448k -ar 48000 "%~n1%chaine%.MP4"

::md %~n1
:pause
::ffmpeg -i %1 -vf fps=1/15 img%03d.jpg
:: toutes les 15 secondes 1/15
::ffmpeg -i %1   -s 1280x720 -qscale:v 2 -vf fps=1/5  %~n1\filename%%03d.jpg
::ffmpeg -i %1   -s 1280x720 -qscale:v 2 -vf "select='eq(pict_type,PICT_TYPE_I)'" -vsync vfr   %~n1\%~n1_%%04d.jpg

::i_view32.exe  %1 /convert "%chaine%%~n1.jpg"
::i_view32.exe  %1 /convert "%chaine%%~n1.jpg"  /page=2
::i_view32.exe  %1 /convert "%chaine%%~n1.jpg" /extract=(%~n1,jpg)
²
::Explorer.exe %~n1
::for %%1 in ("*.PDF") do  i_view32.exe  %%1 /convert "%chaine%%%~n1.jpg"

md COMPRESS


for %%1 in ("*.jpg") do ffmpeg -y -i %%1 -quality 10 -vf scale=2000:-1 "COMPRESS/%%~n1.jpg"


pause
