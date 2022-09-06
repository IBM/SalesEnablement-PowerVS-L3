![type:video](./_videos/IBM Power Systems Virtual Server Level 3 - Part 7.mp4)
!!! tip "Ways to Watch"
    In addition to the embedded video, IBMers and Business Partners can also <a href="https://ibm.seismic.com/Link/Content/DCTPMgcFR4p688fH2Pb6g4VjcT3G" target="_blank">download the recording from Seismic</a>.

IBM Power Systems Virtual Server provides **command line interfaces (CLI)** as a plugin to the IBM Cloud CLI. The PowerVS CLIs provide system administrators the ability to programmatically manage their PowerVS environment without having to use the IBM Cloud Portal.

In this chapter, explore a variety of CLI instructions that can be issued via the IBM Cloud Shell portal (or any SSH connection) for administration of a PowerVS instance. Topics include:

- Inspection of all PowerVS services provisioned
- Setting the service target of the IBM Cloud Shell to the instance ID of the PowerVS environment
- Setting the target of future PowerVS plugin commands to an environment variable
- Inspection of the four virtual machines (VMs) provisioned as part of the PowerVS environment, including AIX and RHEL
- Restarting a virtual machine programmatically
- Generating an SSH private key for managing the PowerVS environment

There are hundreds of potential CLI instructions which can be issued — our goal is not to be exhaustive and not go into every command in detail, but rather provide a representative sampling of jobs that can be performed programmatically via the CLI. Using this foundational knowledge, more tailored demonstrations can be crafted for specific client needs.
