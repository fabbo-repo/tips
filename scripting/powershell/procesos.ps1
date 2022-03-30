# Start-Process launches a process asynchronously (parallel)
# -Wait block progress until the new process exits 
# -PassThru parameter generates a System.Diagnostics.Process object, by default, does not return any output.
$proceso = Start-Process -Wait -PassThru 'code'
Write-Host $proceso.CPU
Write-Host $proceso.Id
Write-Host $proceso.HasExited