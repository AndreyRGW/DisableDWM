@echo off
cd %windir%\System32
ren dwm.exe _dwm.exe
copy rundll32.exe dwm.exe
ren ApplicationFrameHost.exe _ApplicationFrameHost.exe
ren taskhostw.exe _taskhostw.exe
ren RuntimeBroker.exe _RuntimeBroker.exe
ren windows.immersiveshell.serviceprovider.dll _windows.immersiveshell.serviceprovider.dll

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks" /v "ConsoleMode" /t REG_DWORD /d "1" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks" /v "XamlCredUIAvailable" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "0" /f

echo RESTART YOUR PC TO LET THE CHANGES TAKE PLACE
pause