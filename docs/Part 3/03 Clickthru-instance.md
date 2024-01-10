Now it is time for to provision a PowerVS instance. Use the click-thru demonstration below to practice provisioning a PowerVS instance. Unlike the video in previous chapter the creation of the SSH keys to secure initial administrative (root) access to the virtual machine is not included in the click-thru demonstration. Refer to the video for talking points if the click-thru demonstration is utilized with clients.

Note, fields that require a text entry (e.g. instance name) are pre-populated in the click-thru demonstration.

!!! tip
    Not sure where to click or what to do next? Simply click anywhere on the screen and the spot to click next will be highlighted.

1. Open the link below and then click the play button ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click-thru demo:** <a href="https://ibm.github.io/SalesEnablement-PowerVS-L3/includes/Provisioning-an-Instance/index.html" target ="_blank">Create an IBM Power Virtual Server Instance</a>

2. Click **Virtual server instances** in left-hand menu.
3. Click the **Create instance+** button.

The next steps refer to the entries in the **General** section of the **Create virtual server instance** form.

4. Click in the **Instance name** text entry field.
5. Click the **Select virtual server pinning** pull-down.
6. Click **None**.
7. Click the **Select SSH key** pull-down.
8. Click **{{powerVS.sshKey}}**.
9. Click the **Continue** button under the **General** section.

The next steps refer to the entries in the **Boot image** section of the **Create virtual server instance** form.

10. Click the **Select OS** pull-down.
11. Click **AIX**.
12. Click the **Select image** pull-down.
13. Click **7300-00-01**.
14. Click the **Select storage tier** pull-down.
15. Click **Tier 3 (3 IPOs / GB)**.
16. Click the **Continue** button under the **Boot image** section.

The next steps refer to the entries in the **Profile** section of the **Create virtual server instance** form.

17. Click the **Select machine type** pull-down.
18. Click **s922**.
19. Click the **Continue** button under the **Profile** section.

The next steps refer to the entries in the **Storage volumes** section of the **Create virtual server instance** form.

20. Click the **Create volume +** button.
21. Click in the **Name** text entry field.
22. Click the **Size** text entry field.
23. Click the **Create and attach** button.
24. Click the **Continue** button under the **Storage volumes** section.

The next steps refer to the entries in the **Networking** section of the **Create virtual server instance** form.

Note: for this demonstration, the instance will be provisioned using a public network (Internet facing). Using the public network makes demonstrating access to instances easy, but most production deployments of PowerVS will utilize private networks and control access using Direct Link, Virtual Private Network (VPN), or Megaport Software Defined Network (SDN). To learn more about PowerVS networking options, look <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank"> here</a>.

25. Toggle the **Public networks** button to **On**.
26. Click the **Attach existing +** button.
27. Click the **Select Network** pull-down.
28. Click **powervs-subnet**.
29. Click **Attach**.
30. Click the **Finish** button under the **Networking** section.
31. Click the **I agree to the Terms and Conditions** checkbox.
32. Click **Create**.

The PowerVS instance is now being provisioned. This process took approximately 45 minutes when creating the TechZone environment. Notice the value under the **Status** column of the **Virtual server instances** table. Once the status changes to an **Active** state, the instance is ready to be accessed.

In the next Part of the demonstration script, learn how to use the IBM Cloud Portal to manage PowerVS instances.
