function Set-SnapAssist {
<#  
    .SYNOPSIS
    Enables or disables the Snap Assist setting

    .DESCRIPTION
    The Set-SnapAssist cmdlet is used to enable or disable the Snap Assist setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-SnapAssist -Enable

    Enables the Snap Assist setting

    .EXAMPLE
    Set-SnapAssist -Disable -Verbose

    Disables the Snap Assist setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Snap Assist')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Snap Assist')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}