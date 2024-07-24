 IBM Power Virtual Server (PowerVS) is all about deploying and managing virtual server instances (VSIs) running AIX, IBM i, or Linux. A VSI is also referred to as a virtual machines (VM) or a logical partition (LPAR). The key parameters for provisioning a PowerVS VSI are:

- **Instance name**: The PowerVS instance name appears in the IBM Cloud Portal under the list of instances within a service. Specify a name that is easily understood and recognized.

- **Server placement group**: Server placement groups provide control over the host or server on which a new VM is placed. By using server placement groups, high availability solutions can be created within a data center. Apply an affinity or anti-affinity policy to each VM instance within a server placement group. All VMs in a placement group with an affinity policy are started on the same server. All VMs in a placement group with an anti-affinity policy are started on different servers. Learn more about <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-placement-groups" target="_blank">placement groups</a>.

- **VM pinning policy**: VM pinning controls the movement of VMs during disasters and other restart events. Learn more about hard and soft pinning <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-power-iaas-faqs#pinning" target="_blank">here</a>.

- **SSH key**: An SSH public and private key pair is required to access the instance. An SSH key must be created and loaded into the IBM Cloud Portal before an instance can be provisioned. Learn more about using and generating SSH keys <a href="https://cloud.ibm.com/docs/ssh-keys?topic=ssh-keys-adding-an-ssh-key" target="_blank">here</a>.

- **Operating system**: PowerVS instances can run either IBM AIX, IBM i, or Linux operating systems (OS). Several Linux images are available specifically for servers that run SAP.

- **OS image**: Users can choose an operating system image from the PowerVS image catalog or users can bring their own image. Each supported OS has a specific set of images in the PowerVS catalog for supported OS versions. Each instance is provisioned with a boot volume that uses the storage tier selected.

- **Storage tier**: PowerVS supports 4 tiers of storage. Tier 3 provides a maximum of 3 input/output operations per second (IOPs) per gigabyte (GB). Tier 1 provides a maximum of 10 IOPs/GB. Tier 0 provides a maximum of 25 IOPs/GB. The Fixed IOPs tier provides 5,000 IOPs regardless of size; however, the Fixed IOPs tier is limited to volumes with a size of 200 GB or less.

- **Storage pool affinity**: Three storage pool affinity options are available: auto-select, affinity, and anti-affinity. The affinity option requires the boot volume to be placed in the same pool as another existing instance or existing boot volume. New storage volumes for the instance are placed in the same storage pool as the affinity object. The anti-affinity policy specifies a different pool must be used from another existing instance or existing boot volume.

- **Machine type**: Several IBM Power9 and IBM Power10 machine types are supported. Availability of machine types vary by data center. Learn more about the hardware specifications available <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-about-power-iaas#hardware-specifications-on-cloud" target="_blank">here</a>.

- **Core type**: PowerVS supports shared uncapped, shared capped, and dedicated cores. Shared uncapped cores are shared among other clients. Shared capped cores are shared, but resources do not expand beyond what is requested (used mostly for licensing). Dedicated cores are allocated for a specific client (used for specific third-party licensing considerations). Learn more about core types <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-power-iaas-faqs#processor" target="_blank">here</a>.

- **Number of cores**: The option for the number of cores assigned to an instance depends on the core type. Shared capped and unshared capped cores support 0.25 core increments, while dedicated cores must be assigned a full core. The maximum number of cores depends on the machine type and availability in the selected location.

- **Amount of memory**: PowerVS instances must be provisioned with a minimum of 2 GB of random access memory (RAM). The maximum amount of memory varies based on machine type and availability in the selected location. If greater than 64 GB RAM per core is specified, a higher price is charged.

- **Additional storage volumes**: A new data volume can be created when an instance is provisioned. The size of a volume cannot be decreased after it is created. The maximum size of a volume that can be created is 238,193 GB. A storage tier can be specified. The volume can also be marked as shareable or nonshareable (default). Additional volumes created when the VM is created, the same storage pool as the boot volume for the VM is used.

- **Networking**: PowerVS instances are attached to a private network and can optionally be attached to a public, internet accessible network. Use private networks to connect to existing subnets. A new subnet can be created also. Learn more about PowerVS networking <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a>.

Three click through demonstrations are provided in the next chapters. One for each of the supported operating systems: AIX, Linux, and IBM i. While each is similar, a few minor differences exist. You are encouraged to go through each of these demonstrations and read the step-by-step guidance provided.
