function Invoke-ConfigurationData {
    param(
        $Parameter
    )

    $CallingCmdlet = (Get-PSCallStack)[1].Command
    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Called by '$CallingCmdlet'"

    $ModulePath = (Get-Item function:\$CallingCmdlet).Module.ModuleBase

    $ConfigData = Get-Content -Raw -Path "$ModulePath/private/data/$($CallingCmdlet.split('-')[1]).json" | ConvertFrom-Json
    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Configuration data retrieved from json: $($ConfigData|ConvertTo-Json)"

    $PreFixRegPath = "Registry::HKEY_CURRENT_USER"
    $ConfigRegPath = "$PreFixRegPath\$($ConfigData.RegKey)"

    switch -Regex ($CallingCmdlet) {
        '^Set' {
            if ($Parameter.ContainsKey('Enable') -and $Parameter.Enable) {
                New-RegPath -Path $ConfigRegPath
                try {
                    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Setting value '$($ConfigData.Enable.ValueName)' to '$($ConfigData.Enable.ValueData)'"
                    New-ItemProperty -Path $ConfigRegPath -Name $ConfigData.Enable.ValueName -Value $ConfigData.Enable.ValueData -PropertyType $ConfigData.Enable.ValueType
                } catch {
                    $_
                }
            } elseif ($Parameter.ContainsKey('Disable') -and $Parameter.Disable) {
                if ($ConfigData.Disable.Operation -eq 'Remove') {
                    if ($ConfigData.Disable.Path) {
                        try {
                            Remove-Item -Path "$PreFixRegPath\$($ConfigData.Disable.Path)" -Recurse -Force -ErrorAction Stop
                        } catch {
                            $_
                        }
                    } elseif ($ConfigData.Disable.ValuePath) {
                        try {
                            Remove-ItemProperty -Path "$PreFixRegPath\$($ConfigData.Disable.Path)" -Force -ErrorAction Stop
                        } catch {
                            $_
                        }
                    }
                }
            }
        }
        '^Get' {
            
        }
        '^Remove' {
            
        }
    }
}