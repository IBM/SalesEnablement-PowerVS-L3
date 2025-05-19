Use this click through demonstration to provision an AIX virtual server instance (VSI). 

!!! Important

    If you skipped the Part 3 Introduction and are not familiar with the features of PowerVS like storage pools, storage tiers, etc. you should consider going back and reading it. 

**Note**: Access to provision a new VSI is not provided in the IBM Technology Zone cloud account. Use this click through demonstration to simulate this activity. Fields that require a text entry are pre-populated in the click through demonstration.

1. Open the following link and then click the play ![image](https://github.com/user-attachments/assets/67789db8-fd6d-4d68-a26b-3a1d6c0b7e97) button to begin the demonstration.

    **Click through demonstration:** <a href="https://dpkshetty.github.io/TEST-SalesEnablement-PowerVS-L3/includes/Provision-AIXVM/index.html" target ="_blank">Create an IBM Power Virtual Server Instance - AIX</a>

    !!! tip "Tips for maximizing the click through experience"

        Follow this click through guide to complete the demonstration. In case of uncertainty regarding the next click, clicking anywhere on the screen will prompt a green highlight box to indicate the next clickable area. **For optimal performance, adjust the browser’s zoom percentage to ensure the entire demonstration screen fits within the viewable area.**

2. Click **{{powerVS.serviceInstanceName}}** in the **Workspaces** table.
3. Click **View virtual servers**.
4. Click **Create instance +**.

The next steps refer to the entries in the **General** section of the **Create virtual server instance** form.

5. Click in the **Instance name** field.
6. Click the **User tags** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
7. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
8. Click the **Add to a server placement group** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
9. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
10. Click the **Add to a shared processor pool** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
11. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
12. Click the **Virtual server pinning** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
13. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
14. Click the **Select virtual server pinning** pull-down.
15. Click **None**.
16. Click the **Select SSH key** pull-down.
17. Click **{{powerVS.sshKey}}**.
18. Click **Continue** in the **General** section.

The next steps refer to the entries in the **Boot image** section of the **Create virtual server instance** form.

19. Click the **Select OS** pull-down.
20. Click **AIX**.
19. Click the **Configure for Epic workloads** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
20. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
21. Click the **Deploy empty virtual server instance** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
22. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
23. Click the **Select image** pull-down.
24. Click **7300-03-00**.
25. Click the **Tier** pull-down (set to **Tier 3 (3 IOPs/GB)** by default).
26. Click **Tier 3 (3 IOPs/GB)**.
27. Click the **Advanced configurations** pull-down. This option allows users to specify **cloud-init user data** and **boot volume replication**. **cloud-init user data** is used when VSI is booted. In the user data, you have the option to include custom content that enables you to tailor the startup configuration for the specific instance. <br>Learn more about **boot volume replication** in next step.
28. Click the **Boot volume replication** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
29. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
25. Click **Continue** under the **Boot image** section.

The next steps refer to the entries in the **Profile** section of the **Create virtual server instance** form.

33. Click the **Deploy to dedicated host** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
34. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
28. Click the **Select machine type** pull-down.
29. Click **s1022**.
30. Click the **Core type** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
31. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
32. Click the **Virtual cores** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
33. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
34. Click **Continue** under the **Profile** section.

The next steps refer to the entries in the **Storage volumes** section of the **Create virtual server instance** form.

42. Click **Create volume +**.
43. Click in the **Name** field.
35. Click the **User tags** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
36. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
37. Click **+** to increase the size of the volume to 2 GB.
38. Click the **Tier** pull-down (it will already be set to **Tier3 (3 IOPs/GB)**).
39. Click **Tier 3 (3 IOPs/GB)**.
40. Toggle **Shareable** to **On**.
41. Click the **Volume replication with GRS** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
42. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
43. Click **Create and attach**.
44. Click **Advanced configurations** pull-down.
45. Click the **Configure for large quantity volumes** information icon (![](_attachments/infoIcon.png)) and read the helpful information.
46. Click the information icon (![](_attachments/infoIcon.png)) again to close the information dialog.
47. Click **Continue** under the **Storage volumes** section.

The next steps refer to the entries in the **Network interfaces** section of the **Create virtual server instance** form.

**Note**: for this demonstration, the instance is provisioned with a public network (internet facing). A public network simplifies demonstrating access to instances. However, most production deployments of PowerVS use private networks and control access with Direct Link, Virtual Private Network (VPN), or Megaport Software Defined Network (SDN). To learn more about PowerVS networking options, look <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a>.

57.  Toggle **Public networks** to **On**.
58.  Click **Attach existign network +**.
43.  Click the **Existing subnets** pull-down.
44.  Click **{{powerVS.privateSubnet}}**.
45.  Click **Attach**.
46.  Click **Finish** under the **Network interfaces** section.
47.  Click **I agree to the Terms and conditions**.
48.  Click **Create**.

The AIX PowerVS instance is now being provisioned. This process took approximately 20 minutes. Notice the value under the **Status** column of the **Virtual server instances** table. After the status changes to an **Active** state, the instance is ready to be accessed.
