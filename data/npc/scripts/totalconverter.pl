# 7.5-OTB Total Converter v1.0 by Yurez
use warnings;
my $otb;

sub load
{
	for ($i = 0; $i < 100; $i++)
	{
		$otb[$i] = $i;
	}

	open(FILE, "ids.dat");

	while (<FILE>)
	{
		if (/(\d+) (\d+) \w+/)
		{
			$otb[$1] = $2;
		}
	}

	close(FILE);
}

sub convert
{
	my $file = $_[0];
	return if not ($file =~ /lua$/ or $file =~ /xml$/);
	print $file, "\n";

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	s/itemid="(\d+)"/itemid="$otb[$1]"/g;
	s/(\s)id="(\d+)"/$1id="$otb[$2]"/g;
	s/corpse="(\d+)"/corpse="$otb[$1]"/g;
	s/ground="(\d+)"/ground="$otb[$1]"/g;
	s/\.itemid == (\d+)/\.itemid == $otb[$1]/g;
	s/\.itemid ~= (\d+)/\.itemid ~= $otb[$1]/g;
	s/\.itemid >= (\d+)/\.itemid >= $otb[$1]/g;
	s/\.itemid <= (\d+)/\.itemid <= $otb[$1]/g;
	s/\.itemid > (\d+)/\.itemid > $otb[$1]/g;
	s/\.itemid < (\d+)/\.itemid < $otb[$1]/g;
	s/doPlayerAddItem\((\w+),(\d+),(\d+)\)/doPlayerAddItem\($1,$otb[$2],$3\)/g;
	s/doPlayerRemoveItem\((\w+),(\d+)\)/doPlayerRemoveItem\($1,$otb[$2]\)/g;
	s/doTransformItem\((.+?),(\d+)\)/doTransformItem\($1,$otb[$2]\)/g;
	s/doCreateItem\((\d+),(.+?),(.+?)\)/doCreateItem\($otb[$1],$2,$3\)/g;
	s/buy\((\w+),(\d+),(\d+),(\d+)\)/buy\($1,$otb[$2],$3,$4\)/g;
	s/sell\((\w+),(\d+),(\d+),(\d+)\)/sell\($1,$otb[$2],$3,$4\)/g;
	s/makeRune\((\w+),(\d+),(\d+)\)/makeRune\($1,$otb[$2],$3\)/g;
	s/makeArrows\((\w+),(\d+),(\d+)\)/makeArrows\($1,$otb[$2],$3\)/g;

	open(FILE, ">$file");
	print FILE;
	close(FILE);
}

sub search
{
	my $root = $_[0];

	if (-f $root)
	{
		convert($root);
	}
	elsif (-d $root)
	{
		for $dir (glob "$root/*")
		{
			search($dir);
		}
	}
}

load();
search('.');
