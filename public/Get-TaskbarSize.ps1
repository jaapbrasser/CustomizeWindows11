function Get-TaskbarSize {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Size 

    .DESCRIPTION
    The Get-TaskbarSize cmdlet is used to query the current setting of Taskbar Size

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarSize

    Verifies whether Taskbar Size is enabled or disabled

    .EXAMPLE
    Get-TaskbarSize -Verbose

    Verifies whether Taskbar Size is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}