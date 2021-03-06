function Set-ExplorerShowMapNetworkDriveButton {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Map Network Drive Button setting

    .DESCRIPTION
    The Set-ExplorerShowMapNetworkDriveButton cmdlet is used to enable or disable the Explorer Show Map Network Drive Button setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowMapNetworkDriveButton -Enable

    Enables the Explorer Show Map Network Drive Button setting

    .EXAMPLE
    Set-ExplorerShowMapNetworkDriveButton -Disable -Verbose

    Disables the Explorer Show Map Network Drive Button setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Map Network Drive Button')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Map Network Drive Button')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}