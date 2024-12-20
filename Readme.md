# Narzędzia administracyjne
Repozytorium to zbiera przydatne narzędzia administracyjne
## Powershell
Katalog powerhsell zawiera skrypty powershellowe.
* Test-LDAP - jest to skrypt sprawdzający połączenie z LDAP (może pomóc zweryfikować działanie połączenia z LDAP).
* Rename - skrypt pozwala w podanej lokalizacji zmienić nazwy plików numerując je w kolejności daty utworzenia.
* Czas - jest to skrypt, pozwalający dokonanie konwersji daty do formatu liczby sekund od 1 stycznia 1601 roku.
* TaskSchedulerRunningApp - skrypt tworzący zadanie w harmonogramie zadań, które uruchamia aplikację przy starcie systemu (dobre do wykorzystania np. wraz z skryptem Check z folderu Python)
## Active Directory Querys
Katalog zawiera gotowe do zaimportowania query do Active Directory
* NeverLogon - Wyszukuje użytkowników, który nie logowali się nigdy i których konta są aktywne.
* UserMustSetPassword - Wyszukuje użytkowników, którzy są włączeni, a którzy nie mają ustawionego hasła.
## Console Applications
Katalog ten posiada aplikacje konsolowe, które mogą być przydatne do weryfikacji lub wygenerowania przydatnych rzeczy.
## Python
Katalog zawiera skrypty Python-a przydatne m.in. w testowaniu.
* Check - sprawdza co minutę przez 2 godziny połączenie z danym adresem (przydatne w przypadku próby wykrycia problemów).
## JS
Katalog posiada kod JS możliwy do wykorzystania w praktyce.
* TableToJson - zapisuje tabelę ze strony do pliku o rozszerzeniu *.json.