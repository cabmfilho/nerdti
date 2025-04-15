Clear-Host
Write-Host "=============================" -ForegroundColor Cyan
Write-Host "  INSTALADOR DE APLICAÇÕES  " -ForegroundColor Green
Write-Host "=============================" -ForegroundColor Cyan

Write-Host "`nEscolha uma opção para instalar:`n"

Write-Host "1 - Google Chrome"
Write-Host "2 - Firefox"
Write-Host "3 - VLC Media Player"
Write-Host "4 - Notepad++"
Write-Host "5 - 7-Zip"
Write-Host "0 - Sair"

$opcao = Read-Host "`nDigite o número da opção desejada"

switch ($opcao) {
    "1" {
        Write-Host "Instalando Google Chrome..." -ForegroundColor Yellow
        winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements
    }
    "2" {
        Write-Host "Instalando Firefox..." -ForegroundColor Yellow
        winget install --id=Mozilla.Firefox -e --accept-package-agreements --accept-source-agreements
    }
    "3" {
        Write-Host "Instalando VLC..." -ForegroundColor Yellow
        winget install --id=VideoLAN.VLC -e --accept-package-agreements --accept-source-agreements
    }
    "4" {
        Write-Host "Instalando Notepad++..." -ForegroundColor Yellow
        winget install --id=Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements
    }
    "5" {
        Write-Host "Instalando 7-Zip..." -ForegroundColor Yellow
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

