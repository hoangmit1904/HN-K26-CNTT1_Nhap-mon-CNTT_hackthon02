# Script: tong_hop.ps1
# Tac gia: Sinh Vien
# Ngay tao: 11/11/2026
Write-host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > ./logs/tong_hop.txt
Get-Content ./logs/order_logs | Select-string "status=404" | foreach-Object { $_.Line } >> /logs/tong_hop.txt
(Get-Content ./logs/order.logs | Select-String "status=500").Count >> ./logs/tong_hop.txt
Write-Host "Hoan thanh!"

