README_WWT_Roles
----------------


Clone the demo repo
```bash

administrator@flint:~/ansible$ git clone https://gitlab.com/joelwking/cisco_dc_community_of_interest.git
```

Enter the directory

```bash
cd ~/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/
```
Install the WWT roles
```bash
ansible-galaxy install -r ./roles/requirements.yml -p ./roles/
```

Point to the configuration file in the playbook directory
```bash
unset ANSIBLE_CONFIG
export ANSIBLE_CONFIG="$HOME/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/ansible.cfg"
```

Install Content Collections: Use Ansible Galaxy to download and install the Cisco ACI content connection. 

```bash
ansible-galaxy collection install cisco.aci
ansible-galaxy collection install joelwking.mongodb
```

Verify you have installed the collections
```bash
ansible-doc cisco.aci.aci_tenant
ansible-doc joelwking.mongodb.mongodb_iq
```

TODO: Install pre-reqs

```bash
cd library
wget https://raw.githubusercontent.com/joelwking/csv-source-of-truth/master/library/csv_to_facts.py
wget https://raw.githubusercontent.com/joelwking/mongodb/master/plugins/modules/mongodb_iq.py
```

```bash
cd $HOME/ansible/cisco_dc_community_of_interest/demos/engine/playbooks/
ansible-playbook ansible-playbook ./sample_wwt_roles.yml -v -i inventory.yml --e 'bootstrap=sample123 apic_hostname=sandboxapicdc.cisco.com apic_password=foobar'
