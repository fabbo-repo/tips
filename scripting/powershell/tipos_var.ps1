$nombre = "Pepe"
Write-Host $nombre.GetType().Name

$nombre = 4.99
Write-Host $nombre.GetType().Name

[float] $temperatura = 36.7
# A partir de ahora temperatura solo puede tener un float
Write-Host $temperatura.GetType().Name

[int] $numero = 3
Write-Host $numero.GetType().Name

[long] $numero2 = 10000
Write-Host $numero2.GetType().Name

[char] $caracter = 'a'
Write-Host $caracter.GetType().Name

# casting de string a datetime
$fecha = [datetime] "3/11/2009"
Write-Host $fecha.GetType().Name
Write-Host $fecha