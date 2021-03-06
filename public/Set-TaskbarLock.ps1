function Set-TaskbarLock {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Lock setting

    .DESCRIPTION
    The Set-TaskbarLock cmdlet is used to enable or disable the Taskbar Lock setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarLock -Enable

    Enables the Taskbar Lock setting

    .EXAMPLE
    Set-TaskbarLock -Disable -Verbose

    Disables the Taskbar Lock setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Lock')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Lock')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}