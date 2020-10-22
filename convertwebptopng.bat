md png
for %%1 in ("*.webp") do ffmpeg -i %%1  "png/%%~n1_DESENIO.png"
pause
