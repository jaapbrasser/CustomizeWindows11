function Get-TaskbarLock {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Lock 

    .DESCRIPTION
    The Get-TaskbarLock cmdlet is used to query the current setting of Taskbar Lock

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarLock

    Verifies whether Taskbar Lock is enabled or disabled

    .EXAMPLE
    Get-TaskbarLock -Verbose

    Verifies whether Taskbar Lock is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}