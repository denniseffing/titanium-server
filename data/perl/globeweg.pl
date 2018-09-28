# Removes immunity to poison from all monsters
use warnings;

for $file (glob "../players/*")
{
	next unless $file =~ /\.xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	s/id="3927"\/>/id="2331"/;

	open(FILE, ">$file");
	print FILE;
	close(FILE);
}
