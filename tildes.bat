@echo off
for /f "tokens=2 delims=:." %%x in ('chcp') do set cp=%%x
chcp 1252>nul
for /R "." %%a in (*.pdf) do (SET ruta=%%a&SET archivo=%%~nxa&CALL :renombrar)
pause
:renombrar
set archivo=%archivo:á=a%
set archivo=%archivo:é=e%
set archivo=%archivo:í=i%
set archivo=%archivo:ó=o%
set archivo=%archivo:ú=u%
set archivo=%archivo:ñ=n%
ren "%ruta%" "%archivo%"
goto:eof

@echo off
chcp %cp%>nul