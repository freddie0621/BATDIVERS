@ECHO OFF

echo        Entrez le PREFIXE  A AJOUTER (example astudent120589)

set /p usern=
echo VOTRE PREFIXE EST %usern%

pause

SetLocal EnableDelayedExpansion
::set i = partie de l'archive SET /a _i+=1 pour incrémenter
::RENAME %%f part!_i!_%%f
set _i=0

FOR %%f in (*.jpg) DO (
    RENAME %%f %usern%part!_i!_%%f
	SET /a _i+=0
)
PAUSE
move %~dp0\*.jpg %~dp0\JPG

pause