function Get-ExplorerHideFileExt {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Hide File Ext

    .DESCRIPTION
    The Get-ExplorerHideFileExt cmdlet is used to enable or disable the Explorer Hide File Ext

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerHideFileExt

    Verifies whether Explorer Hide File Ext is enabled or disabled

    .EXAMPLE
    Get-ExplorerHideFileExt -Verbose

    Verifies whether Explorer Hide File Ext is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}