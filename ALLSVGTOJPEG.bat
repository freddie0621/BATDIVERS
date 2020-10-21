for %%1 in (*.svg) do convert -density 300 %%1 %%~n1.jpg
pause