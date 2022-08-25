![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 5.mp4)
!!! tip "Ways to Watch"
    In addition to the imbedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DC9pbQMj66RcWGhMGdHD447pFdGV" target="_blank">download the recording from Seismic</a>.

IBM Power Systems Virtual Server is an Infrastructure as a Service (IaaS) offering. PowerVS allows clients to rapidly provision new instances running AIX, IBM i, or Linux. Ultimately, clients will want to deploy applications on those machines. The applications that clients choose to deploy will vary widely. They may include middleware like databases, third party software products like SAP, or applications they have developed themselves. To install these applications, they need to access the instance and install the software.

A fundamental challenge that every customer examining an expansion to cloud will face is how to connect their on-premises data sources with off-premises (cloud-based) resources and services. Doing so securely, efficiently, and cost- effectively is undeniably a challenge for organizations of every size, whether they are a mid-sized business or an enterprise company.

How do you connect _to_ the IBM Cloud? There are 3 routes to take:

1. Via the public internet

2. Via a VPN tunnel

3. Via IBM Cloud Direct Link (2.0)

In most cases, clients will deploy PowerVS instances using a secured network like Direct Link or Virtual Private Network (VPN).

**IBM Cloud Direct Link (2.0)** provides a level of trusted connectivity from enterprise sources to a customer's IBM Cloud private network. There are offerings of IBM Cloud Direct Link (2.0) that are specifically tailored to every customer's workload requirements or business use case.

- **Direct Link Connect** is a bespoke solution for data center to data center connectivity (between clouds, or between on-premises and cloud), flexible bandwidth requirements, and multicloud environments. It also presents a lower cost of entry for IBM Cloud network customers compared to other Direct Link offerings.

- **Direct Link Dedicated** is built for customers that have high-volume workloads requiring very low latency, or for those clients rapidly moving data across multicloud environments. It satisfies stringent compliance requirements held by certain countries or industries. Dedicated also supports universal connectivity for either colocation or carrier.

- **Dedicated Hosting** options are also available for clients working with non-standard technologies (requiring bespoke networking solutions). Many such customers need to maintain and continue to leverage their existing IT investments, while investing into cloud-based technologies. Dedicated storage options are available in parallel for such customers. The connection point for Dedicated Hosting is adjacent to an IBM Cloud data center to provide optimal latency and performance.

- IBM Cloud's **VPN** access allows users to manage all servers remotely and securely over IBM Cloud's private network. A VPN connection from your location to the private network gives you the capability for out-of- band management and server rescue through an encrypted VPN tunnel.

In this chapter, you will learn how to access a running instance by using secure socket shell (SSH) via the IBM Cloud Shell command line interface, taking a programmatic approach towards managing your PowerVS instance.
