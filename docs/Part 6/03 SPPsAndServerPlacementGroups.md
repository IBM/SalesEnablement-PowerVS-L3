??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
A shared processor pool is a pool of processor capacity used by a group of virtual server instances. Its reserved cores guarantee capacity at the pool level which allows individual virtual servers in the pool to use a dynamic amount of resources in a shared model, and can help reduce licensing costs.

1. Click the **Shared processor pools** (**A**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/dbfecb8a-9c0f-4591-8fe8-9cf9ebcee9e4)

2. Click **Create pool +** (**A**).

    ![image](https://github.com/user-attachments/assets/87fbafcf-6fe6-42e3-aa53-6bd6b8f55262)

3. Enter a name in the **Name** (**A**) field and then click **Continue** (**B**).

    ![image](https://github.com/user-attachments/assets/a757051d-a6a1-4dde-87c4-26f0c7db4e7a)

4. Select a **machine type** (**A**) and specify the number of **reserved cores** (**B**). Reserved cores is the total number of cores reserved for the processor pool's usage. Click **Finish** (**C**).

    ![image](https://github.com/user-attachments/assets/a325dcc5-33e7-4695-9900-09c88cee0725)
    
When actually provisioning an SPP, you would next accept the terms and conditions and create the SPP. After the SPP is provisioned, clients specify the SPP when a new VSI is created. 

7. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel** (**A**) to return back to the shared processor pools main view page.

    ![image](https://github.com/user-attachments/assets/cf7ab3fb-eda0-43d7-88d2-e2c81f133e72)

8. Click the **Pool placement groups** (**A**) tab.

    ![image](https://github.com/user-attachments/assets/f9979d1a-0938-442f-9227-4149efd93c17)

    Pool placement groups are a set of shared processor pools with a single colocation policy, which determines the host in which a shared processor pool in the group is deployed in relation to others in the group.

    Learn more about pool placement groups <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-manage-SPP#configure-SPP-PG" target="_blank">here</a>.

9.  Click **Create group +** (**A**).

    ![image](https://github.com/user-attachments/assets/34a8ead6-fbfc-4ee7-97d3-78164e32a2bf)

10. Enter a **Name** (**A**) for the pool placement group.

    ![image](https://github.com/user-attachments/assets/c1b353c5-f30e-462d-bfbd-9ca5eacba765)

11. Select the **colocation policy** (**A**) of either **same server** or **different server**.

    The **same server** option specifies that all VSIs in this placement group are placed on the same server. This is known as an **affinity** policy.

    The **different server** option specifies that all VSIs in this placement group are placed on different servers. This is also known as an **anti-affinity** policy.

    ![image](https://github.com/user-attachments/assets/463a353d-b9a1-4854-b6dc-7cbf0e54f83b)

12. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel** (**A**) to return back to the shared processor pools main view page.

    ![image](https://github.com/user-attachments/assets/2b0ef663-3269-44c1-909d-f8cf4a892f55)
    
Affinity and anti-affinity policies are used to help build high availability (HA) and disaster recovery (DR) deployments. Learn more about High Availability (HA) and Disaster Recovery (DR) options in PowerVS <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-ha-dr" target="_blank">here</a>.

Learn more about SPPs <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-manage-SPP" target="_blank">here</a>.
