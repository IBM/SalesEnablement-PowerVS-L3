Using the IBM Cloud portal and command-line interfaces (CLIs), users can do the following actions on individual IBM Power Virtual Servers (PowerVS) instances (VSIs):

- Shutdown an operating system (OS)
- Immediate shutdown (without killing processes) of an OS
- Restart
- Reset
- Open a console to the instance
- Delete an instance
- Capture and export an image of an instance
- Modify an image 
    - Change pinning policy
    - Add or remove cores
    - Add or remove memory
    - Modify placement group
- Add or remove volumes
- Modify network interfaces (can require OS changes)

!!! Important "Options vary"
    Options vary depending on the OS and options that are specified for the VSI. 

Using the IBM Cloud portal, complete the following scenario for managing PowerVS instances by using the "baking show" demonstration technique. Note, an error message like the following one is encountered if an attempt is made to complete an action.

![](_attachments/ErrorMessage2.png)

An error is expected, as full access to the shared environment is **not** provided. To avoid the error message, click **Cancel** on the action dialog. During a live client demonstration, or for an IBMers Stand and Deliver, tell the audience why the action is being canceled but explain what happens when the action is completed.

1. Open the IBM Cloud Portal: <a href="https://cloud.ibm.com/" target="_blank">https://cloud.ibm.com/</a> and authenticate.
2. Change to the **{{account}}** account.

    ![](_attachments/SwitchAccounts-final.gif)

    !!! Tip
        If the browser window is narrow, this icon: ![](_attachments/SwitchAccountsIcon.png) is seen instead of the current account name as shown in the previous screen capture.

<!-- 3. Click **Services and software** under **Resource summary** on the IBM Cloud Dashboard. -->

3. Click the **Resource List** ![](_attachments/ResourceListIcon.png) icon in the left menu bar.

    ![](_attachments/NewDashboard.png)

    !!! Note
        
        After switching accounts a new user questionnaire or other dialogs can appear. Cancel these windows. If the IBM Cloud Dashboard is not displayed as seen in the previous image, click the **IBM Cloud** text at upper left of the IBM Cloud Portal.

4. Click **{{powerVS.serviceInstanceName}}** under **Compute**.

    ![](_attachments/ResourceListofWorkspaces.png)

5. Click **{{aixServer1.name}}** in the **Virtual server workspaces** table.

    ![](_attachments/VSIInstancesTable.png)

6. Click the **VM actions** pull-down.

    ![](_attachments/VSI-InstanceDetails-Actions.png)

    Notice the actions that can be initiated. The actions available vary depending on the current state of the instance and the operating system of the instance.

    ??? Error "Don't see a **VM actions** button?"

        If the browser window is too small, the reactive nature of the IBM Cloud Portal will change the **VM actions** button to an ellipses icon ![](_attachments/elipsesIcon.png). Click the ellipses icon to see the **VM actions** or expand the browser window horizontally.

        ![](_attachments/bigEllipses.png)

7. Click anywhere on the main screen (away from the menu from step 6).
8. Click the **Edit details** link.

    ![](_attachments/VSI-InstanceDetails-EditDetails.png)

    Explore what instance configuration options can be modified. Depending on the running state of the instance, some options are not accessible. Note, changing the instance always requires the user to agree to the service terms.

9. Click **Cancel** in the **Edit virtual server instance details** dialog.

!!! Example "On your own"
    The preceding steps walked through two aspects of managing a single PowerVS instance with the AIX operating system. Explore the **Edit** options available for the VSIs running Linux and IBM i. Notice any differences?

Before proceeding, take a few minutes exploring other aspects of managing PowerVS instances by using the IBM Cloud Portal. Detailed steps are not provided, but typically you can click the **Cancel** button to return to the instances detail page. A few things to try from any of the instances' detail pages:

- Click **Attach volume**. Notice how only existing volumes that are marked as **shareable** are displayed.
- Click **Create volume**. Notice that it is now possible to add a **Storage volume** that uses a different tier of storage than the instance boot volume.
- Click the **VM actions** drop-down menu and select **Capture and export**. From this dialog, the storage volumes can be exported to either the PowerVS service Image catalog or to IBM Cloud Object Storage. **Hint**: Business Partners should take note of the **Limited actions available during capture** information dialog that appears on the **Capture and export** page.
