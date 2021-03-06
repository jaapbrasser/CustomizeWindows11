function Get-ExplorerCheckboxFileSelection {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Checkbox File Selection 

    .DESCRIPTION
    The Get-ExplorerCheckboxFileSelection cmdlet is used to query the current setting of Explorer Checkbox File Selection

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerCheckboxFileSelection

    Verifies whether Explorer Checkbox File Selection is enabled or disabled

    .EXAMPLE
    Get-ExplorerCheckboxFileSelection -Verbose

    Verifies whether Explorer Checkbox File Selection is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}