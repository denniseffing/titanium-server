# Removes immunity to poison from all monsters
use warnings;

for $file (glob "../data/monster/*")
{
	next unless $file =~ /\.xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	s/<item id="1987"/<item id="2331"/;

	open(FILE, ">$file");
	print FILE;
	close(FILE);
}
