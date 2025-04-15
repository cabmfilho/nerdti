Write-Host "Instalando aplicações com winget..." -ForegroundColor Green

# Instalações de exemplo
winget install --id=Google.Chrome -e --accept-package-agreements --accept-source-agreements
winget install --id=Notepad++.Notepad++ -e --accept-package-agreements --accept-source-agreements
winget install --id=7zip.7zip -e --accept-package-agreements --accept-source-agreements

Write-Host "Instalações concluídas!" -ForegroundColor Cyan
