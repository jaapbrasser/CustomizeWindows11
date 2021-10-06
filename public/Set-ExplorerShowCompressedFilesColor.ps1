function Set-ExplorerShowCompressedFilesColor {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Compressed Files Color

    .DESCRIPTION
    The Set-ExplorerShowCompressedFilesColor cmdlet is used to enable or disable the Explorer Show Compressed Files Color

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowCompressedFilesColor -Enable

    Enables the Explorer Show Compressed Files Color

    .EXAMPLE
    Set-ExplorerShowCompressedFilesColor -Disable -Verbose

    Disables the Explorer Show Compressed Files Color while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Compressed Files Color')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Compressed Files Color')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}