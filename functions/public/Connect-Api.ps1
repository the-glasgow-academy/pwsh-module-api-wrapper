function Connect-API {
    [CmdletBinding()]

    Param (
        [string]$URL,
        [string]$ClientID,
        [string]$ClientSecret
    )

    Process {
        $plogin = @{
            uri    = "$URL/login"
            Method = "POST"
            Body   = "clientid=$ClientID&clientsecret=$ClientSecret"
        }
        $token = Invoke-RestMethod @plogin
        return $token
    }
}
