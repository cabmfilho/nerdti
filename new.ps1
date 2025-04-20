function Show-AnimatedBanner {
    $banner = @(
        " _   _ ______ _____  _____ _____ _______ _____ _____ ",
        "| \ | || ___ \_   _|/  ___|_   _|__   __|_   _|_   _|",
        "|  \| || |_/ / | |  \ `--.  | |    | |    | |   | |  ",
        "| . ` || ___ \ | |   `--. \ | |    | |    | |   | |  ",
        "| |\  || |_/ /_| |_ /\__/ / | |    | |   _| |_ _| |_ ",
        "\_| \_/\____/ \___/ \____/  \_/    |_|   \___/ \___/ ",
        "                                                     ",
        "                     NERD\TI                         "
    )

    Clear-Host
    foreach ($line in $banner) {
        foreach ($char in $line.ToCharArray()) {
            Write-Host -NoNewline $char -ForegroundColor Cyan
            Start-Sleep -Milliseconds 2
        }
        Write-Host ""
    }
    Start-Sleep -Milliseconds 300
    Write-Host ""
}

Show-AnimatedBanner

Write-Host "Escolha uma opção para instalar:`n" -ForegroundColor White

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
