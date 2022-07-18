function Get-Imperial {
    param (
        [string]$Unit,
        $Value
    )

    switch ($Unit) {
        "m" { $Feet = [math]::round(3.281*$Value,2) 
            Write-Host "Meters in feet:" $Feet "ft."
        }
        "mph" { $Mph = [math]::round($Value * 0.62137119223733,2) 
            Write-Host "kmph in mph:" $Mph "mph."
        }
        "Gal" { $Galons = [math]::round($Value * 0.264172,2) 
            Write-Host "Liters in Galons:" $Galons "Gal."
        }
        Default {Write-Host "Invalid unit"}
    }
}

function Get-Metric {
    param (
        [string]$Unit,
        $Value
    )

    switch ($Unit) {
        "ft" { $Meters = [math]::round(0.3048*$Value,2) 
            Write-Host "Feet in meters:" $Meters "m"
        }
        "kmph" { $Kmph = [math]::round($Value * 1.6093440006147,2) 
            Write-Host "mph in kmph:" $Kmph "kmph."
        }
        "L" { $Liters = [math]::round($Value * 3.785412,2) 
            Write-Host "Galons in Liters:" $Liters "L"
        }
        Default {Write-Host "Invalid unit"}
    }
}