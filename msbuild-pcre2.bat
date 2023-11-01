cd "%~dp0"
msbuild -fl -flp:logfile:%TEMP%\pcre2-build.log;verbosity:diagnostic -noautoresponse -property:Configuration=Debug -property:Platform=win32 pcre2_dftables.vcxproj
