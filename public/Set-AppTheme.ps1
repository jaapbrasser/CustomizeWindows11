function Set-AppTheme {
<#  
    .SYNOPSIS
    Sets app theme for Windows. Options are Light (default) or dark

    .DESCRIPTION
    The Set-AppTheme function will set the app theme for the current user.

    .EXAMPLE
    Set-AppTheme -Type Dark

    .EXAMPLE
    Set-AppTheme -Type Light

    
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, HelpMessage = 'Sets light or dark app theme')]
        [ValidateSet('Light', 'Dark')]
        [string] $Type
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}