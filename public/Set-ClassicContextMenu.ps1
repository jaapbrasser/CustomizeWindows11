function Set-ClassicContextMenu {
<#  
    .SYNOPSIS
    Enables or disabled the Classic Context Menu

    .DESCRIPTION
    The Set-ClassicContextMenu cmdlet is used to switch enable or disable the Classic Context Menu

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE

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