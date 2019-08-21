$public = Get-ChildItem $PSScriptRoot/functions/public/*.ps1

foreach ($import in $public) {
    . $import.fullname
}

