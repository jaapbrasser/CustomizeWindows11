function Set-TaskbarAdditionalCalendar {
<#  
    .SYNOPSIS
    Sets the Taskbar Additional Calendar

    .DESCRIPTION
    The Set-TaskbarAdditionalCalendar cmdlet is used set the Taskbar Additional Calendar 

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarAdditionalCalendar -CalendarOption None

    Set the Taskbar Additional Calendar to the default of none   
    
    .EXAMPLE
    Set-TaskbarAdditionalCalendar -CalendarOption SimplifiedLunar

    Set the Taskbar Additional Calendar to display the additional SimplifiedLunar

    .EXAMPLE
    Set-TaskbarAdditionalCalendar -CalendarOption TraditionalLunar -Verbose

    Set the Taskbar Additional Calendar to display the additional TraditionalLunar while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, HelpMessage = 'Set Taskbar Size')]
        [ValidateSet('None', 'SimplifiedLunar', 'TraditionalLunar')]
        [string] $CalendarOption
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}