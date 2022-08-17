Accessing a PowerVS instance will depending on several factors, including the operating system the instance is running and the network connectivity available. Remote login tools like Secure Socket Shell (SSH), telnet, and other terminal emulators can be used to access instances. PowerVS also provides access to running instances using a web-based console tool. In most cases, clients will deploy PowerVS instances using a secured network like Direct Link or Virtual Private Network (VPN). Learn more about the PowerVS network connectivity options <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-about-virtual-server#public-private-networks" target="_blank">here</a>.

For this exercise, the IBM Cloud Shell will be used so no additional software is required. IBM Cloud Shell gives users complete control of their cloud resources, applications and infrastructure, from any web browser. IBM Cloud Shell provides pre-authenticated access to the latest tools and programming languages for cloud-based development, deployment and management of services and applications — all in a secure shell. IBM Cloud Shell is instantly accessible from the IBM Cloud portal.

To quickly demonstrate the value of PowerVS, this demonstration environment and all running instances are provisioned with a public, Internet facing network interface.

Follow the steps below to log in to a running PowerVS instance using the IBM Cloud Shell and SSH. You can learn more about SSH and SSH keys <a href="https://en.wikipedia.org/wiki/Secure_Shell" target="_blank">here</a>.

!!! important
    To complete this exercise, you will need the user identification (ID) and the SSH private key provided in your IBM Technology Zone reservation welcome letter. This information is also available on the IBM Technology Zone website under the **My Library** and **My Reservations** menu.

1. If not already opened, open the IBM Cloud Portal: <a href="https://cloud.ibm.com/" target="_blank">https://cloud.ibm.com/</a> and authenticate with your IBM Cloud credentials.
2. Change from your IBM Cloud account to the **{{account}}** account.

[](_attachments/SwitchAccounts-final.gif)

!!! tip
    If your browser window is narrow, you may see this icon: ![](_attachments/SwitchAccountsIcon.png) instead of the current account name as shown in the screen capture above.

3. Click the IBM Cloud Shell icon ![](_attachments/CloudShellIcon.png).

[](_attachments/StartCloudShell.png)

The next steps are performed in using the IBM Cloud Shell window that was opened. First, you need to create a SSH private key file using the key provided in your IBM Technology Zone's reservation welcome e-mail.

Remember, to avoid typographical errors **copy** the command line using the ![](_attachments/CopyToClipboard.png) icon when it is available. Then paste the contents into the IBM Cloud Shell using ++ctrl++**+v**, ++cmd++**+v**, or right click and select paste at the prompt in the IBM Cloud Shell.

4. Copy your public key from the TechZone welcome e-mail or from the reservation information on the TechZone web site. Use your operating system's copy to clipboard capabilities (e.g. highlight the text starting with **ssh-rsa** to the end of the key and then use ++ctrl++**+c** or ++cmd++**+c**.)

NEED IMAGE HERE!!!!!!!!!!

5. In the IBM Cloud Shell window, enter the following string, but do not hit enter.

```echo "```

[](_attachments/echo1.png)

6. Paste your public key into the IBM Cloud Shell window using either ++ctrl++**+v** or ++cmd++**+v**.



7. In the IBM Cloud Shell window, after the text you just pasted, enter the following and press enter.

```
" > mykey
```

[](_attachments/echo2.png)

8. To verify, run the following command in the IBM Cloud Shell.

```
cat mykey
```

The output of the above command should be the same as the private key in your TechZone welcome letter and reservation details.

9. Change the access permissions of the key file.

```
chmod 600 mykey
```

Note, this is required to allow the next commands to work properly. There is not output when this command is executed.

9. Using the value of the **UserName** field found in your TechZone reservation, use ssh to log into the {{aixServer1.name}} instance. You must substitute your UserName in place of the string **UserName** in the command below:

```ssh -i mykey **UserName**@{{aixServer1.publicIP}}```

[](_attachments/sshServer1.png)

10. Try running a few OS level commands:

```
ls -laR
```

```
who
```

```
ps -ef
```

All of these commands are basic OS commands. If you are familiar with AIX or Linux, feel free to try other things out on the instance. Note, your user ID has limited permissions on all PowerVS instances in this shared environment. Administrative access is not provided.

11. Close the SSH connection by running the **exit** command.

```
exit
```

To explore further, use the following public IP addresses to access the other PowerVM instances:

| Instance name | Instance public IP address |
| ------------- | -------------------------- |
| {{aixServer1.name}} | {{aixServer1.publicIP}} |
| {{aixServer2.name}} | {{aixServer2.publicIP}} |
| {{rhServer1.name}} | {{rhServer1.publicIP}} |
| {{rhServer2.name}} | {{rhServer2.publicIP}} |


Use the ```ssh -i mykey UserName@IPaddress``` command to connect to the other servers. Be sure to replace **UserName** with the **UserName** field found in your TechZone reservation, and **IPaddress** with the instance's public IP address from the table above.

That concludes the required Parts of the demonstration script for IBM and Business Partners Sales. You are encouraged to complete Parts 6 and 7, but at this time you may skip to Part 8 for a few next steps.

Technical sellers proceed to the next Part and explore PowerVS server placement groups.
