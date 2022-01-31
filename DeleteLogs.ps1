# Delete all Files in D:\Path\Logs older than 30 day(s)
$Path = "D:\Path\Logs"
$Daysback = "-30"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item