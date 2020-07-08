::ENCODAGE OEM850 POUR LES ACCENTS

@echo off
Setlocal enabledelayedexpansion




Set "Pattern= "
Set "Replace=_"

For %%a in (*.mp3) Do (
    Set "File=%%~a"
    rename "%%a" "!File:%Pattern%=%Replace%!"
)
