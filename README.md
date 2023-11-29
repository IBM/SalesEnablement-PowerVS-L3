# SalesEnablement-PowerVS-L3
This repository is for IBM Sales Enablement Level 3 content for IBM Power Systems Virtual Server.

**ITZ Collection:** https://techzone.ibm.com/collection/ibm-power-systems-virtual-server-level-3

**ITZ Environment:** https://techzone.ibm.com/my/reservations/create/62f54d401543eb0018e026b7

**ITZ gitops pattern:** https://github.ibm.com/dte2-0/ccp-gitops-patterns/tree/main/ibm-powervs-se-l3

ITZ account: ITZ - ADHOC03

## Summary of environment and automation

For this lab, no new IBM Cloud resources are provisioned as part of the ITZ automation The lab consists of many click-thru demonstrations, a pre-provisioned PowerVS workspace and 4 PowerVS VMs. **There appears to be an issue with the ITZ automation when reservations expire or are deleted. Users are remaining in the account and in the security group. The instructions below are provided to clean up "leftover" users.**

In the ITZ automation:

- users are added to the above ITZ account
- users are added to the PowerVS-L3 IAM access group. Users only have the permissions specified below in the ITZ IBM Cloud account. The users cannot create any additional cloud resources. The access group has the following access roles/policies defined:

![](_attachments/PowerVS-L3-accessgroup.png)

- An SSH key is created for the user. The private key is provided to the user via ITZ (via reservation page), and the public key is added to the PowerVS VMs that are pre-provisioned in the environment.

## Maintenance

**To perform the maintenance steps below, you must have admin access in the ITZ IBM Cloud account: 2305900 - iTZ - ADHOC03.**

Verify the following resources are available in the account:

**PowerVS Workspace:** PowerVS-L3-workspace
**PowerVS Virtual Machines (VMs):** AIX-vm-1, AIX-vm-2, RH-vm-1, RH-vm-2 (these are all provisioned in the above workspace)
**Boot images:** RH-golden-boot-image, AIX-golden-boot-image (these are only used as examples for users to view)

1. the ITZ automation may fail with a reservation expires and leave users in the cloud account. Run the following commands/scripts in IBM Cloud Shell or on your machine if you have the IBM Cloud CLI's installed (along with VPC plugin). The script assumes you are authenticated (ibmcloud login -sso). It will also remove any stray users (interactively). You could also do this manually through the IBM Cloud Portal.

```
wget -O itzPowerVSMaintenance.perl https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/itzPowerVSMaintenance.perl

chmod +x itzPowerVSMaintenance.perl

perl ./itzPowerVSMaintenance.perl
```

2. There is a cronjob that runs on each of the 2 AIX PowerVS VMs that empties the /etc/security/failedlogin file. This file fills up quickly due to the fact these machines are running on the public Internet and folks try to get in. Check each VM to make sure the crontjob is still there and make sure no filesystem is filling up.  The cronjob is:

```
0 15 * * *  > /etc/security/failedlogin 2>&1
```

3. In some cases the ITZ automation doesn't remove the users from the the PowerVS VMs when the reservation expires or is deleted. The steps below and associated scripts will help remove old user IDs and their home directories. Make sure you run step 1 above first and clear out any inactive users from the cloud account as we will use the list of "active" users to make sure we don't delete their accounts on the 4 machines.

```
wget -O getActiveReservations.perl https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/getActiveReservations.perl
wget -O cleanUpUsers.bash https://raw.githubusercontent.com/IBM/SalesEnablement-PowerVS-L3/main/tools/cleanUpUsers.perl

chmod +x getActiveReservations.perl

perl getActiveReservations.perl

#transfer the file created to each of the 4 VMs
#ssh to each of the 4 VMs and execute the cleanUpUsers.perl script. It should be in /usr/local/bin on the machine, but it was also transferred above just in case you cannot find it. 
# perl /usr/local/bin/cleanUpUsers.perl

```

In order to transfer the files, you will need the private key for the root user for the 4 PowerVS VMs. Right, now this is maintained by andrewj@us.ibm.com. Ask him for it.


```
scp -i PowerVSKey activeReservations.txt root@169.59.159.92:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.14:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.12:/tmp/
scp -i PowerVSKey activeReservations.txt root@169.59.174.13:/tmp/
```



