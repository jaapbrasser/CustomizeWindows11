function Set-ExplorerNavExpandToCurrentFolder {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Nav Expand To Current Folder setting

    .DESCRIPTION
    The Set-ExplorerNavExpandToCurrentFolder cmdlet is used to enable or disable the Explorer Nav Expand To Current Folder setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerNavExpandToCurrentFolder -Enable

    Enables the Explorer Nav Expand To Current Folder setting

    .EXAMPLE
    Set-ExplorerNavExpandToCurrentFolder -Disable -Verbose

    Disables the Explorer Nav Expand To Current Folder setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Nav Expand To Current Folder')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Nav Expand To Current Folder')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}