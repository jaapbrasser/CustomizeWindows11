function Get-ClassicContextMenu {
<#  
    .SYNOPSIS
    Queries the current setting of Classic Context Menu 

    .DESCRIPTION
    The Get-ClassicContextMenu cmdlet is used to query the current setting of Classic Context Menu

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ClassicContextMenu

    Verifies whether Classic Context Menu is enabled or disabled

    .EXAMPLE
    Get-ClassicContextMenu -Verbose

    Verifies whether Classic Context Menu is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}