set chaine=ALLEMAGNE2019_out_
for %%1 in ("*.mp4") do ffmpeg -i %%1 -s 720x576 -threads auto -c:v libx264 -b 2000k -r 25  -ab 448k -ar 48000 "newfiles\%chaine%%%~n1.MP4"
pause
