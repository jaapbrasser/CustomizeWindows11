function Get-ExplorerHideFileExtension {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Hide File Extension 

    .DESCRIPTION
    The Get-ExplorerHideFileExtension cmdlet is used to query the current setting of Explorer Hide File Extension

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerHideFileExtension

    Verifies whether Explorer Hide File Extension is enabled or disabled

    .EXAMPLE
    Get-ExplorerHideFileExtension -Verbose

    Verifies whether Explorer Hide File Extension is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}