param ($Path = $(throw "Path is required."))


if(-not (Test-Path $Path)){
     Write-Warning "Error in path location."
     exit 0
}

try{
    $files = Get-ChildItem -Path $Path -File | Sort-Object -Property CreationTime

    $counter = 1

    foreach ($file in $files) {
        $newName = $file.DirectoryName + "\" + $counter  + $file.Extension
        Write-Host "Begin renaming" $file.FullName "to" $newName
        try{
            Rename-Item -Path $file.FullName -NewName $newName -Force
        }
        catch{
            Write-Warning "There was a renaming problem. Perhaps the file name has already been taken."
            Write-Debug "Error for name change" $file.FullName "at" $newName
        }
        $counter++
    }
}
catch{
    Write-Warning "There was a problem with renaming files. Check the permissions."
}

