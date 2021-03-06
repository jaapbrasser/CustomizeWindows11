function Set-ExplorerCheckboxFileSelection {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Checkbox File Selection setting

    .DESCRIPTION
    The Set-ExplorerCheckboxFileSelection cmdlet is used to enable or disable the Explorer Checkbox File Selection setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerCheckboxFileSelection -Enable

    Enables the Explorer Checkbox File Selection setting

    .EXAMPLE
    Set-ExplorerCheckboxFileSelection -Disable -Verbose

    Disables the Explorer Checkbox File Selection setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Checkbox File Selection')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Checkbox File Selection')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}