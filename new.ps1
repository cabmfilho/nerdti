function Show-ProgressBanner {
    param (
        [string]$text,
        [ConsoleColor]$color = 'Green',
        [int]$delay = 40
    )

    Clear-Host
    Write-Host ""
    Write-Host -NoNewline "["
    for ($i = 0; $i -lt $text.Length; $i++) {
        Write-Host -NoNewline "#" -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host "]"
    Write-Host ""
    Write-Host $text -ForegroundColor $color
    Start-Sleep -Milliseconds 300
    Write-Host ""
}

Show-ProgressBanner "NERD\TI - INSTALADOR DE APLICAÇÕES"
