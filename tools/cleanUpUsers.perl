#/usr/bin/env perl

#
# This script requires the IBM Cloud CLI along with the following plug-ins.
# You must have administrative rights to the cloud account: 2305900 - ITZ- ADHOC03.
# This script will show you all the current users that are part of the PowerVS-L3 access group and the
# date their ID was added to the account.  It should be safe to remove any user that was added > 2 weeks
# prior to todays date (maximum ITZ reservation is les than this).

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
open(my $reservations, "<", "$ACTIVE_RESERVATIONS") or die $!;
chomp(my @vations = <$reservations>);

# add the system users that have a home dirctory to the list of reservations
push(@vations,"guest");
push(@vations,"srvproxy");


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
                if($user eq "lost+found"){
                        next;
                }
                if(prompt_yn("Do you want to remove $user?")) {
                        print "Deleting $user\n";
                        `userdel -r $user`;
                        $delcount++;
                }
        }
        # if user is in the list then skip that user and echo a skipping message
        # if user not in the list then prompt to delete the user
        # userdel -r $user
}


