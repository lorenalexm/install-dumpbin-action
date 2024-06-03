# scripts/install-dumpbin.ps1

# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force;
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072;
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Visual Studio Build Tools
choco install visualstudio2019buildtools --package-parameters "--includeRecommended --includeOptional --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64" --no-progress

# Set up PATH for Visual Studio
$vsPath = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC"
$latestVersion = (Get-ChildItem -Path $vsPath | Sort-Object Name -Descending | Select-Object -First 1).Name
$dumpbinPath = "$vsPath\$latestVersion\bin\Hostx64\x64"
echo $dumpbinPath >> $env:GITHUB_PATH
