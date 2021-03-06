function Get-ExplorerShowSuperHidden {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Show Super Hidden 

    .DESCRIPTION
    The Get-ExplorerShowSuperHidden cmdlet is used to query the current setting of Explorer Show Super Hidden

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerShowSuperHidden

    Verifies whether Explorer Show Super Hidden is enabled or disabled

    .EXAMPLE
    Get-ExplorerShowSuperHidden -Verbose

    Verifies whether Explorer Show Super Hidden is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}