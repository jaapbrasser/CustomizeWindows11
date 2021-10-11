function Get-ExplorerNavShowAllFolder {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Nav Show All Folder 

    .DESCRIPTION
    The Get-ExplorerNavShowAllFolder cmdlet is used to query the current setting of Explorer Nav Show All Folder

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerNavShowAllFolder

    Verifies whether Explorer Nav Show All Folder is enabled or disabled

    .EXAMPLE
    Get-ExplorerNavShowAllFolder -Verbose

    Verifies whether Explorer Nav Show All Folder is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}