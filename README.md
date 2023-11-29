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