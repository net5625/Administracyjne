Write-Host "Rozpoczynam restart kontenerów"
try{
    ssh -i C:\private.pem root@192.168.0.8 'docker container restart $(docker ps -q)'
    Write-Host "Pomyślnie zakończono działanie"
}
catch{
    Write-Error "Wystąpił błąd przy restartowaniu kontenerów na 192.168.0.8 - zrestartuj je ręcznie"
}
Read-Host "Naciśnij Enter, aby kontynuować"
exit