Welcome to the {{guide.name}}. The goal of this demonstration guide is to provide IBM and Business Partner Sales and Technical Sales the knowledge and tools to perform introductory demonstrations of {{offering.name}} (PowerVS).

There are 9 parts to this demonstration guide as seen in the left hand navigation. To complete the {{learningplan.name}} badge requirements, IBM and Business Partner **sellers** must complete Parts 1, 2, 3, 4, 5, and 9 of this demonstration guide. IBM and Business Partner **technical sellers** must complete all sections. The associated Learning Plan Stand and Deliver rubrics (IBM) and quizzes (Business Partners) are based upon the sections required for the respective roles. **All are welcome and encouraged to complete all sections.**

In Parts 1, 2, and 3, you learn how the demonstration environment was built, and how to perform a "baking show" style demonstration using the IBM Cloud Portal, click-thru demonstrations, and videos. You will not be provisioning new PowerVS services or virtual machines, rather you will access pre-provisioned resources. Utilizing the pre-provisioned, shared environment will save you time and save IBM money.

In Part 4, learn how to use the IBM Cloud Portal to manage PowerVS instances.

In Part 5, learn how to access the pre-provisioned PowerVS instances using the IBM Cloud Shell.

Parts 1 through 5 provide a good foundation for performing a high-level, customer facing demonstration of {{offering.name}}.

Parts 6 through 8 introduce several more technical aspects of {{offering.name}} including using the PowerVS IBM Cloud command line interface (CLI) plugin.

Finally, in Part 9, learn where to find additional resources about {{offering.name}}, and how to complete your {{learningplan.name}} badge.

Before jumping to part 1, please read the guidance below. Reading and understanding the information will save you time while completing the steps in this guide.

## Helpful tips for using this demonstration guide and environment

The {{guide.name}} is organized in parts and sub-parts or chapters. Most chapters contain numbered steps, which are actions that you will perform.

Throughout the guide, you will see images that are examples of what you should be seeing in the IBM Cloud Portal, IBM Cloud Shell, and PowerVS instances consoles.

!!! warning
    The IBM Cloud Portal and {{offering.name}} changes on a regular basis and may differ from the iamges captured in this guide.

In some images, you will see the following styles of highlighting:

- Action highlight box: Illustrates where you should click, enter, or select an item:

![](_attachments/ClickActionRectangle.png)

- Path/explore highlight box: Illustrates one of two things:

    - the path to follow to get to a specific location in the user interface
    - areas to explore on your own

![](_attachments/PathExploreHighlight.png)

- Copy to clipboard box: Text that is copied to your clipboard. Click the copy icon (highlighted below) and then paste using your operating systems paste function, for example, entering ++ctrl++**+v**, ++cmd++**+v**, or right click and select paste.

![](_attachments/Usage-Clipboard.png)

Additionally, there are several "click-thru" demonstrations. Links to click-thru demonstrations will open in a new browser window or tab with a screen similar to the image below. ***UPDATE THE IMAGE BELOW***

![](_attachments/ClickThruStartPage.png)

Click the play button ![](_attachments/ClickThruPlayButton.png) in the middle of the screen to start the demo. Then, simply follow the steps in the demonstration guide. If at any point you are unsure where to click, click anywhere on the screen and a highlight box will appear showing where to click next.

**In this demonstration environment, you will NOT have full access to the IBM Cloud account or PowerVS capabilities.** Your user ID will be restricted to specific capabilities. You will **not** have permissions to create or modify PowerVS service instances, virtual machines (instances), networks, images, etc.

!!! warning
    Attempting to perform an action that you do not have permissions for will result in an error message like the one below. This is not an issue with the IBM Cloud or PowerVS, rather a restriction of the demo environment and the permissions assigned to users.

    ![](_attachments/ErrorMessage.png)

## Acronyms

The following acronyms are used throughout this demonstration guide:

    - Control (ctrl) - The control key on your keyboard
    - Command (cmd) - The command key on your keyboard
    - Gigabyte (GB)
    - IBM Power Systems Virtual Server (PowerVS)
    - IBM Technology Zone (TechZone)
    - Input/output operations per second (IOPs)
    - Operating System (OS)
    - Random access memory (RAM)
    - Virtual Machine (VM)

You are now ready to proceed to Part 1.
