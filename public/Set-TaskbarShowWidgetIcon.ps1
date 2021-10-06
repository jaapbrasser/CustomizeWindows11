function Set-TaskbarShowWidgetIcon {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show Widget Icon

    .DESCRIPTION
    The Set-TaskbarShowWidgetIcon cmdlet is used to enable or disable the Taskbar Show Widget Icon

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarShowWidgetIcon -Enable

    Enables the Taskbar Show Widget Icon

    .EXAMPLE
    Set-TaskbarShowWidgetIcon -Disable -Verbose

    Disables the Taskbar Show Widget Icon while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Show Widget Icon')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Show Widget Icon')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}