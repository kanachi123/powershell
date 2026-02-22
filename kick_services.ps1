$services = @(

	"wuauserv",
	"Fax",
	"XblGameSave",

	"DiagTrack",
	"RemoteRegistry",

	"SSDPSRV",
	"upnphost",
	"WMPNetworkSvc",

	"Spooler",
	"MessagingService",
	"OneSyncSvc",
	"WSearch",

	"dmwappushdvc",
	"RetailDemo",
	"MessagingService",
	"OneSyncSvc",
	"WSearch"
		
)

foreach ($svc in $services)
{
	Write-Host "kick $svc"
	Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
	Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
}