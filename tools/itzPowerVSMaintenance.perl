#/usr/bin/perl
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

$AccessGroup="PowerVS-L3";
$ResourceGroup="PowerVS-L3";
$AccountID="ba0e33c9056f470ca19de009747ec654";
$USERS_FILE="allUsers.json";
$REGION="us-south";

# set the target region
print "Set region to $REGION\n";
`ibmcloud target -r $REGION > /dev/null 2>&1`;

# get iam token so can query IAM
print "Retrieving OAUTH TOKEN\n";
$TOKEN=`ibmcloud iam oauth-tokens|cut -f2 -d':'`;

# get all the users in the account so we can get users added-on date
# added the '--http1.1' flag to make this work in IBM CLoud Shell

print "Retrieving all the users in the account.\n";
`curl --http1.1 -X GET   https://user-management.cloud.ibm.com/v2/accounts/$AccountID/users   -H 'Authorization: $TOKEN' > $USERS_FILE 2> /dev/null`;


# use tail -n 2 to get rid of the header
print "Retrieving all the users in the $AccessGroup access group.\n";
@users=`ibmcloud iam access-group-users $AccessGroup -q | tail -n +2`;
chomp @users;

print "The following users are actively in the $AccessGroup Access Group:\n";
# print "User ID                       IBM ID               Added On Date\n";
printf("%-35s %17s %25s\n","User ID", "IBM ID", "Added on Date");
foreach my $user (@users)
{
    # find the user in the json output  file and parse out the fields we want
    @userInfo=`jq -r '.resources[] | select(.user_id=="$user") | .iam_id,.added_on' $USERS_FILE`;
    chomp @userInfo;
    printf("%-35s %17s %25s\n",$user,@userInfo[0],@userInfo[1]);
}

print "\n";
# remove any ids?
if(prompt_yn("Do you want to remove any user ids that are in the $AccessGroup access group?")) {
    
    foreach my $user (@users)
    {
        # find the user in the json output  file and parse out the fields we want
        @userInfo=`jq -r '.resources[] | select(.user_id=="$user") | .iam_id,.added_on,.account_id' $USERS_FILE`;
        chomp @userInfo;
        printf("%-35s %17s %35s %25s\n","User ID", "IBM ID", "Account ID", "Added on Date");
        printf("%-35s %17s %35s %25s\n",$user,@userInfo[0],@userInfo[2],@userInfo[1]);
        if(prompt_yn("Do you want to remove the user from the account?")) {
            print "Removing it...\n";
            print "ibmcloud account user-remove $user --force\n";
            `ibmcloud account user-remove $user --force`;
        } else {
            print "Keeping it...\n";
        }
        print "\n";
    }

}

print "Exiting.\n"; 

