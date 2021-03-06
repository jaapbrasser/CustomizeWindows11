function Get-ExplorerPrettyPath {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Pretty Path 

    .DESCRIPTION
    The Get-ExplorerPrettyPath cmdlet is used to query the current setting of Explorer Pretty Path

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerPrettyPath

    Verifies whether Explorer Pretty Path is enabled or disabled

    .EXAMPLE
    Get-ExplorerPrettyPath -Verbose

    Verifies whether Explorer Pretty Path is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}