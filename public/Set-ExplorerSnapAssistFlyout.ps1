function Set-ExplorerSnapAssistFlyout {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Snap Assist Flyout

    .DESCRIPTION
    The Set-ExplorerSnapAssistFlyout cmdlet is used to enable or disable the Explorer Snap Assist Flyout

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerSnapAssistFlyout -Enable

    Enables the Explorer Snap Assist Flyout

    .EXAMPLE
    Set-ExplorerSnapAssistFlyout -Disable -Verbose

    Disables the Explorer Snap Assist Flyout while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Snap Assist Flyout')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Snap Assist Flyout')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}