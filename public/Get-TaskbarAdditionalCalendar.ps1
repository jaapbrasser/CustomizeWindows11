function Get-TaskbarAdditionalCalendar {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Additional Calendar 

    .DESCRIPTION
    The Get-TaskbarAdditionalCalendar cmdlet is used to query the current setting of Taskbar Additional Calendar

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarAdditionalCalendar

    Verifies whether Taskbar Additional Calendar is enabled or disabled

    .EXAMPLE
    Get-TaskbarAdditionalCalendar -Verbose

    Verifies whether Taskbar Additional Calendar is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}