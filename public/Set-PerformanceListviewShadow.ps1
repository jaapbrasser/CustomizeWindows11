function Set-PerformanceListviewShadow {
<#  
    .SYNOPSIS
    Enables or disables the Performance Listview Shadow setting

    .DESCRIPTION
    The Set-PerformanceListviewShadow cmdlet is used to enable or disable the Performance Listview Shadow setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-PerformanceListviewShadow -Enable

    Enables the Performance Listview Shadow setting

    .EXAMPLE
    Set-PerformanceListviewShadow -Disable -Verbose

    Disables the Performance Listview Shadow setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Performance Listview Shadow')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Performance Listview Shadow')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}