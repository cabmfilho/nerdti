function Show-TitleWithDots {
    Write-Host "`nNERD\TI - INSTALADOR DE APLICAÇÕES`n" -ForegroundColor Cyan

    for ($i = 0; $i -lt 3; $i++) {
        Write-Host -NoNewline "."
        Start-Sleep -Milliseconds 300
    }
    for ($i = 3; $i -gt 0; $i--) {
        Write-Host -NoNewline "`b `b"
        Start-Sleep -Milliseconds 300
    }

    Write-Host "`n"
}

Show-TitleWithDots
