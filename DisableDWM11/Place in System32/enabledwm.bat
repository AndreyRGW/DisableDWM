@echo off
cd %windir%\System32
del dwm.exe /s /q
ren _dwm.exe dwm.exe
ren _ApplicationFrameHost.exe ApplicationFrameHost.exe
ren _taskhostw.exe taskhostw.exe
ren _RuntimeBroker.exe RuntimeBroker.exe
ren _windows.immersiveshell.serviceprovider.dll windows.immersiveshell.serviceprovider.dll
ren _dwminit.dll dwminit.dll

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks" /v "ConsoleMode" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\TestHooks" /v "XamlCredUIAvailable" /f
reg add "HKCU\Software\Microsoft\Windows\DWM" /v "CompositionPolicy" /t REG_DWORD /d "0" /f

echo RESTART YOUR PC TO LET THE CHANGES TAKE PLACE
pause