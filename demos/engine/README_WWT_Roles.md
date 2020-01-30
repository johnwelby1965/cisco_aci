README_WWT_Roles
----------------

To incorporate a more advanced topic to the basic sample playbook and environment, we have updated this section to include the use of several Ansible roles developed at World Wide Technology (WWT) for managing input data and authentication with the APIC. 

The `sample.yml` playbook has enhanced to incorporate roles. The revised playbook is named `sample_wwt_roles.yml`. We also have include additional input files in the `/files` directory. The ACI configuration in for the `sample.yml` playbook was defined in `/host_vars`. In this example, we use a combination of YAML and CSV files in the `/files` directory.

Additionally, a `/library` and `/roles` directory has been added. The `/roles` directory contains a `requirements.yml` file, used to install the Ansible roles developed by WWT for managing the ACI fabric.

**NOTE:** These WWT developed roles currently are hosted on an internal WWT GitHub server. VPN access to the WWT Advanced Technology Center (ATC) are required to install the roles on your Ansible control node (your laptop).

This example makes use of WWT developed Ansible modules, which are public. Refer to the following:

> Use Microsoft Excel (and CSV files) as a Source of Truth for Ansible playbooks
> https://developer.cisco.com/codeexchange/github/repo/joelwking/csv-source-of-truth

> Ansible Collection for MongoDB 
> https://galaxy.ansible.com/joelwking/mongodb

## Steps to prepare your Ansible control node


Clone the demo repository. In this example, we clone to our Linux VM directory `~/ansible`.
```bash

git clone https://gitlab.com/joelwking/cisco_dc_community_of_interest.git
```

Enter the playbook directory.

```bash
cd ~/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/
```

Install the WWT roles. **NOTE:** accessing these roles require a VPN connection to the WWT ATC network
```bash
ansible-galaxy install -r ./roles/requirements.yml -p ./roles/
```
The roles are installed to the subdirectory `roles/` within the `playbooks/` directory.

Configure your environment to specify the configuration file in the `playbook/` directory.
```bash
unset ANSIBLE_CONFIG
export ANSIBLE_CONFIG="$HOME/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/ansible.cfg"
```

Install Ansible Content Collections: Use Ansible Galaxy to download and install the content connections. 

```bash
ansible-galaxy collection install cisco.aci
ansible-galaxy collection install joelwking.mongodb
```

Verify you have installed the collections, review the module documentation.
```bash
ansible-doc cisco.aci.aci_tenant
ansible-doc joelwking.mongodb.mongodb_iq
```

**NOTE:** TODO: install these local Ansible modules in the `library/` directory

```bash
cd ~/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/library
wget https://raw.githubusercontent.com/joelwking/csv-source-of-truth/master/library/csv_to_facts.py
wget https://raw.githubusercontent.com/joelwking/mongodb/master/plugins/modules/mongodb_iq.py
```

Execute the playbook. In this example, the target APIC hostname and password is specified on the command line, as well as the bootstrap YAML file.

```bash
cd $HOME/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/
ansible-playbook ./sample_wwt_roles.yml -v -i inventory.yml --e 'bootstrap=sample123 apic_hostname=sandboxapicdc.cisco.com apic_password=foobar'
```

## Author
joel.king@wwt.com GitHub/GitLab @joelwking