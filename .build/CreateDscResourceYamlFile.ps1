task Create_DSC_Resource_Yaml_File {
    if (-not $dscResources) {
        $dscResources = @()
        $dscResources += Get-DscResource -Module Microsoft365DSC | Where-Object Name -like 'AAD*' | Select-Object -First 2
        $dscResources += Get-DscResource -Module Microsoft365DSC -Name AADTenantDetails
        $dscResources += Get-DscResource -Module Microsoft365DSC -Name AADConditionalAccessPolicy
        $dscResources += Get-DscResource -Module Microsoft365DSC -Name AADNamedLocationPolicy
        $dscResources += Get-DscResource -Module Microsoft365DSC -Name AADGroupsSettings
        $dscResources += Get-DscResource -Module Microsoft365DSC -Name EXOTransportConfig
    }
    $scalar = $dscResources | Where-Object { $_.Properties.Name -contains 'IsSingleInstance' }
    $array = $dscResources | Where-Object { $_.Properties.Name -notcontains 'IsSingleInstance' }
    
    $content = @{
        Microsoft365DSC = [ordered]@{}
    }
    
    foreach ($item in $scalar) {
        $compositeName = "c$($item.Name)" #Get-Name -Name $item.Name
        $content.Microsoft365DSC.Add($item.Name, @{
                CompositeResourceName = $compositeName
                ParameterType         = 'Scalar'
            })
    }
    foreach ($item in $array) {
        $compositeName = "c$($item.Name)" #Get-Name -Name $item.Name
        $content.Microsoft365DSC.Add($item.Name, @{
                CompositeResourceName = $compositeName
                ParameterType         = 'Array'
            })
    }
    
    #$content.Microsoft365DSC | ft -Property Name, @{ Label = 'CompositeName'; Expression = { $_.Value.ParameterType } }
    $content | ConvertTo-Yaml | Out-File -FilePath $sourcePath\DSCResources.yml -Encoding utf8
}