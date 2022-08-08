Now it is time for to provision a PowerVS instance. Use the click-thru demonstration below to practice provisioning a PowerVS instance. Note, fields that require a text entry (e.g. instance name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the play button ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-Satellite-L3-Sales/includes/SatLocationCreation/index.html" target ="_blank">Create an IBM Cloud Satellite Location</a>

2. Click the **Services and software** link under **Resource summary** on the IBM Cloud Portal dashboard.
3. Click the **PowerVS-service** entry under **Services and Software**.
4. Click the **Create instance+** button.

The next steps refer to the entries in the **General** section of the **Create virtual server instance** form.

5. Click the **Add to a server placement group** check box.
6. Click the **Select a server placement group** pull-down.
7. Click **{{placementGroup1}}**.
8. Click the **Select VM pinning** pull-down.
9. Click **Soft**.
10. Click the **Select SSH key** pull-down.
11. Click **PowerVS-sshkey**.
12. Click the **Continue** button under the **General** section.

The next steps refer to the entries in the **Boot image** section of the **Create virtual server instance** form.

13. Click the **Select the OS** pull-down.
14. Click **Linux**.
15. Click the **Select an image** pull-down.
16. Click **RHEL8-SP6**. Note: **RHEL8-SP6** stands for Red Hat Enterprise Linux version 8 service pack 6.
17. Click the **Select storage tier**  pull-down.
18. Click **Tier 3 (3 IPOs / GB)**.
19. Click the **Auto-select pool** tile.
20. Click the **Continue** button under the **Boot image** section.

The next steps refer to the entries in the **Profile** section of the **Create virtual server instance** form.

Note: the **Machine type** option is not editable since a server placement group was selected.  When an affinity server placement policy is selected, all VMS must be of the same machine type. The default of .25 cores and 2 GB of memory will be used.

21. Click the **Shared uncapped** core type radio button.
22. Click the **Continue** button under the **Profile** section.

The next steps refer to the entries in the **Storage volumes** section of the **Create virtual server instance** form.

23. Click the **Create volume +** button.
24. Click the **+** icon for the **Size** field.
25. Toggle the **Shareable** button to **On**.
26. Click the **Create and attach**  button.
27. Click the **Continue** button under the **Storage volumes** section.

The next steps refer to the entries in the **Networking** section of the **Create virtual server instance** form.

Note: for this demonstration, the instance will be provisioned using a public network (Internet facing). Using the public network makes demonstrating access to instances easy, but most production deployments of PowerVS will utilize private networks and control access using Direct Link, Virtual Private Network (VPN), or Megaport Software Defined Network (SDN). To learn more about PowerVS networking options, look <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-ordering-direct-link-connect" target="_blank"> here</a>.

28. Toggle the **Public networks** button to **On**.
29. Click the **Finish** button under the **Networking** section.
30. Click the **I agree to the Terms and Conditions** checkbox.
31. Click **Create**.

The PowerVS instance is now being provisioned.  This process typically takes less than 5 minutes. Notice the value under the **Status** column of the **Virtual server instances** table. Once the status changes to an **Active** state, the instance is ready to be accessed.

In the next part of the demonstration script, learn how to use the IBM Cloud Portal to manage PowerVS instances.
