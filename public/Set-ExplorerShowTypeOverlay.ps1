function Set-ExplorerShowTypeOverlay {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Type Overlay setting

    .DESCRIPTION
    The Set-ExplorerShowTypeOverlay cmdlet is used to enable or disable the Explorer Show Type Overlay setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowTypeOverlay -Enable

    Enables the Explorer Show Type Overlay setting

    .EXAMPLE
    Set-ExplorerShowTypeOverlay -Disable -Verbose

    Disables the Explorer Show Type Overlay setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Type Overlay')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Type Overlay')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}