function Get-TaskbarShowWidgetIcon {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show Widget Icon

    .DESCRIPTION
    The Get-TaskbarShowWidgetIcon cmdlet is used to enable or disable the Taskbar Show Widget Icon

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowWidgetIcon

    Verifies whether Taskbar Show Widget Icon is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowWidgetIcon -Verbose

    Verifies whether Taskbar Show Widget Icon is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}