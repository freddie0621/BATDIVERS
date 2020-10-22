
::convert
pause
::for %%1 in ("*.PDF") do convert -density 300 -trim  %%1  -quality 100 "%%~n1.jpg"
::for %%1 in ("*.PDF") do convert  -trim  %%1  -quality 100 %%~n1.jpg
::for %%1 in ("*.PDF") do  convert  -trim -density 300 "%%1"[0] -trim "%%~n1.jpg" 
::for %%1 in ("*.jpg") do  convert  -trim -density 600 "%%1" -trim "%%~n1.pdf" 
::for %%1 in ("*.jpg") do  convert  -quality 100 "%%1" -trim "%%~n1.pdf" 
::for %%1 in ("*.jpg") do  convert  -quality 100 "%%1" -trim "%%~n1.pdf" 
::for %%1 in ("*.jpg") do  convert  -quality 100 "%%1" -trim "%%~n1.pdf" 
::for %%1 in ("*.jpg") do  convert  -quality 100 "%%1"  "%%~n1.pdf" 

for %%1 in ("*.jpg") do  convert   -resize 1240x1753 -extent 1240x1753 -gravity center  -units PixelsPerInch -density 150x150 "%%1"  "%%~n1.pdf" 


::convert  -trim -density 600 "%~nx1" -trim "%~n1.jpg" 
pause