function Get-DesktopShowIcons {
<#  
    .SYNOPSIS
    Queries the current setting of Desktop Show Icons 

    .DESCRIPTION
    The Get-DesktopShowIcons cmdlet is used to query the current setting of Desktop Show Icons

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-DesktopShowIcons

    Verifies whether Desktop Show Icons is enabled or disabled

    .EXAMPLE
    Get-DesktopShowIcons -Verbose

    Verifies whether Desktop Show Icons is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}