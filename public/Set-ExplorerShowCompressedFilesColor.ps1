function Set-ExplorerShowCompressedFilesColor {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Compressed Files Color setting

    .DESCRIPTION
    The Set-ExplorerShowCompressedFilesColor cmdlet is used to enable or disable the Explorer Show Compressed Files Color setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowCompressedFilesColor -Enable

    Enables the Explorer Show Compressed Files Color setting

    .EXAMPLE
    Set-ExplorerShowCompressedFilesColor -Disable -Verbose

    Disables the Explorer Show Compressed Files Color setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Compressed Files Color')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Compressed Files Color')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}