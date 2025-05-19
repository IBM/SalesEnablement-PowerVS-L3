The steps that follow outline how to reserve access to the pre-provisioned, IBM Technology Zone (ITZ) demonstration environment.

!!! tip "Remember, reserve the demonstration environment in IBM Technology Zone"
    Reserve an IBM Technology Zone environment ahead of time so that the instance has time to provision.

1. Open <a href="https://techzone.ibm.com/collection/ibm-power-virtual-server-level-3" target="_blank">IBM Technology Zone collection for PowerVS L3</a> in browser and click **Complete Learning Activity for IBM Power Virtual Server Level 3 Sales Enablement (A)** as shown.

    ![image](https://github.com/user-attachments/assets/df474600-78de-4fcb-b040-e66622b3f8ca)

2. In the **Demonstration Environment** tile, click **Reserve (A)** icon to request for a reservation.

    ![image](https://github.com/user-attachments/assets/966434a3-527e-4c57-b12c-b156454e31d6)

3. A new browser tab or window will open with a web form for reserving the L3 environment. Navigate to that tab or window and Select **Reserve Now (A)**.

    ![image](https://github.com/user-attachments/assets/94cad21e-75c5-40df-9b70-e079d57dbf0b)

4. Complete the required fields for the reservation.

    a. Provide the instance a unique **name (A)**. For example, 'PowerVS-L3-lab-env'.
  
    b. Set the value of **Purpose** to **Education (B)**.
  
    c. Write a brief note into the **Purpose Description (C)** field.
  
    d. Under the **Preferred Geography** field, select **itzadhoc03 - AMERICAS - us-south region - dal13 datacenter (D)** (or a closer location if available).
  
    e. Specify the **Start Date and Time** and **End Date and Time** **(E)** for the reservation. The default reservation is for two days. You can extend the reservation for up to an extra four days.

    ![image](https://github.com/user-attachments/assets/8ee34949-b051-4442-ae4f-e1bde276ead4)

5. When satisfied, scroll down and **accept the terms and conditions (A)** and then click **Submit (B)** to initiate the environment provisioning request.

    ![image](https://github.com/user-attachments/assets/80dfce1b-c573-43fb-a1b8-3db5544008bc)

6. Wait for IBM Technology Zone to finish provisioning the PowerVS environment. The automation takes approximately 10 to 15 minutes. When ready, an email is sent and the [TechZone my reservations](https://techzone.ibm.com/my/reservations){target="_blank"} page shows a PowerVS tile with the status of **Ready**. If marked as ready, click **Open this environment (A)** on the tile to drill down into details of the reservation.

    ![image](https://github.com/user-attachments/assets/53978062-5de5-4d40-9f9c-b6c31bb6219e)

    !!! Important
        Clicking the PowerVS tile before it is marked as Ready (for example, if it shows as "scheduled" or "provisioning") displays incomplete data. Wait until the environment is **Ready** before you continue to the next step.

8. In the reservation details page, locate the **User ID** field (scroll to the bottom) and **record this value**. It is needed later. It looks like your email address that was used to request the environment but with a period instead of an *at* sign (@).

    ![image](https://github.com/user-attachments/assets/097edeb5-1b32-4a4b-9920-946e323f0339)

9. Click **Download SSH Private Key (A)** (scroll to the bottom of the reservation details page).

    This SSH key is used later to access the PowerVS virtual server instances.

    !!! tip "Record the file name and location of the downloaded SSH key!"
    
        This SSH private key file is used later when accessing virtual machines on PowerVS.

    ![image](https://github.com/user-attachments/assets/396ab31f-4846-462f-b0a8-eed217569305)

10. Review the emails received. One is from **IBM Cloud** with the title **Account: You are invited to join an account in IBM Cloud**. In the body of the email is a **Join Now** link. Click the link and **Accept** the invitation on the IBM Cloud portal.<br>**Note,** joining the IBM cloud account associated with the TechZone reservation is a must, otherwise you won't have access to the IBM cloud resources needed to complete the hands-on lab-guide provided in this course.
    ![image](https://github.com/user-attachments/assets/7f67d496-aa54-4a0a-91da-a8bde55f2570)

    !!! note "Troubleshooting in case email is not received"
    
        If you do not receive an e-mail, try deleting the existing reservation in TechZone and try creating a new one. If that doesn't work, open a [support ticket](https://dpkshetty.github.io/TEST-SalesEnablement-PowerVS-L3/support/){target="_blank"} and include the reservation ID and summarize the problem in your message.


Now that you have an active TechZone reservation, you can proceed. Remember, the default duration of the reservation is 2 days. You can extend the reservation for up to an extra four days. IBMers will need an active reservation to record their stand and deliver, and business partners will want it to complete the short quiz as part of the Level 3 learning plan.
