$folders = Get-ChildItem -Path "H:\" -Directory -Recurse
$n = 0
$biggest = ""
foreach ($folder in $folders)
{
    $splitout = $folder.FullName.split("\")
    if ($splitout.count -gt $n)
    {
        $n = $splitout.count
        $biggest = $folder
    }
}

Write-host "Count $n - $biggest"