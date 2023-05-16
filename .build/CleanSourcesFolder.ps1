task Clean_Sources_Folder {
    Remove-Item -Path $SourcePath\DSCResources -Recurse -Force
    Remove-Item -Path $SourcePath\DSCResources.yml -Force
}