Add-Type -AssemblyName System.Windows.Forms

$form = New-Object System.Windows.Forms.Form
$form.Text = "Instalador Automático"
$form.Size = New-Object System.Drawing.Size(300,200)

$btnChrome = New-Object System.Windows.Forms.Button
$btnChrome.Text = "Instalar Google Chrome"
$btnChrome.Size = New-Object System.Drawing.Size(250,30)
$btnChrome.Location = New-Object System.Drawing.Point(20,20)
$btnChrome.Add_Click({
    Start-Process "winget" -ArgumentList "install --id=Google.Chrome -e --silent"
})

$btnVSCode = New-Object System.Windows.Forms.Button
$btnVSCode.Text = "Instalar VS Code"
$btnVSCode.Size = New-Object System.Drawing.Size(250,30)
$btnVSCode.Location = New-Object System.Drawing.Point(20,60)
$btnVSCode.Add_Click({
    Start-Process "winget" -ArgumentList "install --id=Microsoft.VisualStudioCode -e --silent"
})

$form.Controls.Add($btnChrome)
$form.Controls.Add($btnVSCode)
$form.ShowDialog()
