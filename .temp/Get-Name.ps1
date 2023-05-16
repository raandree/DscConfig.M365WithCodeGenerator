function Get-Name {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Name
    )

    $exceptions = @{
        SCComplianceSearch                          = 'SCComplianceSearches'
        IntuneDeviceCompliancePolicyAndroids        = 'IntuneDeviceCompliancePoliciesAndroid'
        IntuneDeviceCompliancePolicyiOs             = 'IntuneDeviceCompliancePoliciesiOs'
        IntuneDeviceCompliancePolicyWindows10       = 'IntuneDeviceCompliancePoliciesWindows10'
        IntuneDeviceConfigurationPolicyiOS          = 'IntuneDeviceConfigurationPoliciesiOS'
        IntuneDeviceConfigurationPolicyMacOS        = 'IntuneDeviceConfigurationPoliciesMacOS'
        IntuneDeviceConfigurationPolicyWindows10    = 'IntuneDeviceConfigurationPoliciesWindows10'
        IntuneSettingCatalogASRRulesPolicyWindows10 = 'IntuneSettingCatalogASRRulesPoliciesWindows10'
        IntuneWifiConfigurationPolicyIOS            = 'IntuneWifiConfigurationPoliciesIOS'
        IntuneWifiConfigurationPolicyMacOS          = 'IntuneWifiConfigurationPoliciesMacOS'
        IntuneWifiConfigurationPolicyWindows10      = 'IntuneWifiConfigurationPoliciesWindows10'
    }
    if ($Name -in $exceptions.Keys) {
        return $exceptions[$Name]
    }

    if ($Name -match '^AAD') {
        $Name = $Name -replace '^AAD', 'AD'
    }

    if ($Name -match 'Policy$') {
        $Name = $Name -replace 'Policy', 'Policies'
    }
    elseif ($Name -match 'Property$') {
        $Name = $Name -replace 'Property', 'Properties'
    }
    elseif ($Name -match 'Categorys$') {
        $Name = $Name -replace 'Categorys', 'Categories'
    }
    elseif ($Name -notmatch 's$') {
        $Name = $Name + 's'
    }

    $Name
}