function Set-ClassicContextMenu {
<#  
    .SYNOPSIS
    Enables or disables the Classic Context Menu setting

    .DESCRIPTION
    The Set-ClassicContextMenu cmdlet is used to enable or disable the Classic Context Menu setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ClassicContextMenu -Enable

    Enables the Classic Context Menu setting

    .EXAMPLE
    Set-ClassicContextMenu -Disable -Verbose

    Disables the Classic Context Menu setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Classic Context Menu')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Classic Context Menu')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}