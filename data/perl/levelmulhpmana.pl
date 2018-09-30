# Deletes players which haven't logged for a week and have level below 30
use warnings;
$manas = 15;
$manap = 15;
$manak = 15;
$healths = 5;
$healthp = 15;
$healthk = 15;
$caps = 15;
$capp = 15;
$capk = 15;

for $file (glob "../data/players/*")
{
	next unless $file =~ /xml$/;

	open(FILE, $file);
	@content = <FILE>;
	$_ = "@content";
	close(FILE);

	/voc="(\d+)"/;
	$voc = $1;
	/level="(\d+)"/;
	$level = $1;
	/mana [^>] max ="(\d+)"/;
	$level = $1;
if ($voc = 1) 
{

	;
}

}

print "$counter players edited\n";
