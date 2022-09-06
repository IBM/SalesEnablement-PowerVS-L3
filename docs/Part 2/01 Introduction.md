![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 2.mp4)
!!! tip "Ways to Watch"
    In addition to the embedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DC7MhCMFHqdF384HP8b4dXgRMqhG" target="_blank">download the recording from Seismic</a>.

Power Systems Virtual Servers are located across IBM data centers, distinct from the IBM Cloud servers with separate networks and direct-attached storage. These environments operate in their own pod and the internal networks are fenced; however, they still offer connectivity options to meet customer requirements, including public internet. This carefully calibrated infrastructure enables Power Systems Virtual Server to maintain key enterprise software certification and support that customers would receive with on-premises infrastructure, but with the added flexibility and capabilities that come from an IBM Cloud deployment.

The IBM Power Systems Virtual Server service, allows users to quickly create and deploy one or more virtual servers (that are running either the AIX, IBM i, or Linux operating systems). After provisioning the Power Systems Virtual Server, users get access to infrastructure and physical computing resources without the need to manage or operate them. However, users must manage the operating system and the software applications and data. Given that this course is primarily a demonstration of infrastructure as a service, the guide does not delve deeply into the application layer or the day to day administrative tasks. The guide will explore the fundamentals of working with AIX and Linux atop of IBM Power Systems Virtual Server.

Before creating a PowerVS virtual server, understand the difference in terminology between a PowerVS **service** and a PowerVS **instance**. Think of the PowerVS **service** as a container for all PowerVS instances at a specific geographic region. PowerVS **instances** are virtual machines (VMs). The service is available from the Resource List in the IBM Cloud Portal. For example, a Cloud account can have multiple PowerVS services: one in Dallas, Texas, and another in Washington, D.C. Each service can contain multiple instances. A service must be associated with an IBM Cloud resource group which helps in grouping resources and assigning permissions. To learn more, refer to <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started" target="_blank">Getting Started with IBM Power Systems Virtual Server</a>.

The key parameters for a PowerVS service are:

- **Datacenter location**: As of August 2022, PowerVS is co-located with 15 IBM Cloud datacenters located around the world. When selecting a datacenter, consider choosing the datacenter located nearest the majority of the end users that will be accessing the workloads running in PowerVS.

- **Service name**: The PowerVS service name will appear in the IBM Cloud Portal under the provisioned services. Specify a name that is easily understood and recognized.

- **Resource group**: Resource groups are used to organize resources in an IBM Cloud account. Administrative and access rights for all PowerVS resources are associated with the PowerVS service and not individual PowerVS instances (VMs). Once a PowerVS service is assigned to a resource group, the resource group cannot be changed.

In the chapter to follow, view a video of a PowerVS server being provisioned and replicate the steps taken using a click-through guided demonstration.
