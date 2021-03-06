function Set-ExplorerHideFileExtension {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Hide File Extension setting

    .DESCRIPTION
    The Set-ExplorerHideFileExtension cmdlet is used to enable or disable the Explorer Hide File Extension setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerHideFileExtension -Enable

    Enables the Explorer Hide File Extension setting

    .EXAMPLE
    Set-ExplorerHideFileExtension -Disable -Verbose

    Disables the Explorer Hide File Extension setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Hide File Extension')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Hide File Extension')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}