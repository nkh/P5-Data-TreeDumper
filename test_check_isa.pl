#~ package Vegetable ;

package Potatoe ;
@ISA = ("Vegetable");

sub AUTOLOAD{} ;

package BlueCongo;
@ISA = ("Potatoe");

package main ;

my $object = bless({}, 'BlueCongo') ;

use Data::TreeDumper ;

print DumpTree [$object] ;
