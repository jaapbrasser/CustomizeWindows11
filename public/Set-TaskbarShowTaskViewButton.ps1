function Set-TaskbarShowTaskViewButton {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show Task View Button setting

    .DESCRIPTION
    The Set-TaskbarShowTaskViewButton cmdlet is used to enable or disable the Taskbar Show Task View Button setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarShowTaskViewButton -Enable

    Enables the Taskbar Show Task View Button setting

    .EXAMPLE
    Set-TaskbarShowTaskViewButton -Disable -Verbose

    Disables the Taskbar Show Task View Button setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Show Task View Button')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Show Task View Button')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}