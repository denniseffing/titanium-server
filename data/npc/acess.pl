# Removes immunity to poison from all monsters
use warnings;

for $file (glob "../NPC/*")
{
	next unless $file =~ /\.xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);


	s/access="1"/access="5"/;
	s/access="2"/access="5"/;
	s/access="0"/access="5"/;
	s/access="3"/access="5"/;
	open(FILE, ">$file");
	print FILE;
	close(FILE);
}
