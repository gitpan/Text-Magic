# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 14 };

use Text::Magic;

ok(1);

use vars qw( $tv $c );

$tv = "Test Variable";

sub sub1() {return 'Sub 1 Returns';}
sub switch1() {return 'C2';}

our $t1  = 'Hello, World!\t';
our $t2  = '$tv\t';
our $t3  = 'Begin $tv End\t';
our $t4  = '<% print $tv; "" %>\t';
our $t5  = 'Begin <% print $tv; "" %> End\t';
our $t6  = '<% "SKIP" %>This test has failed<%SKIP%>\t';
our $t7  = 'Begin <% "SKIP" %>This test has failed<%SKIP%> End\t';
our $t8  = '<% $c = 0; %><%I1%>$c <% "I1" if ++$c < 10 %>\t';
our $t9  = 'Begin <% $c = 0; %><%I1%>$c <% "I1" if ++$c < 10 %> End\t';
our $t10 = '<% print &sub1(); "" %>\t';
our $t11 = 'Begin <% print &sub1(); "" %> End\t';
our $t12 = '<% &switch1() %><%C1%>Choice 1<%"END_SWITCH1"%><%C2%>Choice2<%END_SWITCH1%>\t';
our $t13 = 'Begin <% &switch1() %><%C1%>Choice 1<%"END_SWITCH1"%><%C2%>Choice2<%END_SWITCH1%> End\t';

ok(!Magic($t1));
ok(!Magic($t2));
ok(!Magic($t3));
ok(!Magic($t4));
ok(!Magic($t5));
ok(!Magic($t6));
ok(!Magic($t7));
ok(!Magic($t8));
ok(!Magic($t9));
ok(!Magic($t10));
ok(!Magic($t11));
ok(!Magic($t12));
ok(!Magic($t13));

