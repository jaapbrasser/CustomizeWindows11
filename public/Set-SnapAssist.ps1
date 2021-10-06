function Set-SnapAssist {
<#  
    .SYNOPSIS
    Enables or disables the Snap Assist

    .DESCRIPTION
    The Set-SnapAssist cmdlet is used to enable or disable the Snap Assist

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-SnapAssist -Enable

    Enables the Snap Assist

    .EXAMPLE
    Set-SnapAssist -Disable -Verbose

    Disables the Snap Assist while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Snap Assist')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Snap Assist')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}