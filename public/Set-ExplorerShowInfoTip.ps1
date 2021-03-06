function Set-ExplorerShowInfoTip {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Info Tip setting

    .DESCRIPTION
    The Set-ExplorerShowInfoTip cmdlet is used to enable or disable the Explorer Show Info Tip setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowInfoTip -Enable

    Enables the Explorer Show Info Tip setting

    .EXAMPLE
    Set-ExplorerShowInfoTip -Disable -Verbose

    Disables the Explorer Show Info Tip setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Info Tip')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Info Tip')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}