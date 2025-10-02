$sPath = "$env:TEMP\adaptive_dca_ai_logs\live_eth_paper.log"
if (Test-Path $sPath) {
  $t = Get-Content $sPath -Raw
  $t = $t -replace '\\\\`n','`n' -replace '\\\\n','`n' -replace '\\`n','`n' -replace '\\n','`n' -replace '\\r',''
  Set-Content $sPath -Value $t -Encoding utf8
}
