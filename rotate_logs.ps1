Get-ChildItem "$env:TEMP\adaptive_dca_ai_logs" -Filter *.log | Where-Object { $_.Length -gt 1MB } | ForEach-Object { Rename-Item $_ -NewName ($_.Name + "." + (Get-Date -Format yyyyMMddHHmmss)) }
