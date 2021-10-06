function Get-ExplorerShowTypeOverlay {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Type Overlay

    .DESCRIPTION
    The Get-ExplorerShowTypeOverlay cmdlet is used to enable or disable the Explorer Show Type Overlay

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowTypeOverlay

    Verifies whether Explorer Show Type Overlay is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowTypeOverlay -Verbose

    Verifies whether Explorer Show Type Overlay is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}