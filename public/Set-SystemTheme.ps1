function Set-SystemTheme {
<#  
    .SYNOPSIS
    Sets system theme for Windows. Options are Light (default) or dark

    .DESCRIPTION
    The Set-SystemTheme function will set the system theme for the current user.

    .EXAMPLE
    Set-SystemTheme -Type Dark

    .EXAMPLE
    Set-SystemTheme -Type Light

    
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true, HelpMessage = 'Sets light or dark system theme')]
        [ValidateSet('Light', 'Dark')]
        [string] $Type
    )

    Invoke-ConfigurationData -CallingCmdlet $MyInvocation.MyCommand.Name -Parameter $PSBoundParameters
}