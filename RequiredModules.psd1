@{
    PSDependOptions                                   = @{
        AddToPath  = $true
        Target     = 'output\RequiredModules'
        Parameters = @{
            Repository      = 'PSGallery'
            AllowPreRelease = $true
        }
    }

    InvokeBuild                                       = 'latest'
    PSScriptAnalyzer                                  = 'latest'
    Pester                                            = 'latest'
    Plaster                                           = 'latest'
    ModuleBuilder                                     = 'latest'
    ChangelogManagement                               = 'latest'
    Sampler                                           = 'latest'
    'Sampler.GitHubTasks'                             = 'latest'
    Datum                                             = 'latest'
    'Datum.ProtectedData'                             = 'latest'
    DscBuildHelpers                                   = 'latest'
    'DscResource.Test'                                = 'latest'
    MarkdownLinkCheck                                 = 'latest'
    'DscResource.AnalyzerRules'                       = 'latest'
    'DscResource.DocGenerator'                        = 'latest'

    #DSC Resources
    Microsoft365DSC                                   = '1.23.510.1'

    'DSCParser'                                       = '1.3.0.9'
    'ExchangeOnlineManagement'                        = '3.1.0'
    'Microsoft.Graph.Applications'                    = '1.27.0'
    'Microsoft.Graph.Authentication'                  = '1.27.0'
    'Microsoft.Graph.DeviceManagement'                = '1.27.0'
    'Microsoft.Graph.DeviceManagement.Administration' = '1.27.0'
    'Microsoft.Graph.DeviceManagement.Enrolment'      = '1.27.0'
    'Microsoft.Graph.Devices.CorporateManagement'     = '1.27.0'
    'Microsoft.Graph.Groups'                          = '1.27.0'
    'Microsoft.Graph.Identity.DirectoryManagement'    = '1.27.0'
    'Microsoft.Graph.Identity.Governance'             = '1.27.0'
    'Microsoft.Graph.Identity.SignIns'                = '1.27.0'
    'Microsoft.Graph.Planner'                         = '1.27.0'
    'Microsoft.Graph.Teams'                           = '1.27.0'
    'Microsoft.Graph.Users'                           = '1.27.0'
    'Microsoft.Graph.Users.Actions'                   = '1.27.0'
    'Microsoft.PowerApps.Administration.PowerShell'   = '2.0.163'
    'MicrosoftTeams'                                  = '5.1.0'
    'MSCloudLoginAssistant'                           = '1.0.110'
    'PnP.PowerShell'                                  = '1.12.0'
    'ReverseDSC'                                      = '2.0.0.14'

}
