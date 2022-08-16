Through the IBM Cloud Portal or APIs, administrators with the appropriate IBM Cloud Portal access can manipulate PowerVS instances without needing to directly access the instance operating system.

In the video below, watch how easy it is to demonstrate some of the management capabilities of a PowerVS instance.

!!! tip
    If the video appears blurry, click the fullscreen ![](_attachments/FullScreenVideo.png) or ![](_attachments/FullScreenVideo3.png) icon.


**INSERT VIDEO LINK HERE**

The video was edited to speed up the video during the time required to complete long running actions. When performing client demonstrations it is often best to perform a "baking show" style of demonstration, especially when actions take longer than a minute or two to complete, or have a high risk of failure. While the actions performed here are low risk, as seen in the video, they do take some time to complete.

Using your IBM Cloud credentials and the IBM Cloud portal, complete the following scenarios of managing PowerVS instances using the "baking show" demonstration technique. Note, an error message like the one below will be encountered if an attempt is made to complete an action.

![](_attachments/ErrorMessage.png)

This is normal, as full access to the shared environment is **not** provided. To avoid the error message, simply click the **Cancel** button on the action dialog. If performing a live client demonstration, or for IBM employees completing the Stand and Deliver for the {{learningplan.name}} badge, tell the audience why the action is being canceled but explain what would typically happen if the action was completed.

1. open the portal in anew browser tab/window
2. if not already opened, go to dashboard
3. change account
4. click services and software
5. click powervs-service
6. click ... at far right of one of the instances in the table

Notice what operations can be performed. Some operations will be disabled. For example the **Start** option will be disabled if the instance is already in a running state. Some of the operations will only be enabled for specific operating systems.

Details of a instance and other management tasks are also available by selecting on a particular instance in the **Virtual server instances** table.

7. click anywhere on the main screen (away from the pop-up menu from step 5)
8. click the **VM actions** button.

Notice what operations can be performed. These actions are specific to the node, its current state, and OS.

9. click **VM actions** button again to dismiss the actions menu.
10. click the **Edit details** link
11. Click **Edit details**

Explore what instance configuration options can be modified. Depending on the running state of the instance, some options may not be possible.

12. Click the **+** icon under the Memory field until the value is 4 GB.
13. Click the **I have read the service agreement and agree to the terms.** checkbox.
14. Note the **Save edits and order** button is now active.
15. Click **Cancel**
16. Click the **Virtual server instances** item in left hand menu bar.

In the next Part, learn how to access a running PowerVS instance.
