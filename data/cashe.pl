# Titanium server shows best player and stats by Titan;

for $file (glob "../data/players/*")
{
	next unless $file =~ /xml$/;

	open(FILE, $file);
	@contents = <FILE>;
	$_ = "@contents";
	close(FILE);

	$money = 0;
	$xp = 0;
	$mlvl = 0;
	$sw = 0;
	$cl = 0;
	$ax = 0;
	$dis = 0;
	$shi = 0;
	$fi = 0;

while (/voc="1" level="(\d+)"/g) { $money += ($1); }
while (/voc="2" level="(\d+)"/g) { $money += ($1); }
while (/voc="3" level="(\d+)"/g) { $money += ($1); }
while (/voc="4" level="(\d+)"/g) { $money += ($1); }
while (/exp="(\d+)"/g) { $xp += ($1); }
while (/exp="(\d+)"/g) { $xp += ($1); }
while (/exp="(\d+)"/g) { $xp += ($1); }
while (/exp="(\d+)"/g) { $xp += ($1); }
while (/exp="(\d+)"/g) { $xp += ($1); }
while (/maglevel="(\d+)"/g) { $mlvl += ($1); }
while (/skill skillid="0" level="(\d+)"/g) { $fi += ($1); }
while (/skill skillid="1" level="(\d+)"/g) { $cl += ($1); }
while (/skill skillid="2" level="(\d+)"/g) { $sw += ($1); }
while (/skill skillid="3" level="(\d+)"/g) { $ax += ($1); }
while (/skill skillid="4" level="(\d+)"/g) { $dis += ($1); }
while (/skill skillid="5" level="(\d+)"/g) { $shi += ($1); }
while (/skill skillid="6" level="(\d+)"/g) { $fi += ($1); }
$cash{$file} = $money;

	$ex{$file} = $xp;
	$ml{$file} = $mlvl;
	$st{$file} = $fi;
	$So{$file} = $sw;
	$lu{$file} = $cl;
	$xe{$file} = $ax;
	$is{$file} = $dis;
	$il{$file} = $shi;
	$ri{$file} = $fi;

}

open(OUT, ">cash.txt");
for $file (sort { $cash{$b} <=> $cash{$a} } keys %cash)
{
	$k = $cash{$file};
$x = $ex{$file} ;

	$a =$ml{$file} ;
	$b =$st{$file} ;
	$d =$So{$file} ;
	$c =$lu{$file} ;
	$e =$xe{$file} ;
	$f =$is{$file} ;
	$g =$il{$file};
	$h =$ri{$file} ;



	if ($k >= 1){
$k = int($k); }

	$file =~ /.*\/(.*)\.xml/;
	print OUT "Lvl:",
$k,
"\t",
$1, "\t",
"\t","\t", "xp:\t",$x,"\t","Magic Level:\t",$a, "\t", "Fist Fighting:\t",$b, "\t","Club Fighting\t",$c, "\t","Sword Fighting:\t",$d,"\t", "Axe Fighting:\t",$e,"\t", "Distance:\t",$f, "\t","Shielding:\t",$g, "\t","Fishing:\t", $h,  "\n";
}


