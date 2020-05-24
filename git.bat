@echo off
setlocal enabledelayedexpansion

set count=0

for /f "tokens=*" %%x in (config.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
cd %var[3]%
hexo g -d
pause