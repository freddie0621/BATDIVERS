

::set /p name=ENTREZ UN NOM DE REPERTOIRE: 
::echo "%name%"

md reduce_image_directory
::for %%1 in (*.jpg) do (    ffmpeg -y -i %%1  -s 720x576 -q:v 10 reduce_image_directory/%%1)

for %%1 in (*.jpg) do (    ffmpeg -y -i %%1  -vf scale=900:-1 reduce_image_directory/%%1)
::for %%1 in ("reduce_image_directory/*.jpg") do (
::for %%1 in ("*.jpg") do (
::curl  -F "userid=1"   -F "directory=%name%"   -F "uploaded_file=@reduce_image_directory/%%1"  http://pikooli.com/menu/curlupload.php
)
pause
