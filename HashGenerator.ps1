# $LitPath = "\\lcc-mdt2\applications\Zscaler\3.1.0.129\Zscaler-windows-3.1.0.129-installer.msi"
$LitPath = "C:\Users\akinzer\Desktop\FsWindowsAgent2.15.0.msi"

$SHA1 = Get-FileHash -Algorithm SHA1 -literalpath $LitPath
$SHA1
$SHA256 = Get-FileHash -Algorithm SHA256 -literalpath $LitPath
$SHA256
$SHA1Size = Get-Item -Path $LitPath

Write-Host ""
Write-Host "prefetch FsWindowsAgent2.15.0.msi sha1:$($SHA1.Hash) size:$($SHA1Size.Length) http://EXAMPLEURL/REPLACEME.exe sha256:$($SHA256.Hash)"
Write-Host ""
Pause