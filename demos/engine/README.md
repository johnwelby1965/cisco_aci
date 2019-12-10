Instructions
------------

Steps to execute the Ansible engine demo.

## Create VM

You will need the Vagrantfile from `vagrant/Vagrantfile` on your laptop. Your laptop also needs Oracle VM Virtual Box and HashiCorp Vagrant. If you also have Git installed on your laptop, you can download the Vagrantfile using `git clone https://gitlab.com/joelwking/cisco_dc_community_of_interest.git` to download this repository.  Or you can copy and paste `https://gitlab.com/joelwking/cisco_dc_community_of_interest/raw/master/demos/engine/vagrant/Vagrantfile` to a directory as filename `Vagrantfile`.

From that directory issue `vagrant up` to instanciate the VM. 

It will take a few minutes to build the environment, when complete, connect to the VM using `vagrant ssh`.

## Configure VM
From the home directory of the VM, clone the repository to download the sample playbook, Ansible configuration file, inventory and configuration data.

```bash
$ git clone https://gitlab.com/joelwking/cisco_dc_community_of_interest.git
```

### Install Content Collections

Use Ansible Galaxy to download and install the Cisco ACI content connection. 

```bash
$ ansible-galaxy collection install cisco.aci

```
By default the collection is installed in `/home/vagrant/.ansible/collections/ansible_collections/`. While not needed for this demo, you can download and install additional collections. For example, to download and install a WWT developed collection and role, issue the command 
```
$ ansible-galaxy collection install joelwking.mongodb
```
To view and search for collections and roles on Ansible Galaxy, logon to `galaxy.ansible.com`.

### Install Ansible Roles
While this demonstration does not use a role, you can also install roles in a similar manner to collections. To install the Cisco ACI role, issue:

```bash
$ ansible-galaxy install datacenter.aci-model
```
By default, the role is installed in `/home/vagrant/.ansible/roles/datacenter.aci-model`.  You can enter that directory and examine the contents of the ACI role.

### Ansible Configuration file
This demonstration has modified the default Ansible configuration file. To use the modified version, set the appropriate environmental variable to point to the modified `ansible.cfg` file.

```bash
export ANSIBLE_CONFIG=$HOME/cisco_dc_community_of_interest/demos/engine/playbooks/ansible.cfg
```

### Execute the playbook
Enter the playbook directory.

```bash
$ cd cisco_dc_community_of_interest/demos/engine/playbooks
```

In the video demonstration, we have encrypted the `passwords.yml` file to avoid exposing the password of the DevNet Sandbox APIC. You can obtain the credentials for the DevNet Sandbox at [developer.cisco.com/site/aci/](https://developer.cisco.com/site/aci/).

Rename or remove the existing `files/passwords.yml` and create a local copy in the form of:

> ---
> #
> #  Substitute 'cisco123,' with the password for the DevNet Sandbox APIC
> #
>  apic_password: cisco123,

Execute the sample playbook. 

```bash
$ ansible-playbook ./sample.yml -v -i inventory.yml -e 'apic_hostname=sandboxapicdc.cisco.com'
```

Note, in the video demonstration, the Vault password was provided to decrypt the credential. 
```bash
$ ansible-playbook ./sample.yml -v -i inventory.yml --ask-vault -e 'apic_hostname=sandboxapicdc.cisco.com'
```

### Verification
Log on [sandboxapicdc.cisco.com](https://sandboxapicdc.cisco.com) using the credentials from [developer.cisco.com/site/aci/](https://developer.cisco.com/site/aci/) and verify the configuration changes.

The configuration variables are stored in these three files:

> `inventory.yml`
> `host_vars/sandboxapicdc.cisco.com`
> `files/passwords.yml`

You can review, append, modify these files.

## Author
joel.king@wwt.com GitHub/GitLab @joelwking