function ConvertTo-Hash {
    param (
        [pscustomobject] $Object
    )

    $Object.PSobject.Properties | ForEach-Object -Begin {$Hash = @{}} -Process {
        if ($_.Value) {
            if ($_.Value.GetType() -match 'PSCustomObject') {
                $Hash[$_.Name] = ConvertTo-Hash $_.Value
            } else {
                $Hash[$_.Name] = $_.Value
            }
        } else {
            $Hash[$_.Name] = $_.Value
        }
    } -End {
        $Hash
    }
}