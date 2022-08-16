Now it is time for to provision a PowerVS instance. Use the click-thru demonstration below to practice provisioning a PowerVS instance. Unlike the video in previous chapter the creation of the SSH keys to secure initial administrative (root) access to the virtual machine is not included in the click-thru demonstration. Refer to the video for talking points if the click-thru demonstration is utilized with clients.

Note, fields that require a text entry (e.g. instance name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the play button ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-PowerVS-L3/includes/InstanceCreate/index.html" target ="_blank">Create an IBM Power Virtual Server Instance</a>

2. Click the **Services and software** link under **Resource summary** on the IBM Cloud Portal dashboard.
3. Click the **{{powerVS.serviceInstanceName}}** entry under **Services and Software**.
4. Click the **Create instance+** button.

The next steps refer to the entries in the **General** section of the **Create virtual server instance** form.

5. Click in the **Instance name** text entry field.
6. Click the **Select VM pinning** pull-down.
7. Click **Soft**.
8. Click the **Select SSH key** pull-down.
9. Click **{{powerVS.sshKey}}**.
10. Click the **Continue** button under the **General** section.

The next steps refer to the entries in the **Boot image** section of the **Create virtual server instance** form.

11. Click the **Select the OS** pull-down.
12. Click **Linux**.
13. Click the **Select an image** pull-down.
14. Click **RHEL8-SP6**. Note: **RHEL8-SP6** is short for **Red Hat version 8 service pack 6**.
15. Click the **Select storage tier** pull-down.
16. Click **Tier 3 (3 IPOs / GB)**.
17. Click the **Continue** button under the **Boot image** section.

The next steps refer to the entries in the **Profile** section of the **Create virtual server instance** form.

18. Click the **Machine type** pull-down.
19. Click **s922**.
20. Click the **Continue** button under the **Profile** section.

The next steps refer to the entries in the **Storage volumes** section of the **Create virtual server instance** form.

21. Click the **Create volume +** button.
22. Click in the **Name** text entry field.
23. Click the **+** icon for the **Number of volumes** field.
24. Toggle the **Shareable** button to **On**.
25. Click the **Create and attach** button.
26. Click the **Continue** button under the **Storage volumes** section.

The next steps refer to the entries in the **Networking** section of the **Create virtual server instance** form.

Note: for this demonstration, the instance will be provisioned using a public network (Internet facing). Using the public network makes demonstrating access to instances easy, but most production deployments of PowerVS will utilize private networks and control access using Direct Link, Virtual Private Network (VPN), or Megaport Software Defined Network (SDN). To learn more about PowerVS networking options, look <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank"> here</a>.

27. Toggle the **Public networks** button to **On**.
28. Click the **Finish** button under the **Networking** section.
29. Click the **I agree to the Terms and Conditions** checkbox.
30. Click **Create**.

The PowerVS instance is now being provisioned. This process typically takes less than 5 minutes. Notice the value under the **Status** column of the **Virtual server instances** table. Once the status changes to an **Active** state, the instance is ready to be accessed.

31. Click the **Refresh** icon ![](_attachments/refreshIcon.png).
32. click the **{{rhServer1.name}}** link in the **Virtual server instances** table.

In the next part of the demonstration script, learn how to use the IBM Cloud Portal to manage PowerVS instances.
