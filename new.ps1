function Show-ElevatorEffect {
    param (
        [string]$text,
        [int]$delay = 100
    )

    Clear-Host
    for ($i = 10; $i -gt 0; $i--) {
        Clear-Host
        for ($j = 0; $j -lt $i; $j++) {
            Write-Host ""
        }
        Write-Host $text -ForegroundColor Magenta
        Start-Sleep -Milliseconds $delay
    }
    Start-Sleep -Milliseconds 300
    Write-Host ""
}

Show-ElevatorEffect "NERD\TI - INSTALADOR"
