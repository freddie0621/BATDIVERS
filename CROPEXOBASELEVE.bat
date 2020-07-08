:: LARGEURmorceauxxHAUTEUR_morceau+DISTANCE COTEGAUCHE+DISTANCEDUHAUT
::convert %1 -crop 3500x1150+700+3600 "CROPBASELEVE_%~n1.jpg"

::for %%1 in ("*.jpg") do  convert  -quality 100 "%%1"  "%%~n1.pdf" 
md CROP
for %%1 in ("*.jpg") do convert %%1 -crop 2490x3440+19+30 "CROP\%%~n1_CROP1.jpg"
for %%1 in ("*.jpg") do convert %%1 -crop 2528x3568+2525+2 "CROP\%%~n1_CROP2.jpg"
pause