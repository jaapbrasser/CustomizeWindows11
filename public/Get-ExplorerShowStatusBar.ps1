function Get-ExplorerShowStatusBar {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Status Bar

    .DESCRIPTION
    The Get-ExplorerShowStatusBar cmdlet is used to enable or disable the Explorer Show Status Bar

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

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}