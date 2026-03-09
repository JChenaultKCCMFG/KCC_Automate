$url="https://github.com/JChenaultKCCMFG/KCC_Automate/archive/refs/heads/main.zip"
$zip="C:\_KCC\Automate.zip"
New-Item "C:\_KCC -Type Directory
Invoke-WebRequest $url -OutFile $zip
Expand-Archive $zip -DestinationPath "C:\_KCC\KCC_Automate" -Force
Set-Location C:\_KCC\Automate
msiexec /i "C:\_KCC\Agent_install.msi" TRANSFORMS="C:\_KCC\Agent_install.mst" /qn /L*v C:\_KCC\LGAuto-Install.log
