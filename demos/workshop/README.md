Student Resources
-----------------

To make these demonstrations a valuable training experience you will need some software on the personal computer you use for your day-to-day activities. 


## User Accounts
There are several user accounts required to participate in the training. You may already have one or more of these accounts.

### WWT Digital Platform
The ATC is a collaborative ecosystem to design, build, educate, demonstrate and deploy innovative technology products and integrated architectural solutions for World Wide Technology customers.

Create an account on https://www.wwt.com/ using your business email address and complete your profile settings at https://www.wwt.com/my-account#MyProfile. 

### Version Control 
Both GitLab (GitLab.com) and GitHub (GitHub.com) provide Git Version Control repository management services over the Internet. If you do not already have an account on both services, sign up for both, ideally using the same handle (username) for your account on each service. For this training, the free account tier is all you need.

### Cisco DevNet
Cisco DevNet is Cisco's developer program to help IT professionals develop integrations with Cisco products. It also hosts learning tracts and sandbox environments. Join DevNet for free at https://developer.cisco.com/

## Install Software
Hands on experience (construction) is a key to learning a new topic. Because our 'hands are one keyboards' most of the day, the students of this training will benefit the most if they learn automation with their own version control accounts and development environment on their laptop. 

In addition to a computer running the macOS, Linux, and Windows 10 operating systems, the following software is required for this training environment.

### Visual Studio Code
VS Code is a free code editor, which runs on the aforementioned operating systems. Download and install it at https://code.visualstudio.com/download. 

While there are a number of suitable editors available for free or for a nonimal license fee, this training makes use fo the VS Code [Remote Development using SSH](https://code.visualstudio.com/docs/remote/ssh). The Visual Studio Code Remote - SSH extension allows you to open a remote folder on any remote machine, (virtual machine, or container) and terminal window with a running SSH server. 

Install the [Visual Studio Code Remote Development Extension Pack](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack).

As part of the training environment, a remote SSH host will be set up which includes a version of Ansible Engine and other necessary software.

There are a number of on-line tutorials to assist with setting up your laptop. See [Remote Development tutorials](https://code.visualstudio.com/docs/remote/remote-tutorials).

#### SSH client
Your laptop will need a supported SSH client. Refer to [Installing a supported SSH client]https://code.visualstudio.com/docs/remote/troubleshooting#_installing-a-supported-ssh-client).

##### macOS
For macOS, you should not need to install an additional ssh client. 

##### Windows
For Windows, installing Git for Windows is recommended. Refer to https://git-scm.com/download/win. 

Once installed, determine the absolute path of the `ssh` executable. It may be at location `c:\Program Files\Git\usr\bin\ssh.exe`.

Launch Visual Studio Code, in the lower left of the window, right click the gear icon and select `Settings`.  

In the search settings dialog box, type `remote.ssh.path`. In the resulting dialog box, enter the absolute path of your ssh client. For example ` C:/'Program Files'/Git/usr/bin/ssh.exe`. Note the back slash has been substituted by a forward slash and single quotes were added to bound the directory with embedded space. 

If you select the 'gear' icon next to the `remote.ssh.path` select `Copy Settings as JSON`. The copy buffer will contain:

```
"remote.SSH.path": " C:/\"Program Files\"/Git/usr/bin/ssh.exe"
```

Close the Settings window.

#### Remote Explorer
Prior to class you will be provided access to a remote Linux instance. To configure, select the 'Remote Explorer' icon on the left side of the window. Select the 'gear' icon to create a  'custom configuration file'. Provide an absolute path to the configuration file. For example: `C:\Users\kingjoe\.ssh\config`.

When selecting the '+' icon next to the SSH TARGETS, you will be prompted for an 'SSH Connection Command', enter `ssh training@example.net` an press enter to confirm your input.

In the SSH configuration file you will be given the connection information for the remote SSH host. The file entries will look similar to:
```
Host ec2-54-80-193-109.compute-1.amazonaws.com
  User ubuntu
  HostName ec2-54-80-193-109.compute-1.amazonaws.com
  IdentityFile ~/.ssh/devnet_sdk_demo.pem
  ```

You will be provided a SSH private key file (PEM) for the training class, along with the values to specify for the user, host and hostname.

After saving the configuration file, the new host will appear in the SSH TARGETS window. Verify the configuration by '+ window' icon to connect to the host in a new window.

## Author
joel.king@wwt.com GitHub/GitLab: @joelwking