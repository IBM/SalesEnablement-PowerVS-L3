![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 4.mp4)
!!! tip "Ways to Watch"
    In addition to the imbedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DCqPC8JCP8gmFGmHFj6F96XBR8hP" target="_blank">download the recording from Seismic</a>.

Via the IBM Cloud Portal, clients can control and manage many aspects of their PowerVS deployment, either graphically using the Web interface or programmatically via APIs. As you'll explore in this section, the programmatic API endpoints provide the same capabilities— and more —from what you are able to manage via the IBM Cloud web interface. Via APIs, clients are able to:

- Perform an OS shutdown
- Perform an immediate shutdown (without killing processes)
- Restart
- Reset
- Open a console (terminal) to the instance
- Delete the instance
- Capture and export an image of the instance

!!! tip "NOTE"
    The API endpoint options may vary depending on the operating system of the PowerVS instance.

In addition to exploring the ways in which you can programmatically interface with your PowerVS instance, we'll also examine how to modify the instance after it has been deployed. Depending on core type, operating system, and so on, a client can:

- Change VM pinning (soft, hard)
- Change core type (Shared uncapped, Shared capped, Dedicated)
- Change number of cores
- Change amount of RAM
- Change placement group
- It is also possible to attach and detach storage volumes (or attach an instance to an existing network)

Given that the IBM Technology Zone environment used for this course is a shared service for multiple students and geographies, safeguards have been put in place ahead of time to ensure that the environment remains stable. As such, modifications you attempt to make to these instance variables and configurations will not impact the live environment.
