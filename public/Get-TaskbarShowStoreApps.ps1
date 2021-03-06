function Get-TaskbarShowStoreApps {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Show Store Apps 

    .DESCRIPTION
    The Get-TaskbarShowStoreApps cmdlet is used to query the current setting of Taskbar Show Store Apps

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowStoreApps

    Verifies whether Taskbar Show Store Apps is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowStoreApps -Verbose

    Verifies whether Taskbar Show Store Apps is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}