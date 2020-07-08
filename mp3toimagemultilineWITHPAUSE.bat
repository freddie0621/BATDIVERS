::http://pikooli.com/txttobutton/bouton.php?text=fsdflksdlmfksmdq%20sdfsdq


::for %%1 in ("*.mp3") do  wget --output-document=%%~n1.jpg http://pikooli.com/txttobutton/boutonjpg.php?text=%%~n1

::for %%1 in ("*.mp3") do  wget --output-document=%%~n1.jpg http://pikooli.com/txttoimage/boutonimage.php?text=%%~n1
for %%1 in ("*.htm") do (
ping -n 1 -w 2000 127.255.255.255 >nul
 wget --output-document=%%~n1.jpg  http://pikooli.com/txttobutton/boutonmultiline.php?text=%%~n1
 )
pause