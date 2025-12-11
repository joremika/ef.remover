$locToBeCleared = Get-Location
$locChildren = Get-ChildItem $locToBeCleared -Directory -Recurse | Sort-Object -Property {$_.FullName.Length} -Descending
$foldersDeleted = 0 

foreach($loc in $locChildren){
    $locContents = Get-ChildItem -Path $loc.FullName -Force  
    if($locContents.Count -eq 0){
        Remove-Item -Path $loc.FullName -Force
        Write-Host "Deleted the following folder: $($loc.FullName)"
        $foldersDeleted++
    }
}

if($foldersDeleted -gt 0){
    Write-Host "`nTask finished. Deleted $foldersDeleted folders." -ForegroundColor Green 
    Write-Host "`nPress any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") 
}else{
    Write-Host "`nTask finished. No folders deleted." -ForegroundColor Green 
    Write-Host "`nPress any key to exit..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")    
}
