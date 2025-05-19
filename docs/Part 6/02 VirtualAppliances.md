??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).

Virtual appliances in IBM Power Virtual Server are pre-configured virtual machines designed to simplify the deployment and management of applications and services. Virtual appliance also allows ISVs to bring-your-own license model, where independent software vendors (ISV) can offer OVA (ISV software plus operating system of your choice) for quick deployment of IBM Power Virtual Server workloads. It is an appliance-as-a service that allows seamless management and metering of PowerVS. Software support is handled directly by the ISVs for virtual appliances.

1. Click **Virtual appliances** (**A**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/5ba14c2f-c80c-43bf-b51a-b7eb7b30a901)

2. Click **Create from catalog +** (**A**). A new browser window or tab opens all products in the catalog.

    ![image](https://github.com/user-attachments/assets/81eebe2f-74ce-4bdf-85ff-ef5160aa68aa)

8. Navigate to the newly opened browser window or tab. Scroll down to **Deployment target** filter and select **Power Systems Virtual Server** (**A**).
   ![image](https://github.com/user-attachments/assets/1bcde8ad-1e13-4db9-a716-6a0b60020254)

10. The currently available virtual appliances that can be deployed on PowerVS are displayed. As of April 2025, 2 virtual appliances are available: **FalconStor StorSafe VTL for PowerVS Cloud** and **Open XLC Compiler for AIX**.

    ![image](https://github.com/user-attachments/assets/8a80141f-84c5-49ec-ab69-c7155d354a4d)

8. Click the **FalconStor StorSafe VTL for PowerVS Cloud** tile.

    ![image](https://github.com/user-attachments/assets/8fd77bc6-77f4-413e-b7b1-c96152e8dfcc)

    FalconStor StorSafe Virtual Tape Library (VTL) is a software solution that optimizes backup and restore to improve performance and significantly reduce backup storage costs, all without requiring changes to the existing requirement. With its integrated deduplication, the solution removes redundant copies of data, reduces capacity requirements, decreases storage costs, and minimizes replication and restore times. StorSafe VTL can be used with all leading backup solutions, enables both hybrid and cloud native backup, and supports both workload and tape migration to the cloud. 

    Review the provisioning page for FaclonStor StorSafe VTL for PowerVS Cloud. Notice the **Required input variables** and **Optional input variables** sections and the values that are used to configure the virtual appliance. These include parameters like the number of vCPUs, memory, and storage tier. Click the **About** (**A**) tab to get a summary of this virtual appliance along with links to additional information.

    ![image](https://github.com/user-attachments/assets/6dae703f-75f8-428d-ace8-44df1eb69dda)

    After all required fields are defined, clients can provision the virtual appliance. The automation provisions the required virtual server instance by using a base image with the FaclonStor software already installed and configured. When complete, the FalconStor solution is ready to be used.

9. Click **Catalog** (**A**) to return back to the PowerVS deployment target specific catalog view.

    ![image](https://github.com/user-attachments/assets/35ef8931-ad3f-487b-a2f1-ca95d406fe62)

10. Click the **Open XLC Compiler for AIX** tile.

    ![image](https://github.com/user-attachments/assets/983a7e31-eb06-4e80-b332-de07425f70ff)

    IBM® Open XL C/C++ for AIX is IBM’s next-generation C/C++ compiler that facilitates the creation and maintenance of applications that are written in C/C++ for IBM Power. Taking advantage of the Power10 architecture, IBM Open XL C/C++ for AIX can generate code that uses the capabilities of Power10 to maximize hardware utilization.

    Explore the provisioning page and additional information available for this virtual appliance.

    ![image](https://github.com/user-attachments/assets/6688bf63-47e9-4d4d-bd17-817b208354f7)

Recall, the virtual appliance catalog was opened in a new browser tab or window. When ready, close the current browser tab or window to return to the IBM Cloud Portal virtual appliances page.
