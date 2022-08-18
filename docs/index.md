Welcome to the {{guide.name}}. The goal of this demonstration guide is to provide IBM and Business Partner Sales and Technical Sales the knowledge and tools to perform introductory demonstrations of {{offering.name}} (PowerVS).

There are 9 parts to this demonstration guide as seen in the left hand navigation. To complete the {{learningplan.name}} badge requirements, IBM and Business Partner **sellers** must complete Parts 1, 2, 3, 4, 5, and 8 of this demonstration guide. IBM and Business Partner **technical sellers** must complete all sections. The associated Learning Plan Stand and Deliver rubrics (IBM) and quizzes (Business Partners) are based upon the sections required for the respective roles. **All are welcome and encouraged to complete all sections.**

!!! tip "Business Partner Tip"
    To complete the {{learningplan.name}} badge, all Business Partners must complete a 5 question quiz. **The quiz is focused on validating completion of this demonstration script, and not general knowledge of PowerVS.** It is highly recommended to complete the quiz while the IBM Technology Zone environment is active. Several of the questions ask about specific settings or content that is seen in the IBM Cloud Portal.

In Parts 1, 2, and 3, learn how the demonstration environment was built, and how to perform a "baking show" style demonstration using the IBM Cloud Portal, click-thru demonstrations, and videos. New PowerVS resources are **not** provisioned as part of this demonstration guide. All resources are pre-provisioned in a shared environment to save time and money.

In Part 4, learn how to use the IBM Cloud Portal to manage PowerVS instances.

In Part 5, learn how to access the pre-provisioned PowerVS instances using the IBM Cloud Shell.

Parts 1 through 5 provide a good foundation for performing a high-level, customer facing demonstration of {{offering.name}}.

Parts 6 and 7 introduce several more technical aspects of {{offering.name}} including using the PowerVS IBM Cloud command line interface (CLI) plugin.

Finally, in Part 8, learn where to find additional resources about {{offering.name}}, and how to complete the {{learningplan.name}} badge.

Before jumping to part 1, please read the guidance below. Reading and understanding the information will save time while completing the steps in this guide.

## Helpful tips for using this demonstration guide and environment

The {{guide.name}} is organized in parts and sub-parts or chapters. Most chapters contain numbered steps, which are actions to be performed.

Throughout the guide, images are used as examples of the IBM Cloud Portal, IBM Cloud Shell, and PowerVS instance consoles.

!!! warning
    The IBM Cloud Portal and {{offering.name}} changes on a regular basis and may differ from the images captured in this guide.

In some images, the following styles of highlighting are utilized:

- Action highlight box: Illustrates where to click, enter, or select an item:

![](_attachments/ClickActionRectangle.png)

- Path/explore highlight box: Illustrates one of two things:

    - the path to follow to get to a specific location in the user interface
    - areas to explore

![](_attachments/PathExploreHighlight.png)

- Copy to clipboard box: The text is copied to the clipboard. Click the copy icon (highlighted below) and then paste using the operating systems paste function, for example, entering ++ctrl++**+v**, ++cmd++**+v**, or right click and select paste.

![](_attachments/Usage-Clipboard.png)

Additionally, there are several "click-thru" demonstrations. Links to click-thru demonstrations will open in a new browser window or tab with a screen similar to the image below.

![](_attachments/ClickThruStartPage.png)

Click the play button ![](_attachments/ClickThruPlayButton.png) in the middle of the screen to start the demo. Then, simply follow the steps in the demonstration guide. If unsure where to click, click anywhere on the screen and a highlight box will appear showing where to click next.

**In this demonstration environment, full access to the IBM Cloud account is NOT provided.** User identifications (IDs) will be restricted to specific capabilities. Permission to create or modify PowerVS service instances, virtual machines (instances), networks, images, etc. is not provided.

!!! warning
    Attempting to perform an action without the appropriate permissions will result in an error message like the one below. This is not an issue with the IBM Cloud or PowerVS, rather a restriction of the demo environment and the permissions assigned to users.

    ![](_attachments/ErrorMessage.png)

## Acronyms

The following acronyms are used throughout this demonstration guide:

    - Application programming interfaces (APIs)
    - Classless inter-domain routing (CIDR)
    - Control (ctrl) - The control key on keyboard
    - Command (cmd) - The command key on keyboard
    - Disaster Recovery (DR)
    - Gigabyte (GB)
    - High Availability (HA)
    - IBM Cloud Object Storage (COS)
    - IBM Power Systems Virtual Server (PowerVS)
    - IBM Technology Zone (TechZone)
    - Infrastructure as a Service (IaaS)
    - Input/output operations per second (IOPs)
    - Internet Protocol (IP)
    - Operating System (OS)
    - Random access memory (RAM)
    - Secure Socket Shell (SSH)
    - User identification (ID)
    - Virtual Machine (VM)

It is now time to proceed to Part 1, an overview of {{offering.name}}.
