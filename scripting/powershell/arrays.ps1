$array_vacio = @()

$enteros = @(1,2,3,4,5)
$enteros = 1,2,3,4,5

$consecutivos = 1..10

$caracteres = 'a','b','c','d','e'

$multi_tipo = @(1,2,3,'a','b')

Write-Host $enteros[0]
Write-Host $enteros[-1]
Write-Host $enteros.Length

# En powershell los arrays son inmutables,
# al añadir un elemento se realiza una copia del array
# on el elemento a insertar y se borra el original
$enteros += 50
Write-Host $enteros
$enteros -join '--'

# ArrayList permite eliminar elementos y es mutable:
[System.Collections.ArrayList] $caps = 'A', 'B', 'C', 'D'
Write-Host $caps
$caps.Remove('B')
Write-Host $caps
$caps -contains 'C'