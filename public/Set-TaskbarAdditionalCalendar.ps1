function Set-TaskbarAdditionalCalendar {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Additional Calendar setting

    .DESCRIPTION
    The Set-TaskbarAdditionalCalendar cmdlet is used to enable or disable the Taskbar Additional Calendar setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarAdditionalCalendar -Enable

    Enables the Taskbar Additional Calendar setting

    .EXAMPLE
    Set-TaskbarAdditionalCalendar -Disable -Verbose

    Disables the Taskbar Additional Calendar setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Additional Calendar')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Additional Calendar')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}