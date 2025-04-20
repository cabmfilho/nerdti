function Show-MatrixIntro {
    Clear-Host
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890@#$%&"
    for ($i = 0; $i -lt 25; $i++) {
        $line = ""
        for ($j = 0; $j -lt 60; $j++) {
            $line += $chars[(Get-Random -Maximum $chars.Length)]
        }
        Write-Host $line -ForegroundColor DarkGreen
        Start-Sleep -Milliseconds 50
    }
    Write-Host "`n>>> NERD\TI - INSTALADOR DE APLICAÇÕES <<<" -ForegroundColor Green
    Start-Sleep -Milliseconds 500
    Write-Host ""
}

Show-MatrixIntro
