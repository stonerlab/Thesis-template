#!/usr/bin/perl -w

$command = "find . -name '*.eps' > list_eps.list\n";
system($command);

open(LISTFILE,"list_eps.list") or die "list_eps.list not found! $!\n";

print "Files to plot:\n\n";

while (<LISTFILE>) {
  chomp;
  s/\s//g; 
  
  $figures[$#figures+1]= $_;
  print $#figures+1,". $_\n";

  $name = $_;
  $name =~ s/.eps//;
  
  $command = "convert $name.eps	 $name.png\n";
  system($command);
}

close(LISTFILE);

print "\njob complete.\n";
