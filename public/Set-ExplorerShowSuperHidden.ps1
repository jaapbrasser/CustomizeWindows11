function Set-ExplorerShowSuperHidden {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Show Super Hidden setting

    .DESCRIPTION
    The Set-ExplorerShowSuperHidden cmdlet is used to enable or disable the Explorer Show Super Hidden setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerShowSuperHidden -Enable

    Enables the Explorer Show Super Hidden setting

    .EXAMPLE
    Set-ExplorerShowSuperHidden -Disable -Verbose

    Disables the Explorer Show Super Hidden setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Show Super Hidden')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Show Super Hidden')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}