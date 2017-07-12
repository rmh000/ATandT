#!/usr/bin/perl 
# use strict;
 use warnings;
 use DBI;
use CGI;
use CGI::Carp qw(warningsToBrowser fatalsToBrowser); 
use CGI qw( :standard );

$db_handle = DBI->connect("dbi:mysql:database=fauqu001_fqdb;host=fauqu001.mysql.guardedhost.com;;user=fauqu001_fqdb;password=t8rdG^h6sC2f")
    or die "Couldn't connect to database: $DBI::errstr\n";
	
read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
@pairs = split(/&/, $buffer);
%FORM = ();
$hash_count=0;
foreach $pair (@pairs) {
        ($name, $value) = split(/=/, $pair);
        $value =~ tr/+/ /;
        $value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
        $FORM{$name} = $value; 
		$hash_count++;
#		print '<br><h3>',$name,' = ',$value,'</br>';
		
		}

	# if no search text, and no date, this is a blank submission.... 
	# need to write error txt! 
		
if (!$FORM{srchtxt} and ($FORM{datejs} = 'datestring')) {
    
	print redirect( "http://fauquierwines.com/form3.html" );

  }


print "Content-type: text/html \n\n";		

# main process 

 

  $xtime = "$FORM{datejs} $FORM{atime}";
  
  # dbi for insert... since only 2 entered fields present and all verification done with JS, we'll 
  #  just do the insert... 
  # first I gotta make a datetime format field 

  my $sth = $db_handle->prepare("insert into appt (desc00, dtime)   
          values (?,?)") 
              || die $dbh->errstr; 
  
   $sth->execute($FORM{desc}, $xtime) || die $sth->errstr;
  
print "Location: http://fauquierwines.com/form3.html/\n\n"; 








end;
