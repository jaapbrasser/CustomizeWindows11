function Get-AppTheme {
<#  
    .SYNOPSIS
    Gets app theme for Windows.

    .DESCRIPTION
    The Get-AppTheme function will get the app theme for the current user.

    .EXAMPLE
    Get-AppTheme

    
#>

    [CmdletBinding()]
    Param(
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}