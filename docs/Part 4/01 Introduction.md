![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 4.mp4)
!!! tip "Ways to Watch"
    In addition to the embedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DCqPC8JCP8gmFGmHFj6F96XBR8hP" target="_blank">download the recording from Seismic</a>.

Via the IBM Cloud Portal, clients can control and manage many aspects of their provisioned PowerVS instances. Users are able to:

- Perform an OS shutdown
- Perform an immediate shutdown (without killing processes)
- Restart
- Reset
- Open a console (terminal) to the instance
- Delete the instance
- Capture and export an image of the instance

!!! note
    The options may vary depending on the operating system of the PowerVS instance.

In addition to exploring the ways to manage a PowerVS instance, examine how to modify the instance after it has been deployed. Depending on core type, operating system, and so on, a user can:

- Change VM pinning (soft, hard)
- Change core type (Shared uncapped, Shared capped, Dedicated)
- Change number of cores
- Change amount of RAM
- Change placement group
- It is also possible to attach and detach storage volumes (or attach an instance to an existing network)

!!! Warning "You are using a shared environment."
    
    Given the IBM Technology Zone environment used for this course is a shared service for multiple students and geographies, safeguards have been put in place ahead of time to ensure that the environment remains stable. Attempts to modify variables and configurations will fail. 
