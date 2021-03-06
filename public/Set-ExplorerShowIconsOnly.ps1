function Set-ExplorerShowIconsOnly {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Icons Only setting

    .DESCRIPTION
    The Set-ExplorerShowIconsOnly cmdlet is used to enable or disable the Explorer Show Icons Only setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowIconsOnly -Enable

    Enables the Explorer Show Icons Only setting

    .EXAMPLE
    Set-ExplorerShowIconsOnly -Disable -Verbose

    Disables the Explorer Show Icons Only setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Icons Only')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Icons Only')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}