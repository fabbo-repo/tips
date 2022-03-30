$veces = 0
while ( $veces -lt 5 ) {
    Write-Host ("Num: "+$veces)
    $veces+=1
}

Write-Host

$veces = 0
do {
    Write-Host ("Num: "+$veces)
    $veces+=1
} while ( $veces -lt 5 )

Write-Host

$colores = @('azul', 'verde', 'rojo')
foreach ($c in $colores) {
    Write-Host $c
}

Write-Host

for ($i = 0; $i -lt 5; $i++) {
    Write-Host ("Num: "+$i) 
}