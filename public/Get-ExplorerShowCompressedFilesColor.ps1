function Get-ExplorerShowCompressedFilesColor {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Compressed Files Color

    .DESCRIPTION
    The Get-ExplorerShowCompressedFilesColor cmdlet is used to enable or disable the Explorer Show Compressed Files Color

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowCompressedFilesColor

    Verifies whether Explorer Show Compressed Files Color is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowCompressedFilesColor -Verbose

    Verifies whether Explorer Show Compressed Files Color is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}