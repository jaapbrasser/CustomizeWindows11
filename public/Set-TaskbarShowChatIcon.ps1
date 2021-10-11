function Set-TaskbarShowChatIcon {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show Chat Icon setting

    .DESCRIPTION
    The Set-TaskbarShowChatIcon cmdlet is used to enable or disable the Taskbar Show Chat Icon setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarShowChatIcon -Enable

    Enables the Taskbar Show Chat Icon setting

    .EXAMPLE
    Set-TaskbarShowChatIcon -Disable -Verbose

    Disables the Taskbar Show Chat Icon setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Show Chat Icon')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Show Chat Icon')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}