function Get-TaskbarAnimations {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Animations 

    .DESCRIPTION
    The Get-TaskbarAnimations cmdlet is used to query the current setting of Taskbar Animations

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarAnimations

    Verifies whether Taskbar Animations is enabled or disabled

    .EXAMPLE
    Get-TaskbarAnimations -Verbose

    Verifies whether Taskbar Animations is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}