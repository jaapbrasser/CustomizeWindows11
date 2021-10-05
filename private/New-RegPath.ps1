function New-RegPath {
    <#
    .Synopsis
    Only created new path if test fails
    #>
    param (
        $Path
    )

    if (-not (Test-Path $Path)) {
        try {
            Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Creating $Path"
            New-Item -Path $Path -Force -ErrorAction Stop
        } catch {
            $_
        }
    } else {
        Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Path exists no action taken"
    }
}