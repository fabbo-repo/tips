Write-Host ((5 -gt 1) -AND (5 -lt 10))
# True
Write-Host ((5 -gt 1) -OR (5 -lt 10))
# True
Write-Host ((5 -gt 1) -XOR (5 -lt 10))
# False
Write-Host (-NOT ((5 -gt 1) -AND (5 -lt 10)))
# False