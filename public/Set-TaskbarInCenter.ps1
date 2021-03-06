function Set-TaskbarInCenter {
<#  
    .SYNOPSIS
    Enables or disables the Taskbar In Center setting

    .DESCRIPTION
    The Set-TaskbarInCenter cmdlet is used to enable or disable the Taskbar In Center setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-TaskbarInCenter -Enable

    Enables the Taskbar In Center setting

    .EXAMPLE
    Set-TaskbarInCenter -Disable -Verbose

    Disables the Taskbar In Center setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Taskbar In Center')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Taskbar In Center')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}