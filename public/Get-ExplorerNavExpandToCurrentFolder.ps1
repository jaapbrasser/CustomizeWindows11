function Get-ExplorerNavExpandToCurrentFolder {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Nav Expand To Current Folder 

    .DESCRIPTION
    The Get-ExplorerNavExpandToCurrentFolder cmdlet is used to query the current setting of Explorer Nav Expand To Current Folder

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerNavExpandToCurrentFolder

    Verifies whether Explorer Nav Expand To Current Folder is enabled or disabled

    .EXAMPLE
    Get-ExplorerNavExpandToCurrentFolder -Verbose

    Verifies whether Explorer Nav Expand To Current Folder is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}