function Set-TaskbarSize {
<#  
    .SYNOPSIS
    Sets the Taskbar Size setting

    .DESCRIPTION
    The Set-TaskbarSize cmdlet is used to set the Taskbar Size setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarSize -Size Small

    Set the Taskbar Size to small

    .EXAMPLE
    Set-TaskbarSize -Size Medium

    Set the Taskbar Size to medium

    .EXAMPLE
    Set-TaskbarSize -Size Large -Verbose

    Set the Taskbar Size to large, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, HelpMessage = 'Set Taskbar Size')]
        [ValidateSet('Small', 'Medium', 'Large')]
        [string] $Size
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}