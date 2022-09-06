![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 3.mp4)
!!! tip "Ways to Watch"
    In addition to the embedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DC4FdB8T2dBCGGTTfc9f97JRXDQ8" target="_blank">download the recording from Seismic</a>.

IBM Systems Virtual Servers are located in the IBM data centers, distinct from the IBM Cloud servers with separate networks and direct-attached storage. The environment is in its own pod and the internal networks are fenced but offer connectivity options to meet customer requirements. This infrastructure design enables IBM Power Systems Virtual Server to maintain key enterprise software certification and support as the PowerVS architecture is identical to certified on-premises infrastructure. The virtual servers, also known as instances, logical partitions (LPAR), or virtual machines (VMs) run on IBM Power Systems hardware with the PowerVM hypervisor.

The key parameters for a PowerVS instance are:

- **Instance name**: The PowerVS instance name will appear in the IBM Cloud Portal under the list of instances within a service. Specify a name that is easily understood and recognized.

- **Server placement group**: Server placement groups provide control over the host or server on which a new virtual machine (VM) is placed. By using server placement groups, high availability solutions can be created within a data center. Apply an affinity or anti-affinity policy to each VM instance within a server placement group. After creating a placement group, provision a new VM instance in the placement group. When setting a placement group with an affinity policy, all VMs in that placement group are launched on the same server. When setting a placement group with an anti-affinity policy, all VMs in that placement group are launched on different servers. Learn more about <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-placement-groups" target="_blank">placement groups<a/>.

- **VM pinning policy**: VM pinning controls the movement of VMs during disasters and other restart events. Learn more about hard and soft pinning <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-power-iaas-faqs#pinning" target="_blank">here</a>.

- **SSH key**: An SSH public/private key pair is required to access the instance. An SSH key must be created and loaded into the IBM Cloud Portal prior to creating an instance. Learn more about using and generating SSH keys <a href="https://cloud.ibm.com/docs/ssh-keys?topic=ssh-keys-adding-an-ssh-key" target="_blank">here</a>.

- **Operating system**: PowerVS instances can run either IBM AIX, IBM i, or Linux operating systems (OS). Several Linux images are available specifically for servers that will run SAP.

- **OS image**: Users have the ability to choose an operating system image from the PowerVS image catalog or users can bring their own image. Each supported OS has a specific set of images in the PowerVS catalog for supported OS versions. Each instance is provisioned with a boot volume using the storage tier selected.

- **Storage tier**: PowerVS supports both Tier 1 and Tier 3 storage. Tier 1 provides a maximum of 100 input/output operations per second (IOPs) per GB, while Tier 3 provides a maximum of 3 IOPS/GB. Tier 3 storage should only be utilized for non-production workloads.

- **Storage pool affinity**: Three storage pool affinity options are available: auto-select, affinity, and anti-affinity. The affinity option requires the boot volume to be placed in the same pool as another existing instance or existing boot volume. The new storage volume(s) for the instance will be placed in the same storage pool where the affinity object resides. The anti-affinity specifies a different pool should be used from that of another existing instance or existing boot volume.

- **Machine type**: Two IBM Power Systems machine types are supported: s922 and e980. Learn more about these s922 <a href="https://www.ibm.com/products/power-system-s922" target="_blank">here</a> and the e980 <a href="https://www.ibm.com/products/power-system-e980" target="blank">here</a>.

- **Core type**: PowerVS supports shared uncapped, shared capped, and dedicated cores. Shared uncapped cores are shared among other clients. Shared capped cores are shared, but resources do not expand beyond those that are requested (used mostly for licensing). Dedicated cores are allocated for a specific client (used for specific third-party licensing considerations). Learn more about core types <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-power-iaas-faqs#processor" target="_blank">here</a>.

- **Number of cores**: The option for the number of cores assigned to an instance depends on the core type. Shared capped and unshared capped cores support 0.25 core increments, while dedicated cores must be assigned a full core. Note, the maximum number of cores will depend on the machine type and availability in the selected location.

- **Amount of memory**: PowerVS instances must be provisioned with a minimum of 2GB of random access memory (RAM). The maximum amount of memory varies based upon machine type and availability in the selected location. If greater than 64GB RAM per core is specified, a higher price is charged.

- **Additional storage volumes**: When provisioning a new instance, for additional storage, a new data volume can be created or an existing volume can be attached. Any storage volume added at this time will use the same storage tier as the boot volume specified earlier.

- **Networking**: PowerVS instances will always be attached to a private network and can optionally be attached to a public, Internet accessible network. Use private networks to connect to existing subnets or go a new subnet can be created. Learn more about PowerVS networking <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a>.

In this chapter, view a video of a PowerVS instance being provisioned and replicate the steps taken using a click-through guided demonstration.
