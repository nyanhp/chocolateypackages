﻿$name   = "intellijidea-ultimate"
$url    = "http://download.jetbrains.com/idea/ideaIU-13.1.2.exe"
$kind   = "EXE"
$silent = "/S"

Install-ChocolateyPackage $name $kind $silent $url
