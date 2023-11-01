@echo off
setlocal EnableExtensions EnableDelayedExpansion

call "%AKIBLD%\build-event-env.bat" post %0 %*

:: pcre2.vcxproj post-build

:: msgbox "%OutDir%\%TargetFileName%"
 
