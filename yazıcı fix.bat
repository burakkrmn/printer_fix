echo off
echo Yazici Servisi Durduruluyor. . .
timeout /T 10
net stop spooler
del /q %SystemRoot%\system32\spool\printers\*.* /q
del %windir%\system32\spool\printers\*.*
net start spooler
echo Yazici Servisi Yeniden Baslatiliyor . . .
timeout /T 5
exit