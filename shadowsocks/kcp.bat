@echo off
for /f "tokens=2" %%i in ('tasklist^|findstr /i client_windows_amd64.exe')do taskkill /f /t /pid %%i

client_windows_amd64.exe -r "remote_server_ip:1234" -l ":1233" -mode fast2 -crypt "aes-192" -key "yourpassword"