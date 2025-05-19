IBM Power Systems Virtual Server (PowerVS) provides **command-line interfaces (CLI)** as a plug-in to the IBM Cloud CLI. The PowerVS CLIs provide system administrators the ability to manage their PowerVS environment through command-line and scripting. Usually a seller would not demonstrate this capability unless they were doing so to a technical audience, like system administrators that are responsible for provisioning PowerVS resources.

PowerVS provides application programming interfaces (APIs) to automate these actions within an application. The PowerVS APIs are not covered in this demonstration guide. Learn more about the PowerVS APIs <a href="https://cloud.ibm.com/apidocs/power-cloud" target="_blank">here</a>.

PowerVS has published a Terraform provider to allow administrators to use infrastructure as code (IaC) to automate the provisioning of PowerVS resources. The Terraform provider is outside of the scope of this demonstration guide. Learn more about the PowerVS provider <a href="https://registry.terraform.io/providers/IBM-Cloud/ibm/latest/docs/resources/pi_capture" target="_blank">here</a>.

Next, explore various CLI instructions that can be issued by using the IBM Cloud Shell to administer a PowerVS instance. Topics include:

- Inspecting all PowerVS services provisioned
- Setting the service target of the IBM Cloud Shell to the instance ID of the PowerVS environment
- Setting the target of future PowerVS plug-in commands to an environment variable
- Inspecting the four virtual machines (VMs) provisioned as part of the PowerVS environment, including AIX and RHEL
- Restarting a virtual machine programmatically
- Generating an SSH private key for managing the PowerVS environment

Hundreds of CLI instructions are available. The goal is not to be exhaustive and not go into every command in detail, but rather to provide a representative sampling of jobs that can be run programmatically with the CLIs. Using this foundational knowledge, more tailored demonstrations can be crafted for specific client needs.
