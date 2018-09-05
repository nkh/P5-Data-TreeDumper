#!/usr/bin/perl

use strict;
use warnings;

use Perl::Critic;
use Data::Dumper;
use Data::TreeDumper;

my $critic = Perl::Critic->new(-severity => 2,);

my %violations_per_file ;

for my $file (qw(pcs.pl)) 
	{
	print "...$file\n";
	$violations_per_file{$file} = [$critic->critique($file)];
	}
	
print DumpTree \%violations_per_file, '', DISPLAY_TIE => 1 ;
print Dumper \%violations_per_file ;

#~ use Scalar::Cycle::Manual ;

#~ my $cyclic_variable = new Scalar::Cycle::Manual  qw( first second third ) ;


#~ print DumpTree $cyclic_variable ;

#~ $cyclic_variable->auto_increment(1) ;
#~ print DumpTree [$cyclic_variable, $cyclic_variable], 'cyclic variable:' ;

#~ $cyclic_variable->auto_increment(0) ;
#~ print DumpTree [$cyclic_variable, $cyclic_variable], 'cyclic variable:' ;

	
	
	
	
	
	
	
	
	