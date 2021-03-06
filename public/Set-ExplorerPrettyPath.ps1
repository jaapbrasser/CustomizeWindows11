function Set-ExplorerPrettyPath {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Pretty Path setting

    .DESCRIPTION
    The Set-ExplorerPrettyPath cmdlet is used to enable or disable the Explorer Pretty Path setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerPrettyPath -Enable

    Enables the Explorer Pretty Path setting

    .EXAMPLE
    Set-ExplorerPrettyPath -Disable -Verbose

    Disables the Explorer Pretty Path setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Pretty Path')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Pretty Path')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}