#/usr/bin/env perl

#
# This script reads from the a list of active reservations for the PowerVS ITZ environment. It
# expects to find that list in the file: /tmp/activeReservations.txt. This file can be created
# by running the getActiveReservations.perl which uses the IBM Cloud CLIs to get all users
# that are currently in the PowerVS-L3 access group in the ITZ account for the PowerVS L3 env.
# Care should be given in making sure the /tmp/activeReservations.txt is as current as possible
# as users could create a reservation between the time each script is run.

#---------------------------------------------------------------------------------------------
# functions
#---------------------------------------------------------------------------------------------
sub prompt {
  my ($query) = @_; # take a prompt string as argument
  local $| = 1; # activate autoflush to immediately show the prompt
  print $query;
  chomp(my $answer = <STDIN>);
  return $answer;
}
sub prompt_yn {
  my ($query) = @_;
  my $answer = prompt("$query (Y/N): ");
  return lc($answer) eq 'y';
}
#---------------------------------------------------------------------------------------------
my $ACTIVE_RESERVATIONS="/tmp/activeReservations.txt";


my $delcount=0;
my $skipcount=0;

# get a list of all the current home directories
my @allHomeDirs=`ls -1 /home`;
chomp(@allHomeDirs);

# load all the current reservations into an array
open(my $reservations, "<", "$ACTIVE_RESERVATIONS") or die "$ACTIVE_RESERVATIONS deosn't exist. $!";
chomp(my @vations = <$reservations>);

# add the system users that have a home directory in /home to the list of reservations
push(@vations,"guest"); # AIX
push(@vations,"srvproxy"); # AIX
push(@vations,"cloud-user"); # RHEL


#print "All home dirs:\n";
#print @allHomeDirs;

#print "All active reservations:\n";
#print @vations;
#exit;

foreach my $user (@allHomeDirs)
{
        # check if the user is in the list of active reservations
        if (grep(/^$user$/, @vations))
        {
                print "skipping $user\n";
                $skipcount++;
        } else {
                # handle special case on AIX
                if($user eq "lost+found"){
                        $skipcount++;
                        next;
                }
                if(prompt_yn("Do you want to remove $user?")) {
                        print "Deleting $user\n";
                        `userdel -r $user`;
                        $delcount++;
                }
        }
}

print "\n\nSummary:\n";
print "$delcount users deleted.\n";
print "$skipcount users skipped.\n\n";
