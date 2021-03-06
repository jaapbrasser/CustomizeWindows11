function Set-ExplorerShowStatusBar {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Status Bar setting

    .DESCRIPTION
    The Set-ExplorerShowStatusBar cmdlet is used to enable or disable the Explorer Show Status Bar setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowStatusBar -Enable

    Enables the Explorer Show Status Bar setting

    .EXAMPLE
    Set-ExplorerShowStatusBar -Disable -Verbose

    Disables the Explorer Show Status Bar setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Status Bar')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Status Bar')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}