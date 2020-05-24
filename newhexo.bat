@echo off
setlocal enabledelayedexpansion

set count=0

for /f "tokens=*" %%x in (config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
cd %var[2]%
set /p name=input pages name:
echo name:%name%
echo please wait
hexo new %name% 
pause