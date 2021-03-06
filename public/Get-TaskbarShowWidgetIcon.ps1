function Get-TaskbarShowWidgetIcon {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Show Widget Icon 

    .DESCRIPTION
    The Get-TaskbarShowWidgetIcon cmdlet is used to query the current setting of Taskbar Show Widget Icon

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowWidgetIcon

    Verifies whether Taskbar Show Widget Icon is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowWidgetIcon -Verbose

    Verifies whether Taskbar Show Widget Icon is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}