function Set-TaskbarSmallIcon {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Small Icon setting

    .DESCRIPTION
    The Set-TaskbarSmallIcon cmdlet is used to enable or disable the Taskbar Small Icon setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarSmallIcon -Enable

    Enables the Taskbar Small Icon setting

    .EXAMPLE
    Set-TaskbarSmallIcon -Disable -Verbose

    Disables the Taskbar Small Icon setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Small Icon')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Small Icon')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}