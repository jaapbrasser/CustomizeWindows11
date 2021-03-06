function Get-TaskbarShowTaskViewButton {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Show Task View Button 

    .DESCRIPTION
    The Get-TaskbarShowTaskViewButton cmdlet is used to query the current setting of Taskbar Show Task View Button

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowTaskViewButton

    Verifies whether Taskbar Show Task View Button is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowTaskViewButton -Verbose

    Verifies whether Taskbar Show Task View Button is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}