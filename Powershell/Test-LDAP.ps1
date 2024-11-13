param (
[string]$Server = $(throw "Server is required."),
[string]$User = $(throw "User is required."),
[string]$Password = $(throw "Password is required."),
[int]$Port = 389
)

if(!$Server -OR !$User -OR !$Password){
    Write-Warning "Parametry nie powinny być puste."
    exit 0
}

$ldapServer = $Server
$ldapPort = $Port
$username = $User
$password = $Password

$securePassword = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($username, $securePassword)

try {
    $connection = New-Object DirectoryServices.DirectoryEntry("LDAP://${ldapServer}:$ldapPort", $username, $password)
    $searcher = New-Object DirectoryServices.DirectorySearcher($connection)
    $searcher.Filter = "(objectClass=*)"
    $result = $searcher.FindOne()
    if ($result -ne $null) {
        Write-Host "Połączenie z LDAP na serwerze $ldapServer powiodło się." -ForegroundColor Green
    } else {
        Write-Host "Nie udało się znaleźć żadnych wyników." -ForegroundColor Yellow
    }
} catch {
    Write-Host "Nie udało się połączyć z LDAP na serwerze $ldapServer." -ForegroundColor Red
}