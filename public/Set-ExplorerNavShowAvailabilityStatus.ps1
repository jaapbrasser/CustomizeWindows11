function Set-ExplorerNavShowAvailabilityStatus {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Nav Show Availability Status setting

    .DESCRIPTION
    The Set-ExplorerNavShowAvailabilityStatus cmdlet is used to enable or disable the Explorer Nav Show Availability Status setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerNavShowAvailabilityStatus -Enable

    Enables the Explorer Nav Show Availability Status setting

    .EXAMPLE
    Set-ExplorerNavShowAvailabilityStatus -Disable -Verbose

    Disables the Explorer Nav Show Availability Status setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Nav Show Availability Status')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Nav Show Availability Status')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}