
set %date%=date
set %time%=time

FOR /F "TOKENS=2-4 DELIMS=/ " %%a IN ("%date%") DO SET mm=%%a&SET dd=%%b&SET yy=%%c
FOR /F "TOKENS=1-3 DELIMS=:." %%a IN ("%time%") DO SET hh=%%a&SET tt=%%b&SET ss=%%c
rem test date: echo "newfilename_%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s.log"

rem CYBERFOX
rem xcopy only if changed (see /M flag)
echo F | xcopy C:\Users\%username%\AppData\Roaming\8pecxstudios\Cyberfox\Profiles\kjnvzpy8.default\jetpack\extension@one-tab.com\simple-storage\store-test01.json  G:\OneDrive\z-robocopy-backup-OneTab\CyberFox-OneTab-backups\store-test01_%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s.json /M

pause
