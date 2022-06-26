function Get-SystemTheme {
<#  
    .SYNOPSIS
    Gets system theme for Windows.

    .DESCRIPTION
    The Gt-SystemTheme function will get the system theme for the current user.

    .EXAMPLE
    Get-SystemTheme
    
#>

    [CmdletBinding()]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}