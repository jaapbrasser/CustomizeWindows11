$Public  = @( Get-ChildItem -Path $PSScriptRoot\Public\*.ps1 -ErrorAction SilentlyContinue )
$Private = @( Get-ChildItem -Path $PSScriptRoot\Private\*.ps1 -ErrorAction SilentlyContinue )

@($Public, $Private) | ForEach-Object {
    $_ | ForEach-Object {
        try {
            $Current = $_
            $ExecutionContext.InvokeCommand.InvokeScript([IO.File]::ReadAllText($_.FullName), $false, [Management.Automation.Runspaces.PipelineResultTypes]::None, $null, $null)
        } catch {
            Write-Error -Message "Failed to import function $($Current.fullname): $_"
        }
    }
}

Export-ModuleMember -Function $Public.Basename -Alias *