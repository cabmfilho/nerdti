function Show-TypeWithCursor {
    param (
        [string]$text,
        [ConsoleColor]$color = 'Cyan',
        [int]$delay = 80
    )

    Clear-Host
    $output = ""
    foreach ($char in $text.ToCharArray()) {
        $output += $char
        Write-Host -NoNewline "`r$output_" -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host "`r$output "  # Remove o cursor depois
}

Show-TypeWithCursor "NERD\TI - INSTALADOR DE APLICAÇÕES"
