function Get-ExplorerShowIconsOnly {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Icons Only 

    .DESCRIPTION
    The Get-ExplorerShowIconsOnly cmdlet is used to query the current setting of Explorer Show Icons Only

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowIconsOnly

    Verifies whether Explorer Show Icons Only is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowIconsOnly -Verbose

    Verifies whether Explorer Show Icons Only is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}