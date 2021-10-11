function Get-ExplorerNavShowLibrary {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Nav Show Library 

    .DESCRIPTION
    The Get-ExplorerNavShowLibrary cmdlet is used to query the current setting of Explorer Nav Show Library

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerNavShowLibrary

    Verifies whether Explorer Nav Show Library is enabled or disabled

    .EXAMPLE
    Get-ExplorerNavShowLibrary -Verbose

    Verifies whether Explorer Nav Show Library is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}