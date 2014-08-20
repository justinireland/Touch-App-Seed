@ECHO OFF
ECHO Waiting to launch server...
ping 192.0.2.2 -n 1 -w 5000 > nul
ECHO Starting server...
start node 'bin\http.js'
ECHO Waiting to launch browser...
ping 192.0.2.2 -n 1 -w 5000 > nul
#
# Uncomment one of the following lines depending on your browser preference.
#
#"C:\Program Files (x86)\Mozilla Firefox\firefox.exe" http://localhost:3000
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --incognito --kiosk http://localhost:3000