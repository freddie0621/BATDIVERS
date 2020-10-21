@echo off
del mergearray.js
pause
SETLOCAL EnableDelayedExpansion
echo var result=[>> mergearray.js
for /R %%b in ("*.txt") do call :JSONTXT %%b
echo ]>> mergearray.js

::tr -d '\r\n'  < mergearray.js > purgemergearray.js

tr "\r\n" " " < mergearray.js > purgemergearray.js
::tr -s " "  < mergearray.js > purgemergearray.js
goto :eof
::pause
:JSONTXT
::echo %1
echo {^"nomtxt^":^"%1^",^"commentaires^":^">> mergearray.js
::pause
::echo {^"0000%1;>> mergearray.js
::type %1 >>merge.js
::type %1 | tr '\n' '-'>>mergearray.js
type %1>>mergearray.js
echo ^"},>> mergearray.js
::for /f "delims=" %%i in (%~nx1 ) do echo %%i
::for /f "delims=" %%i in (%1 ) do echo %%i


::pause
goto :eof

