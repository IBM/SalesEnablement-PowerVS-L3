The **dedicated host** capability on IBM Power Virtual Server (PowerVS) offers clients the ability to provision an entire Power server for their exclusive use. Clients can handle mission-critical workloads with complete isolation, control, and security.

The hourly billing for a Dedicated host on PowerVS covers the entire server. Using a dedicated host provides extra flexibility to create virtual server instances and control their placement, along with a shared processor pool capability. This means clients can optimize their cloud infrastructure by using single-tenant servers to manage software licensing costs. Most importantly, dedicated hosts increase isolation from other cloud tenants, allowing their operations to run smoothly and securely.

!!! Important "Important information regarding the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. Users do NOT have the ability to step through the provisioning process for a dedicated host in the demonstration environment. The following click through demonstration covers the provisioning steps of a dedicated host.

**Due to the limited number available dedicated hosts and associated costs, a dedicated host was not reserved for this demonstration environment in IBM Technology Zone.**

Note, fields that require a text entry (for example workspace name) are pre-populated in the click through demonstration.

!!! tip
    Not sure where to click or what to do next? Click anywhere on the screen and the next spot to click is highlighted.

1. Open the following link and then click play ![](_attachments/ClickThruPlayButton.png) to begin the demonstration.

    **Click through demo:** <a href="https://ibm.github.io/SalesEnablement-test-repo/includes/Provisioning-a-DedicatedHost/index.html" target ="_blank">Provision a Dedicated Host</a>

2. Click **Dedicated hosts** in the left menu bar.
3. Click **Reserve host +**.
4. Click **Create new +**.

Dedicated host groups can be shared with other workspaces to share the capacity of reserved dedicated hosts. 

Dedicated hosts can only be reserved into host groups that are created by the current workspace. After a dedicated host is reserved, it cannot be moved between host groups. 

5. Click in the **Dedicated host group name** field.
   
Note the ability to share the **Dedicated host group** between workspaces. Selected workspaces have secondary access to all dedicated hosts within the group and are able to use and view their capacity. Secondary workspaces cannot reserve dedicated hosts into the group, or share with other workspaces.

6. Click **Save**.
7. Click in the **Host name** field.
8. Click the **Machine type** pull-down menu.

As of July 2024, PowerVS supports reserving either Power S922 or S1022 servers as dedicated hosts. Availability of dedicated hosts varies by data center. At the time this click through demonstration was created, the data center specified by the workspace only had S922 servers available. 

9. Click **S922 (15 cores | 0.98 TB)**.
10. Click **Finish**.
11. Click **I agree to the Terms and conditions**.

After a host is reserved, users are able to provision virtual server instances by using either the provided standard operating system images or imported custom images. Shared processor pools (SPPs) can also be created in a dedicated host. Learn more about dedicated hosts <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-dedicated-host" target="_blank">here</a>.

