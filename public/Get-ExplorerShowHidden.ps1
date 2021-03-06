function Get-ExplorerShowHidden {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Hidden 

    .DESCRIPTION
    The Get-ExplorerShowHidden cmdlet is used to query the current setting of Explorer Show Hidden

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

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}