# Script: tong_hop.ps1
# Tac gia: đạt
# Ngay tao: 3/11
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt 
Get-Content .\logs\Access.log | Select-String "status=400">logs/tong_hop.txt
Get-Content .\logs\Access.log | Select-String "status=500" | Measure-Object >> logs/tong_hop.txt 
Write-Host "Hoan thanh!"
