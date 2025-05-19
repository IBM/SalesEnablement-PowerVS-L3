??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
A good network design for any cloud deployment is critical. This includes IBM Power Virtual Server (PowerVS) deployments. Many options are available for clients for both the connectivity from their on-premises environments to the cloud and within their PowerVS workspaces. Only the creation and management of private subnets within a PowerVS workspace is covered in this activity. Learn more about IBM PowerVS networks <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-network-architecture-diagrams" target="_blank">here</a>.

## Viewing and configuring network subnets

Clients can configure a private network subnet when they create an IBM Power Virtual Server, providing a subnet name and specifying a Classless Inter-Domain Routing (CIDR). How the private network subnet is configured, depends on the networking configuration of the Power Virtual Server Workspace.

1. Expand the **Networking** (**A**) section and click the **Subnets** (**B**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/e37dd944-57b8-4ff6-88b2-dec9d707413a)

2. Two subnets are listed. One is the public subnet, {{powerVS.publicSubnet}} for the workspace {{powerVS.serviceInstanceName}}. This public subnet was created when the public network option was selected when the first virtual server instance (VSI) in the workspace was provisioned. The private subnet, {{powerVS.privateSubnet}} was created before the first VSI was provisioned.

    ![image](https://github.com/user-attachments/assets/f3839d2e-482e-4fd9-89e2-c68517ccba5e)

    In the next steps, explore how to create a private subnet.

3. Click **Create subnet +** (**A**).

    ![image](https://github.com/user-attachments/assets/8e853d95-ef1a-4eb0-b918-d859025d592f)

4. To create a new subnet, the details about the subnet need to be specified. 

    These details include:

    - **Name**

      The name of the subnet. Enter a unique name for the subnet.
      
    - **Classless Inter-Domain Routing (CIDR)**

      CIDR is a method for allocating Internet Protocol (IP) network addresses for routing. The CIDR notation is a compact representation of an IP address and its associated network mask. For the sake of this demonstration enter `192.168.200.14/24` in CIDR field. The **Gateway** and **IP ranges** fields are auto-populated based on the entered CIDR value.

    - **Gateway**

      The gateway address is typically the first address in the CIDR range of available addresses; however, the address can be changed.

    - **IP ranges**
    
      The **IP range** allows the user to specify either the full CIDR range as being available or a subset.

    - **Domain Name Server (DNS)**

      The DNS server is used for name resolution for the VSIs in the subnet. Up to 20 DNS servers can be specified.

    - **Maximum Transmission Unit (MTU)**

      MTU is used to specify the largest data packet size allowed over a network. A larger MTU produces less overhead, and a smaller value can reduce network delay. If Red Hat OpenShift is deployed on VSIs in the subnet, the recommendation is to set the MTU size to 1450. To support jumbo frames (often required for applications with large data transfers), the MTU should be set to 9000.

    ![image](https://github.com/user-attachments/assets/6fcab035-3700-4bd1-ad09-abe2e66f08b9)

    Existing subnets can be edited; however, modifications are limited to changing the gateway, the IP ranges, and adding or removing DNS servers.

5. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel** (**A**) to return back to the subnets list page.
   ![image](https://github.com/user-attachments/assets/cdbcc0d4-43ef-4b7b-8a1a-52cacee48163)

   Learn more about configuring subnets [here](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-configuring-subnet){target="_blank"}.

## Network security groups

A network security group (NSG) is used to define security rules to allow or deny specific network traffic that is related to resources provisioned in an IBM Power® Virtual Server workspace. You can create NSGs in the Power Virtual Server environment to inspect and filter network traffic between resources in Power Virtual Server workspaces.

1. Expand the **Networking** (**A**) section and click the **Network security groups** (**B**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace. You will see an empty list as the NSG feature is not enabled and used in this demonstration.
   ![image](https://github.com/user-attachments/assets/5880d716-6a67-4402-b64c-fe31e691747e)

    Learn more about NSG [here](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-nsg){target="_blank"}.
