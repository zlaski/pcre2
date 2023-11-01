@echo off
setlocal EnableExtensions EnableDelayedExpansion

call "%AKIBLD%\build-event-env.bat" post %0 %*

:: pcre2_dftables.vcxproj post-build 

echo %OutDir%\%TargetFileName%  %IntDir%\pcre2_dftables.generated.c
"%OutDir%\%TargetFileName%" "%IntDir%\pcre2_dftables.generated.c"
