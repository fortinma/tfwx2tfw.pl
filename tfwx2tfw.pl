#!/bin/perl -w

#use strict;
open(list_of_files, "dir *.JPwx /b |");
my @fileslist = <list_of_files>;
my $old_name;
my $like_file;
my @name;
my $t;
my $newname;

foreach $old_name (@fileslist) {
	chop($old_name);
	$newname = $old_name;
	chop($newname);
	print "$newname\n";
#	system("rename \"$old_name\" $newname");
	system("rename $old_name $newname");
}
