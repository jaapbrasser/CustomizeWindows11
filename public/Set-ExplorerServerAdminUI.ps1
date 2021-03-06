function Set-ExplorerServerAdminUI {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Server Admin U I setting

    .DESCRIPTION
    The Set-ExplorerServerAdminUI cmdlet is used to enable or disable the Explorer Server Admin U I setting

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Set-ExplorerServerAdminUI -Enable

    Enables the Explorer Server Admin U I setting

    .EXAMPLE
    Set-ExplorerServerAdminUI -Disable -Verbose

    Disables the Explorer Server Admin U I setting, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
        [Parameter(Mandatory = $true, ParameterSetName='Enable', HelpMessage = 'Enable Explorer Server Admin U I')]
        [switch] $Enable,
        [Parameter(Mandatory = $true, ParameterSetName='Disable', HelpMessage = 'Disable Explorer Server Admin U I')]
        [switch] $Disable
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}