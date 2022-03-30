$color = Read-Host "Introduce color de semaforo (rojo, verde o amarillo)"
switch ($color)
{
    'rojo' { 
        Write-Host "No puedes pasar" 
        Break
    }
    'amarillo' { 
        Write-Host "Precaucion" 
        Break
    }
    'verde' { 
        Write-Host "Puedes pasar" 
        Break
    }
    Default {
        Write-Host "Color no valido" 
    }
}
Write-Host "Fin del programa1"

[int] $edad = Read-Host "Introduce edad"
switch($edad) {
    { $_ -gt 18 } {
        Write-Host "Es mayor de edad" 
        Break
    }
    { $_ -eq 18 } {
        Write-Host "Justo 18 :O" 
        Break
    }
    { $_ -lt 18 } {
        Write-Host "Es menor de edad"
    }
    { $_ -ge 13 -AND $_ -lt 18 } {
        Write-Host "Es adolescente"
        Break
    }
}
Write-Host "Fin del programa"