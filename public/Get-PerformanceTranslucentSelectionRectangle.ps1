function Get-PerformanceTranslucentSelectionRectangle {
<#  
    .SYNOPSIS
    Queries the current setting of Performance Translucent Selection Rectangle 

    .DESCRIPTION
    The Get-PerformanceTranslucentSelectionRectangle cmdlet is used to query the current setting of Performance Translucent Selection Rectangle

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-PerformanceTranslucentSelectionRectangle

    Verifies whether Performance Translucent Selection Rectangle is enabled or disabled

    .EXAMPLE
    Get-PerformanceTranslucentSelectionRectangle -Verbose

    Verifies whether Performance Translucent Selection Rectangle is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}