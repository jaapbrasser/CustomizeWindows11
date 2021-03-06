function Set-PerformanceTranslucentSelectionRectangle {
<#  
    .SYNOPSIS
    Enables or disables the Performance Translucent Selection Rectangle setting

    .DESCRIPTION
    The Set-PerformanceTranslucentSelectionRectangle cmdlet is used to enable or disable the Performance Translucent Selection Rectangle setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-PerformanceTranslucentSelectionRectangle -Enable

    Enables the Performance Translucent Selection Rectangle setting

    .EXAMPLE
    Set-PerformanceTranslucentSelectionRectangle -Disable -Verbose

    Disables the Performance Translucent Selection Rectangle setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Performance Translucent Selection Rectangle')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Performance Translucent Selection Rectangle')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}