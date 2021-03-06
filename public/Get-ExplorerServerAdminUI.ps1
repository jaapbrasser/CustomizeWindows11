function Get-ExplorerServerAdminUI {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Server Admin U I 

    .DESCRIPTION
    The Get-ExplorerServerAdminUI cmdlet is used to query the current setting of Explorer Server Admin U I

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerServerAdminUI

    Verifies whether Explorer Server Admin U I is enabled or disabled

    .EXAMPLE
    Get-ExplorerServerAdminUI -Verbose

    Verifies whether Explorer Server Admin U I is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}