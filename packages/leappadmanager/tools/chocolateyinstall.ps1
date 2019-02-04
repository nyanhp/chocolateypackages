﻿$tools = Split-Path -Parent $MyInvocation.MyCommand.Definition
$content = Join-Path -Path (Split-Path -Parent $tools) -ChildPath content

Install-ChocolateyZipPackage `
  -PackageName $env:ChocolateyPackageName `
  -UnzipLocation $content `
  -Url 'https://spiffyhacks.com/uploads/leappad-manager.zip' `
  -Checksum '85D58E2DF3B4144230D4506EC848874D0DC0EC6F671C18BEBD5AF36ED6BFE14F' `
  -ChecksumType 'SHA256'

Get-ChildItem -Recurse -File -Path (Join-Path -Path $content -ChildPath files) -Include *.exe `
  | %{ New-Item -Path "$_.ignore" -Type File -Force | Out-Null }
