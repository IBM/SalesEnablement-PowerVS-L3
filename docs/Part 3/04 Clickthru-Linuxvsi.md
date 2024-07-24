Use this click through demonstration to provision a Linux virtual server image (VSI). 

!!! Important

    If you skipped the Part 3 Introduction and are not familiar with the features of PowerVS like storage pools, storage tiers, etc. you should consider going back and reading it.  

Note: Access to provision a new VSI is not provided in the IBM Technology Zone cloud account. Use this click through demonstration to simulate this activity. Fields that require a text entry are pre-populated in the click through demonstration.

!!! tip
    Not sure where to click or what to do next? Click anywhere on the screen and the spot to click next is highlighted.

1. Open the following link and then click play ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click through demo:** <a href="https://ibm.github.io/SalesEnablement-test-repo/includes/Provision-LinuxVM/index.html" target ="_blank">Create a Linux IBM Power Virtual Server Instance</a>

2. Click **{{powerVS.serviceInstanceName}}** in **Workspaces** table.
3. Click **View virtual servers**.
4. Click **Create instance +**.

The next steps refer to the entries in the **General** section of the **Create virtual server instance** form.

5. Click in the **Instance name** field.
6. Click the **Add to a server placement group** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
7. Click the information dialog to close it.
8. Click the **Add to a shared processor pool** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
9. Click the information dialog to close it.
10. Click the **Virtual server pinning** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
11. Click the information dialog to close it.
12. Click the **Select virtual server pinning** pull-down.
13. Click **None**.
14. Click the **Select SSH key** pull-down.
15. Click **{{powerVS.sshKey}}**.
16. Click **Continue** in the **General** section.

The next steps refer to the entries in the **Boot image** section of the **Create virtual server instance** form.

17. Click the **Select OS** pull-down.
18. Click **Linux**.
19. Click the **Select image** pull-down.
20. Click **RHEL9-SP2**.
21. Click the **Tier** pull-down (set to **Tier 3 (3 IOPs/GB)** by default).
22. Click **Tier 3 (3 IPOs/GB)**.

??? Note "Change in IBM Cloud Portal"

    During the creation of this course, a new feature was added to PowerVS that is not reflected in this click through demonstration. The **Advanced configurations** option allows users to specify **cloud-init user data**. 
    
    ![](_attachments/cloud-init.png)
    
    This data is used when the VSI is first booted. This capability only applies to Full Linux Subscription boot images. Learn more about these user defined scripts <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-full-linux-sub#cloud-init-fls-private-cloud" target="_blank>here</a>. Learn more about Full Linux Subscription (FLS) <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-set-full-Linux" target="_blank">here</a>.

23. Click **Continue** under the **Boot image** section.

The next steps refer to the entries in the **Profile** section of the **Create virtual server instance** form.

24. Click the **Select machine type** pull-down.
25. Click **s1022**.
26. Click the **Core type** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
27. Click the information dialog to close it.
28. Click the **Cores** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
29. Click the information dialog to close it.
30. Click **Continue** under the **Profile** section.

The next steps refer to the entries in the **Storage volumes** section of the **Create virtual server instance** form.

31. Click **Create volume +**.
32. Click in the **Name in VSI** field.
33. Click **+** to increase the size of the volume to 2GB.
34. Click the **Tier** pull-down (it will already be set to **Tier 3 (3 IOPs/GB)**).
35. Click **Tier 3 (3 IOPs/GB)**.
36. Toggle **Shareable** to **On**.
37. Click **Create and attach**.
38. Click **Continue** under the **Storage volumes** section.

The next steps refer to the entries in the **Network interfaces** section of the **Create virtual server instance** form.

Note: for this demonstration, the instance is provisioned with a public network (internet facing). A public network simplifies demonstrating access to instances. However, most production deployments of PowerVS use private networks and control access with Direct Link, Virtual Private Network (VPN), or Megaport Software Defined Network (SDN). To learn more about PowerVS networking options, look <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a>.

39. Toggle **Public networks** to **On**.
40. Click **Attach +**.
41. Click the **Select Network** pull-down.
42. Click **{{powerVS.privateSubnet}}**.
43. Click **Attach**.
44. Click **Finish** under the **Network interfaces** section.
45. Click **I agree to the Terms and conditions**.
46. Click **Create**.

The Linux PowerVS instance is now being provisioned. This process took approximately 15 minutes. Notice the value under the **Status** column of the **Virtual server instances** table. When the status changes to an **Active** state, the instance is ready to be accessed.

