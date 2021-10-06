function Get-ExplorerSnapAssistFlyout {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Snap Assist Flyout

    .DESCRIPTION
    The Get-ExplorerSnapAssistFlyout cmdlet is used to enable or disable the Explorer Snap Assist Flyout

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerSnapAssistFlyout

    Verifies whether Explorer Snap Assist Flyout is enabled or disabled

    .EXAMPLE
    Get-ExplorerSnapAssistFlyout -Verbose

    Verifies whether Explorer Snap Assist Flyout is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}