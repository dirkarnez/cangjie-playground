@echo off

set PATH=^
%WINDIR%\System32;^
%USERPROFILE%\Downloads\cangjie-sdk-windows-x64-1.0.1\cangjie;^
%USERPROFILE%\Downloads\cangjie-sdk-windows-x64-1.0.1\cangjie\bin;

xcopy /H /Y /C "%USERPROFILE%\Downloads\cangjie-sdk-windows-x64-1.0.1\cangjie\runtime\lib\windows_x86_64_llvm\libcangjie-runtime.dll" "%~dp0" &&^
xcopy /H /Y /C "%USERPROFILE%\Downloads\cangjie-sdk-windows-x64-1.0.1\cangjie\runtime\lib\windows_x86_64_llvm\libsecurec.dll" "%~dp0" &&^
%USERPROFILE%\Downloads\cangjie-sdk-windows-x64-1.0.1\cangjie\envsetup.bat &&^
cjc main.cj
