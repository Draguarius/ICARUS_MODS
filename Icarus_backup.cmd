@echo off

start steam://rungameid/1149460

set t=600
set dt=%DATE:~6,4%.%DATE:~3,2%.%DATE:~0,2%.%TIME:~0,2%.%TIME:~3,2%
set dt=%dt: =0%

"C:\Program Files\7-Zip\7z.exe" a -mx7 %LocalAppData%\Icarus\Saved\Backup\%dt%.7z %LocalAppData%\Icarus\Saved\PlayerData\

:w
timeout /t %t%
echo %time%

set dt=%DATE:~6,4%.%DATE:~3,2%.%DATE:~0,2%.%TIME:~0,2%.%TIME:~3,2%
set dt=%dt: =0%

"C:\Program Files\7-Zip\7z.exe" a -mx7 %LocalAppData%\Icarus\Saved\Backup\%dt%.7z %LocalAppData%\Icarus\Saved\PlayerData\

goto w