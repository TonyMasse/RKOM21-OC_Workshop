#!/usr/bin/perl -w
use strict;

my $input_file = $ARGV[0];
 
if (not defined $input_file) {
  $input_file = '/var/log/rkom21-lab/mistnet.sample';
}

while(1){
  open(my $fh, '<:encoding(UTF-8)', $input_file)
    or die "Could not open file '$input_file' $!";

  while(my $line = <$fh>) {
    print $line;
    sleep(1);
  }

  close $fh or die "Failed to close $input_file: $!\n";
}