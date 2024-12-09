# Data do konwersji
$date = "2024-03-10"

# Konwersja daty na format DateTime
$dateTime = [datetime]::ParseExact($date, "yyyy-MM-dd", $null)

# Obliczenie różnicy w sekundach od 1 stycznia 1601 roku
$epoch = New-Object datetime 1601,1,1,0,0,0
$interval = ($dateTime - $epoch).TotalSeconds

# Wyświetlenie wyniku
Write-Host "Liczba sekund od 1 stycznia 1601 roku do $date to $interval."