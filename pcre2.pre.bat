@echo off
setlocal EnableExtensions EnableDelayedExpansion

call "%AKIBLD%\build-event-env.bat" pre %0 %*

:: pcre2.vcxproj pre-build

echo src\pcre2.h.generic --^> %IntDir%\pcre2.h
copy /y src\pcre2.h.generic %IntDir%\pcre2.h >nul
echo src\config.h.generic --^> %IntDir%\config.h
copy /y src\config.h.generic %IntDir%\config.h >nul

echo src\pcre2_chartables.c.dist --^> %IntDir%\pcre2_chartables.generated.c
copy src\pcre2_chartables.c.dist %IntDir%\pcre2_chartables.generated.c >nul
:: msgbox "%OutDir%\%TargetFileName%"
