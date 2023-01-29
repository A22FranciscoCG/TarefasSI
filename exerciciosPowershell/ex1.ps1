function comprobarPrimo ($numero) {
  if ($numero -le 1) {
    return $false
  }
  for ($i = 2; $i -lt $numero; $i++) {
      if ($numero % $i -eq 0) {
      return $false
    }
  }
  return $true
}

$input = Read-Host "Introduce un número"
if (comprobarPrimo $num) {
      Write-Host "O $num é un número primo"
    } else {
      Write-Host "O $num non é un número primo"
    } 