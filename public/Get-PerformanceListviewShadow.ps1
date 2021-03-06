function Get-PerformanceListviewShadow {
<#  
    .SYNOPSIS
    Queries the current setting of Performance Listview Shadow 

    .DESCRIPTION
    The Get-PerformanceListviewShadow cmdlet is used to query the current setting of Performance Listview Shadow

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-PerformanceListviewShadow

    Verifies whether Performance Listview Shadow is enabled or disabled

    .EXAMPLE
    Get-PerformanceListviewShadow -Verbose

    Verifies whether Performance Listview Shadow is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}