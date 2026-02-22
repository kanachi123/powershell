$ports = 7,9,13,17,19
foreach($p in $ports)
{
	New-NetFirewallRule -DisplayName "Block TCP $p" -Direction inbound -LocalPort $p -Protocol TCP -Action Block
	New-NetFirewallRule -DisplayName "Block UDP $p" -Direction inbound -LocalPort $p -Protocol UDP -Action Block
}

foreach($p in $ports){

	$r = Test-NetConnection -Port $p -ComputerName 127.0.0.1
	"$p TCP: "+ ($r.TcpTestSucceeded)

}