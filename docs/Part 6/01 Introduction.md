![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 6.mp4)
!!! tip "Ways to Watch"
    In addition to the embedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DCg8HWGTc7mhVG2RDmPDf7WDRmBj" target="_blank">download the recording from Seismic</a>.

Mentioned earlier throughout this Level 3 course are the variety of features available for managing your PowerVS instance once the infrastructure and services have been deployed. The customizability and scalability of these environments post-launch are precisely the "cloud-centric" benefits that draw customers towards an investment in PowerVS. In this chapter, we'll dive deeper into each of these advanced topics to get you up to speed on the fundamentals and provide a launching point for you to craft bespoke demonstrations on these topics for your client engagements.

Specifically, you will examine each of the four categories in turn: server placement groups; storage solutions including volumes, boot volumes, and images; networking topics including subnets, cloud connections, and VPN connections; and additional services available from the IBM Cloud catalog.

Server placement groups deliver high availability (HA) for your PowerVS instance within a data center, either on the same (affinity configuration) or separate (anti-affinity configuration) physical servers.

Every instance of IBM PowerVS consists of a mandatory boot volume (via IBM Cloud Object Storage buckets) and has the option for additional storage volumes, should a client require more. Boot images can also be supplied for provisioning new instances. You'll explore the variety of options available through the IBM Cloud web interface.

**Subnets** are an important part of how you use the internet, and that's also true when using IBM Cloud. We have specific terminology for the types and uses of subnets found in our platform. Each subnet provides IP addresses to resources in different ways. By knowing more about each type of subnet, you can understand how to best make use of them in your cloud infrastructure.

- **Primary subnets** are subnets assigned to meet the IP addressing needs of other products, such as bare metal server and virtual server instances. These subnets are automatically assigned and removed.

- **Secondary subnets** are subnets which are purchased and routed by you, cancelled when no longer needed. There are two types: portable and static. Portable IP addresses are available to all resources on a VLAN, whereas static IP addresses are available to the resource identified as their routing endpoint. Global IP addresses's unique routing behavior utilizes IBM's Cloud backbone to provide IP addresses to the resources identified as the routing endpoint.

**Cloud connections** and **VPN connections** were introduced earlier in Part 5, but options around how they are provisioned and added to a PowerVS instance will be explored more deeply in this chapter.
