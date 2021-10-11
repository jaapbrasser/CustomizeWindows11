function Get-ExplorerNavShowAvailabilityStatus {
<#  
    .SYNOPSIS
    Queries the current setting of Explorer Nav Show Availability Status 

    .DESCRIPTION
    The Get-ExplorerNavShowAvailabilityStatus cmdlet is used to query the current setting of Explorer Nav Show Availability Status

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerNavShowAvailabilityStatus

    Verifies whether Explorer Nav Show Availability Status is enabled or disabled

    .EXAMPLE
    Get-ExplorerNavShowAvailabilityStatus -Verbose

    Verifies whether Explorer Nav Show Availability Status is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}