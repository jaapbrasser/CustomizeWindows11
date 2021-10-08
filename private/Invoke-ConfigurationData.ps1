function Invoke-ConfigurationData {
    param(
        $Parameter,
        [string] $CallingCmdlet
    )

    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Called by '$CallingCmdlet'"

    $ModulePath = (Get-Item function:\$CallingCmdlet).Module.ModuleBase

    if ($PSVersionTable.PSVersion.Major -ge 6) {
        $ConfigData = Get-Content -Raw -Path "$ModulePath/private/data/$($CallingCmdlet.split('-')[1]).json" | ConvertFrom-Json -AsHashtable
    } else {
        $ConfigObject = Get-Content -Raw -Path "$ModulePath/private/data/$($CallingCmdlet.split('-')[1]).json" | ConvertFrom-Json
        $ConfigData = ConvertTo-Hash -Object $ConfigObject
    }
        
    $PropertyName = $ConfigData.keys | Where-Object Name -ne 'RegKey' | Select-Object -First 1
    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Configuration data retrieved from json '$($CallingCmdlet.split('-')[1]).json': $($ConfigData|ConvertTo-Json -WarningAction SilentlyContinue)"

    $PreFixRegPath = "Registry::HKEY_CURRENT_USER"
    $ConfigRegPath = "$PreFixRegPath\$($ConfigData.RegKey)"

    switch -Regex ($CallingCmdlet) {
        '^Set' {
            if ($Parameter.ContainsKey('Enable') -and $Parameter.Enable) {
                New-RegPath -Path $ConfigRegPath
                try {
                    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Setting value '$($ConfigData.Enable.ValueName)' to '$($ConfigData.Enable.ValueData)'"
                    New-ItemProperty -Path $ConfigRegPath -Name $ConfigData.Enable.ValueName -Value $ConfigData.Enable.ValueData -PropertyType $ConfigData.Enable.ValueType -Force
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
                }  elseif ($Parameter.ContainsKey('Disable') -and $Parameter.Disable) {
                    New-RegPath -Path $ConfigRegPath
                    try {
                        Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Setting value '$($ConfigData.Disable.ValueName)' to '$($ConfigData.Disable.ValueData)'"
                        New-ItemProperty -Path $ConfigRegPath -Name $ConfigData.Disable.ValueName -Value $ConfigData.Disable.ValueData -PropertyType $ConfigData.Disable.ValueType -Force
                    } catch {
                        $_
                    }
                }
            } elseif ($ConfigData.Keys -contains $PropertyName -and $Parameter.ContainsKey($PropertyName)) {
                $CurrentValue = $ConfigData.$PropertyName.$($Parameter.$PropertyName)
                if ($CurrentValue) {
                    Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Setting value '$($CurrentValue.ValueName)' to '$($CurrentValue.ValueData)'"
                    New-ItemProperty -Path $ConfigRegPath -Name $CurrentValue.ValueName -Value $CurrentValue.ValueData -PropertyType $CurrentValue.ValueType -Force
                } else {
                    Write-Warning "No matching value found for '$PropertyName' with value '$($Parameter.$PropertyName)'"
                }
            }
        }
        '^Get' {
            $PropertyName = $ConfigData.keys | Where-Object {$_ -ne 'RegKey'} | Select-Object -First 1
            [pscustomobject]@{
                'Setting' = $CallingCmdlet -replace 'Get-'
                "$(if ($PropertyName -in @('Enable','Disable')) {'Enabled'} else {$PropertyName})" = 
                    if ($PropertyName -in @('Enable','Disable')) {
                        (Get-ItemPropertyValue -Path $ConfigRegPath -Name $ConfigData.Enable.ValueName -ErrorAction SilentlyContinue) -eq "$($ConfigData.Enable.ValueData)"
                    } else {
                        $RegistryValue = try {
                            Get-ItemPropertyValue -Path $ConfigRegPath -Name $ConfigData.$PropertyName.Values.ValueName[0] -ErrorAction Stop
                        } catch {}
                        Write-Verbose -Message "$($MyInvocation.MyCommand.Name):: Retrieved '$RegistryValue' from '$ConfigRegPath'"
                        $ConfigData.$PropertyName.Keys | Where-Object {
                            if ($ConfigData.$PropertyName.$_.ValueType -eq 'Binary') {
                                # String comparison workaround for binary strings
                                (-join $ConfigData.$PropertyName.$_.ValueData) -eq (-join $RegistryValue)
                            } else {
                                $ConfigData.$PropertyName.$_.ValueData -eq $RegistryValue
                            }
                        }
                    }
            }
        }
        '^Remove' {
        }
    }
}