IBM Cloud Monitoring offers visibility into the performance and health of cloud-based infrastructure and applications, with in-depth troubleshooting and alerting. Learn more about IBM Cloud Monitoring <a href="https://cloud.ibm.com/docs/monitoring?topic=monitoring-getting-started" target="_blank">here</a>.

For this demonstration guide, an IBM Cloud Monitoring instance is already provisioned. This instance monitors the resources that are part of the PowerVS-L3 resource group in the shared cloud account. Your user ID has permission to open and view the IBM Cloud Monitoring dashboard. 

In the steps that follow, learn how to:

- access the IBM Cloud Monitoring instance by using the IBM Cloud portal
- open the IBM Cloud Monitoring dashboard
- view the standard PowerVS dashboard that shows the performance and health of the PowerVS resources

Note, this demonstrate guide does not provide detailed information on provisioning, configuring, and customizing IBM Cloud Monitoring. Nor does it provide details on the meaning of individual performance metrics that are reported.

1. Click the IBM Cloud portal menu icon ![](_attachments/hamburgerIcon.png) (**A**).

    ![image](https://github.com/user-attachments/assets/3891d36e-6b9d-4651-8397-f9ef29b0cd51)

2. Expand the **Observability (A)** menu and click **Monitoring (B)**.   

    ![image](https://github.com/user-attachments/assets/0eeea732-65aa-4ac6-8970-26f47115ed52)

4. Click **{{powerVS.monitoringInstance}} (A)**.

    ![image](https://github.com/user-attachments/assets/df0619f4-5265-4cbf-adec-f59a4e0c634d)

    Explore the settings for this monitoring instance.

5. Click **Dashboard (A)**.

    ![image](https://github.com/user-attachments/assets/44a81d83-850c-4f04-b5db-b68835756aa3)

    The IBM Monitoring dashboard opens in a new browser tab or window. You may be asked to reauthenticate to IBM Cloud when the new window is opened.

6. Navigate to the new browser tab or window and click **Dashboards (A)** in the side menu.

    ![image](https://github.com/user-attachments/assets/6aeb7fa1-c6a8-4c42-ae73-6c00cc7ad788)

7. Click **IBM Power Systems Virtual Server Overview (B)** dashboard under the **IBM (A)** section.

    ![image](https://github.com/user-attachments/assets/f9be3070-190c-4ab8-a4fb-9a84cf48e1c0)

    !!! Note "Your view looks different?"

        The images that follow were captured when both the new and old PowerVS workspaces existed for this learning plan. Your view will likely only show a single Power Instance and three Power Virtual Server instances.

    ![image](https://github.com/user-attachments/assets/c79b473f-07c1-414e-8fd4-34d505adc0fc)

8. Notice that the bottom of the dashboard provides controls to adjust the time frame for the charts presented on the dashboard. The default is set to one hour (1H). To see more data and make the charts appear more interesting, consider changing the time setting to two weeks. Click **2W (A)**.

    ![image](https://github.com/user-attachments/assets/de6742e5-97f8-41cb-8d47-51b51f2e8189)

    Now, explore the various charts (also known as panels) that make up the default PowerVS overview dashboard. Understand that IBM Cloud Monitoring has many more capabilities like the ability to customize dashboards, create new dashboards and panels, monitor for specific events, and send alerts when events occur.

Refer to the link provided earlier to learn more about all the capabilities of IBM Cloud Monitoring.

