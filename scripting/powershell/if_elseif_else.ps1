[int] $edad = Read-Host "Introduce edad"
if ( $edad -gt 18 ) {
    Write-Host "Es mayor de edad"
}
elseif ( $edad -eq 18 ) {
    Write-Host "Justo 18 :O"
}
else {
    Write-Host "Es menor de edad"
}
Write-Host "Fin del programa"