function Show-AnimatedTitle {
    param (
        [string]$text,
        [ConsoleColor]$color = 'Green',
        [int]$delay = 50
    )

    Clear-Host
    Write-Host ""
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host "`n"
}

Show-AnimatedTitle "=== INSTALADOR DE APLICAÇÕES ===" -color Cyan -delay 80

Write-Host "`nEscolha uma opção para instalar:`n" -ForegroundColor White

Write-Host "1 - Google Chrome" -ForegroundColor Yellow
Write-Host "2 - Firefox" -ForegroundColor Yellow
Write-Host "3 - VLC Media Player" -ForegroundColor Yellow
Write-Host "4 - Notepad++" -ForegroundColor Yellow
Write-Host "5 - 7-Zip" -ForegroundColor Yellow
Write-Host "0 - Sair" -ForegroundColor Red

$opcao = Read-Host "`nDigite o número da opção desejada"

switch ($opcao) {
    "1" {
        Write-Host "Instalando Google Chrome..." -ForegroundColor Cyan
        winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements
    }
    "2" {
        Write-Host "Instalando Firefox..." -ForegroundColor Cyan
        winget install --id=Mozilla.Firefox -e --accept-package-agreements --accept-source-agreements
    }
    "3" {
        Write-Host "Instalando VLC..." -ForegroundColor Cyan
        winget install --id=VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements
    }
    "4" {
        Write-Host "Instalando Notepad++..." -ForegroundColor Cyan
        winget install --id=Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements
    }
    "5" {
        Write-Host "Instalando 7-Zip..." -ForegroundColor Cyan
        winget install --id=7zip.7zip -e --accept-package-agreements --accept-source-agreements
    }
    "0" {
        Write-Host "Saindo..." -ForegroundColor Red
        exit
    }
    default {
        Write-Host "Opção inválida!" -ForegroundColor Red
    }
}

Pause
