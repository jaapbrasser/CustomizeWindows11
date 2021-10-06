function Set-ExplorerHideFileExt {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Hide File Ext

    .DESCRIPTION
    The Set-ExplorerHideFileExt cmdlet is used to enable or disable the Explorer Hide File Ext

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerHideFileExt -Enable

    Enables the Explorer Hide File Ext

    .EXAMPLE
    Set-ExplorerHideFileExt -Disable -Verbose

    Disables the Explorer Hide File Ext while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Hide File Ext')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Hide File Ext')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}