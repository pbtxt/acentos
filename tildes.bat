@echo off
for /f "tokens=2 delims=:." %%x in ('chcp') do set cp=%%x
chcp 1252>nul
for /R "." %%a in (*.pdf) do (SET ruta=%%a&SET archivo=%%~nxa&CALL :renombrar)
pause
:renombrar
set archivo=%archivo:�=a%
set archivo=%archivo:�=e%
set archivo=%archivo:�=i%
set archivo=%archivo:�=o%
set archivo=%archivo:�=u%
set archivo=%archivo:�=n%
ren "%ruta%" "%archivo%"
goto:eof

@echo off
chcp %cp%>nul