function Get-TaskbarAutoHideInTabletMode {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Auto Hide In Tablet Mode 

    .DESCRIPTION
    The Get-TaskbarAutoHideInTabletMode cmdlet is used to query the current setting of Taskbar Auto Hide In Tablet Mode

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarAutoHideInTabletMode

    Verifies whether Taskbar Auto Hide In Tablet Mode is enabled or disabled

    .EXAMPLE
    Get-TaskbarAutoHideInTabletMode -Verbose

    Verifies whether Taskbar Auto Hide In Tablet Mode is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}