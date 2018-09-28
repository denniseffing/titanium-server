# Deletes players which haven't logged for a week and have level below 30
use warnings;


for $file (glob "../data/players/*")
{
	next unless $file =~ /xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);



	
	s/banned="1">/banned="1"><ban banned="1" banstart="1164752023" banend="2028752023" comment="LarvaExotech 1337 ;] this message wont be shown anywhere ;p" reason="Old ban msg gm if u are not banned for ever" action="AccountBan+FinalWarning" deleted="0" finalwarning="0" banrealtime="Sun Apr 16 00:13:43 2034&\#10;"\/>/;

	open(FILE, ">$file");
	print FILE;
	close(FILE);

	
}

print "players baned\n";
