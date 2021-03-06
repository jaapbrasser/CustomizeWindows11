function Set-TaskbarAutoHideInTabletMode {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Auto Hide In Tablet Mode setting

    .DESCRIPTION
    The Set-TaskbarAutoHideInTabletMode cmdlet is used to enable or disable the Taskbar Auto Hide In Tablet Mode setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarAutoHideInTabletMode -Enable

    Enables the Taskbar Auto Hide In Tablet Mode setting

    .EXAMPLE
    Set-TaskbarAutoHideInTabletMode -Disable -Verbose

    Disables the Taskbar Auto Hide In Tablet Mode setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar Auto Hide In Tablet Mode')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar Auto Hide In Tablet Mode')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}