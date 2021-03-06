function Set-DesktopShowIcons {
<#  
    .SYNOPSIS
    Enables or disables the Desktop Show Icons setting

    .DESCRIPTION
    The Set-DesktopShowIcons cmdlet is used to enable or disable the Desktop Show Icons setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-DesktopShowIcons -Enable

    Enables the Desktop Show Icons setting

    .EXAMPLE
    Set-DesktopShowIcons -Disable -Verbose

    Disables the Desktop Show Icons setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Desktop Show Icons')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Desktop Show Icons')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}