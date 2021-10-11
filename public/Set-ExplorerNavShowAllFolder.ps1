function Set-ExplorerNavShowAllFolder {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Nav Show All Folder setting

    .DESCRIPTION
    The Set-ExplorerNavShowAllFolder cmdlet is used to enable or disable the Explorer Nav Show All Folder setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerNavShowAllFolder -Enable

    Enables the Explorer Nav Show All Folder setting

    .EXAMPLE
    Set-ExplorerNavShowAllFolder -Disable -Verbose

    Disables the Explorer Nav Show All Folder setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Nav Show All Folder')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Nav Show All Folder')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}