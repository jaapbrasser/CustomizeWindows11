function Get-ExplorerShowHidden {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Hidden

    .DESCRIPTION
    The Get-ExplorerShowHidden cmdlet is used to enable or disable the Explorer Show Hidden

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowHidden

    Verifies whether Explorer Show Hidden is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowHidden -Verbose

    Verifies whether Explorer Show Hidden is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}