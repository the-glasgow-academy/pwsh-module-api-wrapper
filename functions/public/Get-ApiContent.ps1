function Get-ApiContent {
    [CmdletBinding()]

    Param (
        [string]$URL,
        [string]$Token,
        [string]$Endpoint,
        [switch]$All
    )

    Process {
        $pContent = @{
            Uri     = "$URL/$Endpoint"
            Method  = "GET"
            Headers = @{"Authorization" = "Bearer $Token" }
        }
        if ($All) { $pContent["FollowRelLink"] = $true }
        $content = Invoke-RestMethod @pContent
        return $content
    }
}
