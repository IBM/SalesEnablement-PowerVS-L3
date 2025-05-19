Using the IBM Cloud portal and command-line interfaces (CLIs), users can do the following actions on individual IBM Power Virtual Servers (PowerVS) instances (VSIs):

- Shutdown an operating system (OS)
- Immediate shutdown (without killing processes gracefully) of an OS
- Restart
- Open a console to the instance
- Delete an instance
- Capture and export an image of an instance
- Modify a VSI
    - Change the name of the VSI
    - Change virtual server pinning policy
    - Add or remove cores
    - Add or remove memory
    - Modify placement group
- Add or remove volumes
- Modify network interfaces (can require OS changes)

!!! Important "Options vary"
    Options vary depending on the OS and options that are specified for the VSI. 

Using the IBM Cloud portal, complete the following scenario for managing PowerVS instances by using the "baking show" demonstration technique. Note, an error message like the following one is encountered if an attempt is made to complete an action.

![image](https://github.com/user-attachments/assets/759e43dd-a733-47a9-8460-530a99f93a53)

An error is expected, as full access to the shared environment is **not** provided. To avoid the error message, click **Cancel** on the action dialog. During a live client demonstration, or for an IBMers Stand and Deliver, tell the audience why the action is being canceled but explain what happens when the action is completed.

1. Open the IBM Cloud Portal: <a href="https://cloud.ibm.com/" target="_blank">https://cloud.ibm.com/</a> and authenticate.
2. Change to the **{{account}}** account.

    ![](_attachments/SwitchAccounts-final.gif)

    !!! Tip
        If the browser window is narrow, this icon: ![](_attachments/SwitchAccountsIcon.png) is seen instead of the current account name as shown in the previous screen capture.

<!-- 3. Click **Services and software** under **Resource summary** on the IBM Cloud Dashboard. -->

3. Click the hamburger menu icon (**A**)

    ![image](https://github.com/user-attachments/assets/74a0c81f-e687-4d92-9a39-4519f7141e36)

    !!! Note
        
        After switching accounts a new user questionnaire or other dialogs can appear. Cancel these windows. If the IBM Cloud Dashboard is not displayed as seen in the previous image, click the **IBM Cloud** text at upper left of the IBM Cloud Portal.
   
5. Click **Resource List**  (**A**)

    ![image](https://github.com/user-attachments/assets/706544ac-667b-4086-a485-79670f2cecbb)

6. Click **{{powerVS.serviceInstanceName}}** (**A**) under **Compute**.

    ![image](https://github.com/user-attachments/assets/5b779dc8-4bd3-4909-8571-d7ac217502a1)

7. Click **{{aixServer1.name}}** (**A**) in the **Virtual server instances** table.

    ![image](https://github.com/user-attachments/assets/125d2256-152a-4ea1-b6f1-af278294cddf)

8. Click the **VM actions** (**A**) pull-down.

    ![image](https://github.com/user-attachments/assets/3146f888-bac0-4d29-90c5-60169efa46e6)

    Notice the actions that can be initiated. The actions available vary depending on the current state of the instance and the operating system of the instance.

    ??? Error "Don't see a **VM actions** button?"

        If the browser window is too small, the reactive nature of the IBM Cloud Portal will change the **VM actions** button to an ellipses icon ![](_attachments/elipsesIcon.png). Click the ellipses icon to see the **VM actions** or expand the browser window horizontally.

        ![](_attachments/bigEllipses.png)

9. Click anywhere on the main screen (away from the menu from step 7).
10. Click the **VM actions** (**A**) drop-down menu and select **Capture and export** (**B**). 
    ![image](https://github.com/user-attachments/assets/ad1edafb-f842-4a75-9f97-e314f44ef292)

11. The dialog describes two distinct forms within the interface:
     - Capture Contents Form: This form facilitates the selection of storage volumes intended for export. The selected volumes can be exported either to the PowerVS service image catalog or to IBM Cloud Object Storage (COS).
     - Destination Form: This form enables the specification of the export destination. Based on the selected destination, additional input fields are dynamically displayed. These fields allow for the configuration of parameters such as the image name (for the image catalog) or COS-specific details including region, bucket name, access key, and other relevant credentials.
    
     ![image](https://github.com/user-attachments/assets/1eeb302f-a9d0-4ce9-b4d8-500231b0a213)

     <hr>

     ![image](https://github.com/user-attachments/assets/e897cd47-73db-4e0a-bfad-73128f148ded)

13. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel** (**A**) in the "Capture and export virtual server" dialog to close it and return back to the VSI details view page.
    ![image](https://github.com/user-attachments/assets/c59a5b74-4c0b-4987-acfc-4d5b0d33de03)

14. Click the **Edit details** (**A**) link.

    ![image](https://github.com/user-attachments/assets/3c232c93-421d-47a7-9c39-1a1bce200b5a)

    Explore what instance configuration options can be modified. Depending on the running state of the instance, some options are not accessible. Note, changing the instance always requires the user to agree to the service terms.

15. Click **Cancel** (**A**) in the **Edit virtual server instance details** dialog to close it.
    ![image](https://github.com/user-attachments/assets/8d0fdfe6-814f-4d22-a2c8-d75cbbb0745a)


!!! Example "On your own"
    The preceding steps walked through two aspects of managing a single PowerVS instance with the AIX operating system. Explore the **Edit** options available for the VSIs running Linux and IBM i. Notice any differences?

Before proceeding, take a few minutes exploring other aspects of managing PowerVS instances by using the IBM Cloud Portal. Detailed steps are not provided, but typically you can click the **Cancel** button to return to the instances detail page.<br>A few things to try from any of the instances' detail pages:

- In **Attached volumes** section, click **Attach existing** (**A**). Notice how only existing volumes that are marked as **shareable** are displayed.
  ![image](https://github.com/user-attachments/assets/77e5de15-487c-4014-84cb-032a83796739)

- In **Attached volumes** section, click **Create volume**. Notice that it is now possible to add a **Storage volume** that uses a different tier of storage than the instance boot volume.
  ![image](https://github.com/user-attachments/assets/2dcfebb5-37d1-4bb5-b95a-eca6bfb4d4af)

- In **Network interfaces** section, **Private networks** sub-section, click **Attach existing network** (**A**). Notice how it shows existing private subnets. A VSI can be attached to one or more private subnets.
  ![image](https://github.com/user-attachments/assets/78477159-8d70-4c0f-a218-84513f12100d)

