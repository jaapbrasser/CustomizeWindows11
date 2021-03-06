function Get-ExplorerShowMapNetworkDriveButton {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Map Network Drive Button 

    .DESCRIPTION
    The Get-ExplorerShowMapNetworkDriveButton cmdlet is used to query the current setting of Explorer Show Map Network Drive Button

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowMapNetworkDriveButton

    Verifies whether Explorer Show Map Network Drive Button is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowMapNetworkDriveButton -Verbose

    Verifies whether Explorer Show Map Network Drive Button is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}