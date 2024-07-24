??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will not have the ability to create, edit, or delete resources in the IBM Technology Zone environment.
    
A good network design for any cloud deployment is critical. This includes IBM Power Virtual Server (PowerVS) deployments. Many options are available for clients for both the connectivity from their on-premises environments to the cloud and within their PowerVS workspaces. Only the creation and management of private subnets within a PowerVS workspace is covered. Learn more about PowerVS networks <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a> and other related section of the PowerVS documentation.

1. Click the **Subnets** option in the side menu under the {{powerVS.serviceInstanceName}} workspace. Expand the **Networking** section if not already expanded.

    ![](_attachments/NetworkingMenu.png)

    Two subnets are listed. 

    ![](_attachments/Subnets-1.png)

    One is the public subnet for the workspace: {{powerVS.publicSubnet}}. This subnet was created when the public network option was selected when the first virtual server instance (VSI) in the workspace was provisioned.  

    The private subnet, {{powerVS.privateSubnet}} was created before the first VSI was provisioned. In the next steps, explore how to create a private subnet.

2. Click **Create subnet +**.

    ![](_attachments/SubnetsCreate.png)

    

3. Click **Cancel**.
   
    To create a new subnet, the details about the subnet need to be specified. 

    These details include a name and:

    - Classless Inter-Domain Routing (CIDR)

      CIDR is a method for allocating Internet Protocol (IP) network addresses for routing. The CIDR notation is a compact representation of an IP address and its associated network mask.

    - Gateway

      The gateway address is typically the first address in the CIDR range of available addresses; however, the address can be changed.

    - IP ranges
    
      The IP range allows the user to specify either the full CIDR range as being available or a subset.

    - Domain Name Server (DNS)

      The DNS server is used for name resolution for the VSIs in the subnet. If the VSIs have a public facing network, they can use a public DNS server, like IBM Clouds: 9.9.9.9. However, if a public network is not available, the DNS should be set to 127.0.0.1 to avoid issues with VSIs hanging during startup. Up to 20 DNS servers can be specified.

    - Maximum Transmission Unit (MTU)

      MTU is used to specify the largest data packet size allowed over a network. A larger MTU produces less overhead, and a smaller value can reduce network delay. If Red Hat OpenShift is deployed on VSIs in the subnet, the recommendation is to set the MTU size to 1450. To support jumbo frames (often required for applications with large data transfers), the MTU should be set to 9000.

    ![](_attachments/SubnetsCreate-1.png)

Existing subnets can be edited; however, modifications are limited to changing the gateway, the IP ranges, and adding or removing DNS servers.