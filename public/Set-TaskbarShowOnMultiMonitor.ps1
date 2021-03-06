function Set-TaskbarShowOnMultiMonitor {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show On Multi Monitor setting

    .DESCRIPTION
    The Set-TaskbarShowOnMultiMonitor cmdlet is used to enable or disable the Taskbar Show On Multi Monitor setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarShowOnMultiMonitor -Enable

    Enables the Taskbar Show On Multi Monitor setting

    .EXAMPLE
    Set-TaskbarShowOnMultiMonitor -Disable -Verbose

    Disables the Taskbar Show On Multi Monitor setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Show On Multi Monitor')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Show On Multi Monitor')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}