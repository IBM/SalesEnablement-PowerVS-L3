Now, explore several of the IBM Power Virtual Server (PowerVS) command-line interfaces (CLIs). 

For this exercise, the IBM Cloud Shell is used. IBM Cloud Shell gives users complete control of their cloud resources, applications, and infrastructure, from any web browser. IBM Cloud Shell provides pre-authenticated access to tools and programming languages for cloud-based development, deployment, and management of services and applications. IBM Cloud Shell is instantly accessible from the IBM Cloud portal. The IBM command-line interface (CLI) along with all the IBM Cloud CLI plug-ins are preinstalled in IBM Cloud Shell, including the PowerVS CLIs.

It is also possible to install the IBM Cloud CLIs and PowerVS CLI plug-in on other systems, like personal desktop and development servers. Learn more about installing the PowerVS CLI locally <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-power-iaas-cli-byb" target="_blank">here</a>.

To get started, first open the IBM Cloud Shell from the IBM Cloud portal:

1. Open the IBM Cloud Portal: <a href="https://cloud.ibm.com/" target="_blank">https://cloud.ibm.com/</a> and authenticate with your IBM Cloud credentials.
2. Change to the **{{account}}** account.

    ![](_attachments/SwitchAccounts-final.gif)

    !!! tip

        If the browser window is narrow, this icon: ![](_attachments/SwitchAccountsIcon.png) is seen instead of the current account name as shown in the preceding screen capture.

3. Click the IBM Cloud Shell icon ![](_attachments/CloudShellIcon.png).

    ![](_attachments/StartCloudShell-new.png)

The next steps are run in the IBM Cloud Shell window that was opened.

To avoid typographical errors **copy** the command line by using the ![](_attachments/CopyToClipboard.png) icon when it is available. Then paste the contents into the IBM Cloud Shell using keyboard shortcuts (operating system specific, for example, Ctrl-V for Windows OS), or right click in the IBM Cloud Shell and select Paste or "Paste as plain text" option.
   ![image](https://github.com/user-attachments/assets/5141d2d5-d679-4e11-9478-f913ac0ce731)


4. To display a concise list of all command-line options for the PowerVS plug-in, use the `pi` argument, which stands for power-iaas. This command provides a summary of available options and their functionalities. **Note** that `pi` is also referred to as a plug-in for the `ibmcloud` command.

    ```
    ibmcloud pi --help | more
    ```

    ??? tip "Tip for novice Linux users!"
        If you are not familiar with Linux commands, don't worry. The preceding command is two commands. The first is ```ibmcloud pi --help```. This command runs the **help** option of the PowerVS plug-in. The second command is ```more```. This command pauses the output being displayed. The **"|"** or **pipe** character takes the output from the first command and sends it as input to the second command. Search the internet for **Linux primer** to learn more about Linux commands.

5. Press the **space bar** to continue the output. Continue to press space bar several times to scroll through the complete output.

    Notice the last part of the message: **Use "pi [command] --help" for more information about a command**. Use this to get more help on individual PowerVS plug-in commands.

6. For example, to list detailed help on PowerVS images, use the `image` plug-in command.

    ```
    ibmcloud pi image --help
    ```

    ![image](https://github.com/user-attachments/assets/aae6a727-6a50-4505-acae-c5c71fd89104)

7. List all the PowerVS workspaces provisioned in the account.

    ```
    ibmcloud pi workspace ls
    ```

    !!! info "Sample output"        
        ![image](https://github.com/user-attachments/assets/e67e75a1-cf8e-41ea-b0dd-79d7092268e9)

    To view the PowerVS virtual server instances (VSI) in the workspace, the workspace target must first be set for the PowerVS plug-in.

9. Set the workspace target by using the instance ID of the workspace.

    ```
    workspaceID=`ibmcloud pi workspace ls 2>&1 | grep PowerVS-L3-2025 | awk '{print $NF}'`
    ```

    ??? tip "Tip for novice Linux users!"
   
        The command above did 3 actions...
   
         - **ibmcloud pi workspace ls 2>&1**: Lists all workspaces in IBM Cloud PowerVS and redirects both standard output and standard error to standard output.
         - **grep PowerVS-L3-2025**: Filters the output to include only lines containing the string PowerVS-L3-2025.
         - **awk '{print $NF}'**: Uses awk to print the last field of the filtered line.

         Finally, the output was stored in an environment variable called **workspaceID**. Why? Because no one wants to type `crn:v1:bluemix:public:power-iaas:wdc07:a/ba0e33c9056f470ca19de009747ec654:3e5453c4-6adb-46be-b25d-417adcec9dbb::` to run the next command.

11. Use the **$workspaceID** environment variable to set the target of future PowerVS plug-in commands to the `PowerVS-L3-2025` workspace (workspace used in this demonstration).

    ```
    ibmcloud pi workspace target $workspaceID
    ```

    !!! info "Sample output"
        ![image](https://github.com/user-attachments/assets/49421b17-b57c-4aae-9723-7912aaaac225)

12. List all the PowerVS instances provisioned in the targeted PowerVS workspace.

    ```
    ibmcloud pi instance list
    ```

    !!! info "Sample output"
        ![image](https://github.com/user-attachments/assets/2d590128-147a-48d9-a0d2-0fa815840cdf)

13. View the details of the **{{aixServer1.name}}** instance.

    ```
    ibmcloud pi instance get {{aixServer1.name}}
    ```

    !!! info "Sample output"
        ![image](https://github.com/user-attachments/assets/ac81bd36-0f30-4ccf-bba0-1ed42f5886c9)

Thus far, all of these commands are **read** commands. The PowerVS CLIs also support **create** and **update** commands, but remember user IDs have access restrictions in this shared environment. Try the **instance update** command and see what happens.

11. Recall that the Power environment consists of three PowerVM instances: {{aixServer1.name}}, {{linuxServer1.name}}, and {{ibmiServer1.name}}. Up until now, commands were issued against {{aixServer1.name}}. Given that the testing environment is primarily limited to read-only actions, try inspect one of the other VMs and determine what (if any) differences exist between the various instances.

    Issue the following command to the IBM Cloud Shell:
    ```
    ibmcloud pi instance get {{linuxServer1.name}}
    ```

    And then issue a second command:
    ```
    ibmcloud pi instance get {{ibmiServer1.name}}
    ```

    Notice that the two tables are nearly identical, but differences do exist due to the operating systems used on each VSI.

12. There are numerous reasons why one might want to generate an SSH private key for managing a PowerVS environment. In fact, that's exactly what the service's administrators did to authorize your access to the PowerVS instances. Recall when first connecting to the PowerVS virtual machines remotely through the IBM Cloud Shell using the Secure Socket Shell (SSH) command with the supplied key information, in [Part 5 - Accessing PowerVS instances](https://dpkshetty.github.io/TEST-SalesEnablement-PowerVS-L3/Part%205/02%20Access-instance/){target="_blank"} section.<br>

    The IBM Cloud Shell can generate an SSH key that can be used to configure password-less authentication (in other words, allowing users to authenticate without needing to also supply a password). Using IBM Cloud Shell, or any Linux environment, run the following ssh-keygen command:

    ```
    ssh-keygen -t ed25519 -N '' -f newKey
    ```

    ??? tip "Tip for novice Linux users!"

        The above command performs the following 4 actions...
    
         - **ssh-keygen**: Invokes the SSH key generation tool.
         - **-t ed25519**: Specifies the type of key to generate, in this case, an Ed25519 key, which is known for its high security and performance.
         - **-N ''**: Sets an empty passphrase for the key, meaning no passphrase is required to use the key.
         - **-f newKey**: Specifies the filename for the generated key, which will be newKey for the private key and newKey.pub for the public key.

         In summary, this command generates a new Ed25519 SSH key pair without a passphrase and saves the keys to files named newKey and newKey.pub.
        newKey is the private key and newKey.pub is the public key.

    After the SSH key pair is generated, it can be listed using the following command:

    ```
    ls -l
    ```

    !!! info "Sample output"
        ![image](https://github.com/user-attachments/assets/ef962a48-8db6-43f3-82fa-8f299cae8325)

    Next, use the PowerVS CLIs to create a key for the VSI by using an imported RSA public key. Specify the key pair that was generated as the source (newKey). Do so by using the following command. (Note: newKeyPOWER is the name of the CLI-generated key that is to be created; newKey is the SSH key generated earlier by using the IBM Cloud Shell).

    ```
    ibmcloud pi ssh-key create newKeyPOWER --key newKey
    ```

    !!! tip "SSH keys"
    
        The SSH key-pair generated and assigned by this step is specific to IBM Power Systems. These are distinct from ones generated previously by using the IBM Cloud Shell.

    !!! info "Sample output"
        ![image](https://github.com/user-attachments/assets/3b70ca06-1ba4-48e0-860c-5c97479fc6db)

    As expected, the instruction fails to run because of insufficient (locked down) permissions within this demonstration environment. Next, experiment with other IBM Power CLIs. 

14. For example, restart the **{{linuxServer1.name}}** instance, and see what happens.

    ```
    ibmcloud pi instance action -o soft-reboot {{linuxServer1.name}}
    ```
    
    !!! info "Sample output"    
        ![image](https://github.com/user-attachments/assets/891f1462-8faa-41fa-876c-4cd310b920b5)

        
There are over 100 PowerVS CLIs. Explore more CLIs by using the ITZ environment. Remember, use ```ibmcloud pi --help``` or ```ibmcloud pi <command> --help``` to get detailed information on a command's usage.

