??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
The IBM Power Virtual Server (PowerVS) logs all the events and notifications from the IBM Cloud console. You can access these events and notifications in the **Event logs** page.

The **Event logs** pages for PowerVS workspace provides a view of the 400 most recent logs within the current and previous month. These logs show the recent activities, and provide details (like who performed the action) about the event.

You can choose to enable or disable notifications for events on all workspaces. If you disable the notifications, you can still access the logs from the Event logs page.

1. Click the **Event logs** (**A**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/749d06af-6f1f-4c9a-b6f5-349bf340f386)

2. Click **Log notification settings** (**A**).

    ![image](https://github.com/user-attachments/assets/53cfa470-59ab-4af9-b803-b2649f0fa442)

3. Review the **Log notification settings** and then click **Cancel** (**A**).

    ![image](https://github.com/user-attachments/assets/3e7f19fb-f80e-4f1a-a369-801691f3b9ac)

    !!! Important "Don't see any notifications?"

        Since event logs only displays events in the current and previous month, it is possible that you may not see any events. If that is the case, you won't be able to follow the steps below; however, the images below will help you understand the type of information that is logged and to what level of detail.

4. **Expand** (**A**) one of the events in the table. This event is related to a **Virtual Server Instance** (VSI) resource type and was triggered when an IBM i VSI was created. **Note**, if no events have been generated in last 60 days, there may not be an event to examine.

    ![image](https://github.com/user-attachments/assets/23b9c651-b32c-4494-bc6a-980a6baacf64)

5. The next image lists the events that were triggered when the AIX VSI in the demonstration environment was provisioned (**Hint**: Notice the date/time stamps). As part of the AIX VSI provisioning, a storage volume `powervs-volume-2025   ` was also created and the VSI was attached to a public network `public-192_168_222_224-29-VLAN_2060`, both of those events are seen in the event logs.

    ![image](https://github.com/user-attachments/assets/f9c9919a-e29c-4eb6-b897-fc326b3512b5)

For more information on event logs and notifications, refer to [this](https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-manage-event-logs){target="_blank"} link. 

PowerVS clients can use IBM Cloud Monitoring and IBM Cloud Logs services to monitor and log events that are related to their PowerVS deployments. Learn more about these options in [Part 8 - Observing PowerVS resources](https://dpkshetty.github.io/TEST-SalesEnablement-PowerVS-L3/Part%208/01%20Introduction/){target="_blank"}.
