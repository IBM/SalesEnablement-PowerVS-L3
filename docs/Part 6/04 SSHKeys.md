??? Important "Important information about the demonstration environment!"
    In this demonstration environment, full access to the IBM Cloud account is NOT provided. In the steps that follow, you will NOT have the ability to create, edit, or delete resources in the IBM Technology Zone environment. Steps are provided to get familiarity with different PowerVS feature(s).
    
Secure Shell also known as Secure Socket Shell (SSH) is a network protocol that is used to securely control access to computers over an unsecure network. In simple words, SSH is a secure way to remotely access and manage computers, encrypting your data to keep it safe from eavesdroppers. It's like having a private, encrypted chat with another computer.

Recall from the click through demonstrations to provision a virtual server instance, the `{{powerVS.sshKey}}` was specified as the SSH key for the server. The {{powerVS.sshKey}} was added to the workspace before those instances were created.

!!! Note 

    It is unlikely you would demonstrate this aspect of the PowerVS offering during a client demonstration unless you had a very targeted and technical audience. It is added here to provide you a complete understanding of the offering and what is required to provision and manage a PowerVS environment.

1. Click the **SSH keys** (**A**) option in the side menu under the {{powerVS.serviceInstanceName}} workspace.

    ![image](https://github.com/user-attachments/assets/182de330-fb6c-4d54-b21d-54e88e0c9215)

2. Click **Create SSH key** (**A**).

    ![image](https://github.com/user-attachments/assets/3a04d4fe-7cd9-42ca-896a-ec5918b402d3)

    The use of the term **Create** is a misnomer. This step provides the ability to upload the public part of an existing SSH key into the PowerVS workspace. The key can then be pushed to VSIs provisioned in the environment and used to access those VSIs.   

3. In the **New SSH key** dialog, the user specifies a **Key name** (**A**) and then pastes the public key part of the SSH key previously created, in the **Public key** (**B**) textbox. The <a href="https://cloud.ibm.com/docs/power-iaas?topic=power-iaas-create-vm#ssh-setup" target="_blank">**How do I get a public key**</a> link provides information on how to generate a key on a Linux-based system.
   ![image](https://github.com/user-attachments/assets/38d6a72d-2ad0-4736-9a38-d902eb057d64)

5. In this demonstration environment, full access to the IBM Cloud account is NOT provided. Any attempt to complete an action, will result in an error. Click **Cancel** (**A**) to return back to the SSH keys page view.
   ![image](https://github.com/user-attachments/assets/fbadb48f-f915-4b4d-b539-adc759889ba6)


After the key is loaded into the workspace, it appears in the list of available keys to use when a new PowerVS VSI is provisioned. It is the client's responsibility to securely manage their keys. If a key is compromised, a new key should be created and added to the existing VSIs. The old key should be removed from the VSIs and the PowerVS workspace.

Learn more about SSH <a href="https://en.wikipedia.org/wiki/Secure_Shell" target="_blank">here</a>.
