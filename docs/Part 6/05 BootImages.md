??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
Every instance of IBM Power Virtual Server (PowerVS) consists of a mandatory boot volume. Boot images come from the PowerVS image catalog or are imported by clients. After a virtual server instance (VSI) is provisioned, a copy of the boot image is added to the client's boot image catalog.

1. Click the **Boot images** option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/3f2c8118-2921-44e6-a71a-a3ed547d910d)

    Notice the existing 3 boot images in the list.

    ![image](https://github.com/user-attachments/assets/a4622424-0654-43dd-8ee0-ba214c684d0b)

    These 3 boot images are used by the 3 VSIs running in this demonstration environment. The **Active** status means that the image is actively used by a running VSI.

2. Click **Import image +** (**A**).

    ![image](https://github.com/user-attachments/assets/6a20f060-6168-4bf2-af96-c83d13922e7d)

3. PowerVS allows clients to add their own boot images to their PowerVS workspace. Only AIX, IBM i, and Linux on IBM Power images are supported. To add an image to the PowerVS workspace image catalog, the image must first be uploaded to a bucket in IBM Cloud Object Storage (COS). Supported image file types include: .ova, .ova.gz, .tar, .tar.gz, and .tgz. To access the image in COS the file name, bucket name, hash-based message authentication code (HMAC) access key, and secret access keys must be specified. Learn more about COS <a href="https://cloud.ibm.com/objectstorage" target="_blank">here<a>.
    
4. You are now in the page where you need to enter the **Source** image details. Select an Image OS and Region and enter some temporary text in the remaining fields in order to proceed to the next page. After all these fields are specified, **Next** button gets enabled. Click **Next** (**A**).
   
    ![image](https://github.com/user-attachments/assets/0e73b473-bb3e-4481-8fa1-36e049bc3c83)

5. You are now in the page where you need to enter the **Destintion** image details. Enter some temporary text for Custom image name, select a storage tier and storage pool. Click **Import Image** (**A**).

    ![image](https://github.com/user-attachments/assets/f6e4d934-be5d-4a30-a53e-494fa1f59546)

6. Click **Import** (**A**) in the "Limited action available during import" popup window.
    ![image](https://github.com/user-attachments/assets/4a4de331-1fb4-48d2-bc87-11b1872c97ba)

3. An error message like the following one is encountered if an attempt is made to complete an action. **An error is expected**, as full access to the shared environment is not provided. During a live client demonstration, or for an IBMers Stand and Deliver, tell the audience why the error is being seen but explain what happens when the action is successfully completed.
   
    ![image](https://github.com/user-attachments/assets/9bfbec32-e5d3-45c9-b346-3c5c43833478)


Learn more about importing boot images <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-importing-boot-image" target="_blank">here</a>.
