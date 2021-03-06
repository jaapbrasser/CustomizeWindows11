function Get-TaskbarShowCortanaButton {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Show Cortana Button 

    .DESCRIPTION
    The Get-TaskbarShowCortanaButton cmdlet is used to query the current setting of Taskbar Show Cortana Button

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowCortanaButton

    Verifies whether Taskbar Show Cortana Button is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowCortanaButton -Verbose

    Verifies whether Taskbar Show Cortana Button is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}