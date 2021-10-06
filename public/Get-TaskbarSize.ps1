function Get-TaskbarSize {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar Size

    .DESCRIPTION
    The Get-TaskbarSize cmdlet is used to enable or disable the Taskbar Size

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

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}