# Generates list of players with their money
use warnings;

for $file (glob "../data/players/*")
{
	next unless $file =~ /xml$/;

	open(FILE, $file);
	@contents = <FILE>;
	$_ = "@contents";
	close(FILE);

	$money = 0;

	while (/item id="2197" count="(\d+)"/g) { $money += ($1); }

	$cash{$file} = $money;
}

open(OUT, ">stones.txt");
for $file (sort { $cash{$b} <=> $cash{$a} } keys %cash)

{
	$k = $cash{$file};








	$file =~ /.*\/(.*)\.xml/;
	print OUT $k, "k\t", $1, "\n";
}
close(OUT);