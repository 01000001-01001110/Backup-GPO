<#
    Title: Backup GPO Settings
    By: Alan Newingham
    Date: 12/8/20
    Initial Commit: 12/8/20
    Git: https://github.com/01000001-01001110/Backup-GPO
    Notes: Answer a question on Automate & Deploy 
    Site: https://automateanddeploy.com
#>
$date = (get-date).ToString('Mdy')
$path = “C:\Scripts\$date”
if (!(test-path $path)) 
{
	New-Item -Path $path -ItemType directory
}
Backup-Gpo -All -Path $path
