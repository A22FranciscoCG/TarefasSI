
$numIntroducidos = @()

Write-Host "Introduce números (0 para rematar):"
$numero = Read-Host

while ($numero -ne 0) {
 $numIntroducidos += $numero
 $numero = Read-Host
}

$numOrdenados = $numIntroducidos | Sort-Object

Write-Host "A lista de números ordeados é a seguinte:"
$numOrdenados