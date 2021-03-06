function Get-ExplorerShowStatusBar {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Status Bar 

    .DESCRIPTION
    The Get-ExplorerShowStatusBar cmdlet is used to query the current setting of Explorer Show Status Bar

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowStatusBar

    Verifies whether Explorer Show Status Bar is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowStatusBar -Verbose

    Verifies whether Explorer Show Status Bar is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}