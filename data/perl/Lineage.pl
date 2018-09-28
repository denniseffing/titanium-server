# Removes immunity to poison from all monsters
use warnings;

for $file (glob "*")
{
	next unless $file =~ /\.ogg$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	s/L2SD/OggS/;

	open(FILE, ">$file");
	print FILE;
	close(FILE);
}
