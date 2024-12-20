$appPath = "$PSScriptRoot\Aplikacja.exe"

$action = New-ScheduledTaskAction -Execute $appPath -Argument "/min" -WorkingDirectory $PSScriptRoot

$trigger = New-ScheduledTaskTrigger -AtLogOn

Register-ScheduledTask -TaskName "ConnectionTest" -TaskPath 'Testowanie' -Action $action -Trigger $trigger -RunLevel Highest