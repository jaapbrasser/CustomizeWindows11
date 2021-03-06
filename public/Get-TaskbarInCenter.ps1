function Get-TaskbarInCenter {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar In Center 

    .DESCRIPTION
    The Get-TaskbarInCenter cmdlet is used to query the current setting of Taskbar In Center

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarInCenter

    Verifies whether Taskbar In Center is enabled or disabled

    .EXAMPLE
    Get-TaskbarInCenter -Verbose

    Verifies whether Taskbar In Center is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}