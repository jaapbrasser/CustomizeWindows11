function Get-TaskbarShowChatIcon {
<#  
    .SYNOPSIS
    Queries the current setting of Taskbar Show Chat Icon 

    .DESCRIPTION
    The Get-TaskbarShowChatIcon cmdlet is used to query the current setting of Taskbar Show Chat Icon

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-TaskbarShowChatIcon

    Verifies whether Taskbar Show Chat Icon is enabled or disabled

    .EXAMPLE
    Get-TaskbarShowChatIcon -Verbose

    Verifies whether Taskbar Show Chat Icon is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}