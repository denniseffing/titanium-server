# Removes immunity to poison from all monsters
use warnings;

for $file (glob "../monster/*")
{
	next unless $file =~ /\.xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	s/id="2331"\/>/id="1987"/;

	open(FILE, ">$file");
	print FILE;
	close(FILE);
}
