for %%1 in ("*.webp") do ffmpeg -i %%1  "%%~n1_JUNIQUE.png"
pause
