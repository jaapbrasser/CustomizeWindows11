function Get-ExplorerShowInfoTip {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Info Tip 

    .DESCRIPTION
    The Get-ExplorerShowInfoTip cmdlet is used to query the current setting of Explorer Show Info Tip

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowInfoTip

    Verifies whether Explorer Show Info Tip is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowInfoTip -Verbose

    Verifies whether Explorer Show Info Tip is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}