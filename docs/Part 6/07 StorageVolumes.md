??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
As mentioned earlier IBM Power Virtual Server (PowerVS) supports multiple tiers of storage. Learn more about the available storage tiers <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-about-power-iaas#storage-tiers-spec-private-cloud" target="_blank">here</a>.<br>Every PowerVS virtual server instance consists of a boot volume and optionally other storage volumes. While IBM manages the underlying physical storage, it is the client's responsibility to manage and protect the data on instances.

1. Click the **Storage volumes** option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/b038e8ac-d1d4-465f-aaf2-f124672aa7c5)

2. Click **Create volume +** (**A**).
    
    ![image](https://github.com/user-attachments/assets/8eae38bb-2123-4178-ad54-2d2e5692a225)

3. Before continuing, review the parameters for creating a storage volume.

    To create a new storage volume, a few parameters must be specified. The first 4 parameters are the name of the volume, the storage tier, the number of volumes to create, and the size.

    * Each storage volume in a workspace must have a unique name.

    * A tier of storage must be specified. The storage tier can change later. The storage tier represents the performance characteristics of the volume and directly relates to the cost of the volume. See the earlier link for more information on the 4 storage tiers supported by PowerVS.

    * It is possible to create up to 10 storage volumes at a time. Each of these volumes has the same attributes as far as tier, size, shareability, storage pool, and affinity rules.

    * The size of a volume can range from 1 Gigabyte (GB) up to 238,705 GB. Storage volumes can be increased after they are provisioned but NOT decreased.

        ![image](https://github.com/user-attachments/assets/86297630-640d-417e-8dcd-657db5378406)

    The second set of parameters that need to be specified for a storage volume relates to the volumes shareability, storage pool, affinity rules, and volume replication.

    * Storage volumes can be marked as **shareable**. The **shareable** attribute allows a single volume to be shared between multiple PowerVS virtual server instances. The attribute is typically used in highly available (HA) deployments, for instance when PowerHA system mirroring capabilities are used. Learn more about HA and Diaster Recovery (DR) in PowerVS <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-ha-dr" target="_blank">here</a>.

    * A storage volume must be assigned to a storage pool. By default, the volume is assigned to any pool that has sufficient capacity. The volume can be controlled by affinity rules. The volume can be assigned to an affinity pool or an anti-affinity pool. Affinity can be based on either other storage volumes or upon virtual server instances (VSIs), also known as virtual machines (VMs). If a storage volume is marked with an affinity policy, it is created in the same pool as other volumes with which it needs to have affinity. An affinity policy is typically used for cloning and snapshots. If a storage volume is marked with an anti-affinity policy, it is created in a different pool from other volumes with which it needs anti-affinity. The anti-affinity policy is typically used for HA and logical mirroring of volumes.

    * The affinity and anti-affinity object can be either another storage volume or a VSI. Depending on the affinity or anti-affinity object selection, the menu is populated with the existing volumes or VSIs that the policy is to be applied with or against. Learn more about affinity and anti-affinity policies <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-powervs-faqs#affinity">here</a>.
      
        ![image](https://github.com/user-attachments/assets/3b207478-1414-4aa5-8537-2ceedb168824)
      
        <hr>
      
        ![image](https://github.com/user-attachments/assets/0d6e2cbb-ec9d-4229-af11-0457d28f7365)

    * Volume replication with Global Replication Services (GRS) when enabled, provides asynchronous replication at the storage level to maintain a consistent and recoverable copy of the data at the specified secondary location. Learn more about GRS [here](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-getting-started-GRS){target="_blank"}.

        ![image](https://github.com/user-attachments/assets/2c2b899c-e5e2-46e4-9ff6-5a08a1c05a35)

5. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel (A)** to return back to the storage volumes list page.

    ![image](https://github.com/user-attachments/assets/1b84b24d-b6ea-4c71-99e4-d1e8832d4dd9)    

6. Click **Edit** under the ![](_attachments/ellipses.png) icon for one of the existing storage volumes.<br>**Note**: In this demonstration environment, edit access to storage volumes is not provided, hence the option will be seen disabled. The next steps will explain the different attributes of this option.

    ![image](https://github.com/user-attachments/assets/82e7f1b5-6b80-418d-af03-76752fe10f1a)

7. Although the edit storage volume option is disabled, the modifiable attributes of a storage volume are provided here for reference.

    * The name of the volume can be modified after it is provisioned. Remember, the name must be unique within the PowerVS workspace.

    * The storage tier can be modified. However, if the volume is set to Fixed IOPs or is being changed to the Fixed IOPs tier, the size of the volume cannot be changed at the same time.

    * The size of the volume can be increased from its current size up to the maximum of 238,705 GB. The size of the volume cannot be decreased.

    * Non-bootable volumes can be toggled between shared and unshared.

    * A volume can be marked as bootable. Bootable volumes cannot be shared. It is possible for a single VSI to have multiple bootable volumes. PowerVS randomly selects a bootable volume as the instance's boot volume if the original is no longer bootable. VSIs must have at least one bootable volume.

Storage volumes that are not actively in use by VSI can also be deleted from the edit menu. Learn more about managing storage volumes <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-modifying-instance#modifying-volume-network" target="_blank">here</a>.
