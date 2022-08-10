Accessing PowerVS instances will depending on several factors, including the operating system the instances is running and the network connectivity available. Remote login tools like Secure Socket Shell (SSH), telnet, and other terminal emulators can be used to access instances. Note these tools will vary by operating system. PowerVS also provides access to running instances using a web-based console tool. In most cases, clients will deploy PowerVS instances using a secured network like Direct Link or Virtual Private Network (VPN). Learn more about the PowerVS network connectivity options <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-about-virtual-server#public-private-networks" target="_blank">here</a>.

For this exercise, the IBM Cloud Shell will be used. IBM Cloud Shell gives users complete control of their cloud resources, applications and infrastructure, from any web browser. IBM Cloud Shell provides pre-authenticated access to the latest tools and programming languages for cloud-based development, deployment and management of services and applications — all in a secure shell. IBM Cloud Shell is instantly accessible from the IBM Cloud portal.

To quickly demonstrate the value of PowerVS, this demonstration environment and all running instances are provisioned with a public, Internet facing network interface.

Follow the steps below to login to a running PowerVS instance using the IBM Cloud Shell and SSH. You can learn more about SSH and SSH keys <a href="https://en.wikipedia.org/wiki/Secure_Shell" target="_blank">here</a>.

1. Open a browser window/tab to the IBM Cloud Portal: cloud.ibm.command
2. Switch to the {{account}} Cloud account.
3. Click the IBM Cloud Shell icon ![](_attachments/CloudShellIcon.png)

The next steps are performed in using the IBM Cloud Shell window that was opened. First, you need to create a SSH public key file using the key provided in your IBM Technolgoy Zone's reservation welcome e-mail. The public key will look like:

ssh-rsa abunchofjumbleduplettersandnumbersandspecialcharaters/thatarerandomandhardtoundesrtandbut!!provideasecuremeansofconenctingtoopeartingsytesmsthatsupportssh/andpossiblyotherprotocols123478thereisalsoaprivatekeyassociatedwithpublickey+yourprivatekeywaspacedontherunniningsinstanceaspartoftheibmtehnolgyzoneprovisioningprocess+thiswillallowyoutoaccesstheinstanceinrunninginthepowervsservice= ibmtechzone@ibmtechzone.ibm.com

A private key was also provisioned at the same time and copied to the running PowerVS instances.

4. Copy your public key from the TechZone welcome e-mail using your operating system's copy to clipboard capabilities (e.g. highlight the text starting with **ssh-rsa** to the end of the key and then use ++ctrl++**+c** or ++cmd++**+c**.)
5. In the IBM Cloud Shell window, enter the following string, but do not hit enter.

cat "

6. Paste your public key into the IBM Cloud Shell window using either ++ctrl++**+v** or ++cmd++**+v**.
7. In the IBM Cloud Shell window, after the text you just pasted, enter the following and press enter:

```" > mykey```

8. To verify, run the following command in the IBM Cloud Shell.

```cat mykey```

Sample output:

```
> cat mykey
ssh-rsa abunchofjumbleduplettersandnumbersandspecialcharaters/thatarerandomandhardtoundesrtandbut!!provideasecuremeansofconenctingtoopeartingsytesmsthatsupportssh/andpossiblyotherprotocols123478thereisalsoaprivatekeyassociatedwithpublickey+yourprivatekeywaspacedontherunniningsinstanceaspartoftheibmtehnolgyzoneprovisioningprocess+thiswillallowyoutoaccesstheinstanceinrunninginthepowervsservice= ibmtechzone@ibmtechzone.ibm.com
```

9. Using the value of the **UserName** field found in your TechZone reservation, use ssh to log into the {{aixServer1.name}} instance. You must substitute your UserName in place of the string **UserName** in the command below:

ssh -i mykey **UserName**@{{aixServer1.publicIP}}

sample output:


10. Try running a few OS commands:

```ls -laR```

Sample output:

```who```

Sample output:

To explore further, use the following public IP addresses to access the other instances:

table
{{aixServer2.name}} {{aixServer2.publicIP}}
{{rhServer1.name}} {{rhServer1.publicIP}}
{{rhServer2.name}} {{rhServer2.publicIP}}

Use the ```ssh -i mykey **UserName**@**IP address**``` command to connect to the other servers. Be sure to replace **UserName** with the **UserName field found in your TechZone reservation.

For IBM and Business Partners wishing to complete the {{learningplan.name}} for Sales, please proceed to Part 9. ***ADD internal link to Part 9*** For technical sellers please proceed to the next Part and explore PowerVS server placement groups.
