function Get-ExplorerLaunchInSeparateProcess {
<#  
    .SYNOPSIS
    Enables or disables the Explorer Launch In Separate Process

    .DESCRIPTION
    The Get-ExplorerLaunchInSeparateProcess cmdlet is used to enable or disable the Explorer Launch In Separate Process

    .NOTES
    Written by Jaap Brasser for community usage
    Twitter: @jaap_brasser
    GitHub: jaapbrasser

    .LINK
    TBD

    .EXAMPLE
    Get-ExplorerLaunchInSeparateProcess

    Verifies whether Explorer Launch In Separate Process is enabled or disabled

    .EXAMPLE
    Get-ExplorerLaunchInSeparateProcess -Verbose

    Verifies whether Explorer Launch In Separate Process is enabled or disabled, while displaying verbose information
#>

    [CmdletBinding(SupportsShouldProcess = $true)]
    Param(
    )

    Invoke-ConfigurationData -Parameter $PSBoundParameters
}