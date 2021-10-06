function Get-ClassicContextMenu {
<#  
    .SYNOPSIS
    Enables or disables the Classic Context Menu

    .DESCRIPTION
    The Get-ClassicContextMenu cmdlet is used to enable or disable the Classic Context Menu

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

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}