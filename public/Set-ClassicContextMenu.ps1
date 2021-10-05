function Set-ClassicContextMenu {
<#  
    .SYNOPSIS
    Enables or disables the Classic Context Menu

    .DESCRIPTION
    The Set-ClassicContextMenu cmdlet is used to switch enable or disable the Classic Context Menu

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ClassicContextMenu -Enable

    Enables the Classic Content Menu

    .EXAMPLE
    Set-ClassicContextMenu -Disable -Verbose

    Disables the Classic Content Menu while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Classic Context Menu')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Classic Context Menu')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}