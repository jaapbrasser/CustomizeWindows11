function Set-ExplorerNavShowLibrary {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Nav Show Library setting

    .DESCRIPTION
    The Set-ExplorerNavShowLibrary cmdlet is used to enable or disable the Explorer Nav Show Library setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerNavShowLibrary -Enable

    Enables the Explorer Nav Show Library setting

    .EXAMPLE
    Set-ExplorerNavShowLibrary -Disable -Verbose

    Disables the Explorer Nav Show Library setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Nav Show Library')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Nav Show Library')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}