#!/usr/bin/perl -w

$command = "find . -name '*.agr' > plot_agr.list\n";
system($command);

open(LISTFILE,"plot_agr.list") or die "File plot_agr.list not found! $!\n";

print "Files to plot:\n\n";

while (<LISTFILE>) {
  chomp;
  s/\s//g; 
  
  $figures[$#figures+1]= $_;
  print $#figures+1,". $_\n";

  $name = $_;
  $name =~ s/.agr//;
  
  $command = "gracebat -hdevice EPS -printfile $name.eps $name.agr\n";
  system($command);
}

close(LISTFILE);

print "\njob complete.\n";
