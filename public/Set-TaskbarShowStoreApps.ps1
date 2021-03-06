function Set-TaskbarShowStoreApps {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Show Store Apps setting

    .DESCRIPTION
    The Set-TaskbarShowStoreApps cmdlet is used to enable or disable the Taskbar Show Store Apps setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarShowStoreApps -Enable

    Enables the Taskbar Show Store Apps setting

    .EXAMPLE
    Set-TaskbarShowStoreApps -Disable -Verbose

    Disables the Taskbar Show Store Apps setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Show Store Apps')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Show Store Apps')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}