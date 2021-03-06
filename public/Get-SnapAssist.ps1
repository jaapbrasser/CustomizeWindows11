function Get-SnapAssist {
<#  
    .SYNOPSIS
    Queries the current setting of Snap Assist 

    .DESCRIPTION
    The Get-SnapAssist cmdlet is used to query the current setting of Snap Assist

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-SnapAssist

    Verifies whether Snap Assist is enabled or disabled

    .EXAMPLE
    Get-SnapAssist -Verbose

    Verifies whether Snap Assist is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}