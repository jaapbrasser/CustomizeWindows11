function Get-TaskbarSmallIcon {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Small Icon 

    .DESCRIPTION
    The Get-TaskbarSmallIcon cmdlet is used to query the current setting of Taskbar Small Icon

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarSmallIcon

    Verifies whether Taskbar Small Icon is enabled or disabled

    .EXAMPLE
    Get-TaskbarSmallIcon -Verbose

    Verifies whether Taskbar Small Icon is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}