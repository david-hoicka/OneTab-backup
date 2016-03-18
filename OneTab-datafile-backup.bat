
set %date%=date
set %time%=time

FOR /F "TOKENS=2-4 DELIMS=/ " %%a IN ("%date%") DO SET mm=%%a&SET dd=%%b&SET yy=%%c
FOR /F "TOKENS=1-3 DELIMS=:." %%a IN ("%time%") DO SET hh=%%a&SET tt=%%b&SET ss=%%c
rem test date: echo "newfilename_%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s.log"

rem CYBERFOX
rem xcopy only if changed (see archive flag /M)
echo F | xcopy C:\Users\%username%\AppData\Roaming\8pecxstudios\Cyberfox\Profiles\kjnvzpy8.default\jetpack\extension@one-tab.com\simple-storage\store.json  G:\OneDrive\z-backup-OneTab\CyberFox-OneTab-backups\store(%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s).json /M

rem CHROME
rem xcopy only if changed (see archive flag /M)
echo F | xcopy "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Local Storage\chrome-extension_chphlpgkkbolifaimnlloiipkdnihall_0.localstorage"  G:\OneDrive\z-backup-OneTab\Chrome-OneTab-backups\chrome-extension_chphlpgkkbolifaimnlloiipkdnihall_0(%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s).localstorage /M
echo F | xcopy "C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Local Storage\chrome-extension_chphlpgkkbolifaimnlloiipkdnihall_0.localstorage-journal"  G:\OneDrive\z-backup-OneTab\Chrome-OneTab-backups\chrome-extension_chphlpgkkbolifaimnlloiipkdnihall_0(%yy%-%mm%-%dd%_%hh%h%tt%m%ss%s).localstorage-journal /M

pause
