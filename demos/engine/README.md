README.md
---------


Instructions
------------


Download the Vagrantfile to your laptop

vagrant up

vagrant ssh

$ git clone https://gitlab.com/joelwking/cisco_dc_community_of_interest.git

$ ansible-galaxy collection install joelwking.mongodb
$ ansible-galaxy collection install cisco.aci
#
# /home/vagrant/.ansible/collections/ansible_collections/
#
# Install role
#
$ ansible-galaxy install datacenter.aci-model
# /home/vagrant/.ansible/roles/datacenter.aci-model


$ cd cisco_dc_community_of_interest/demos/engine/playbooks
$ ansible-playbook sample.yml


# point to the ansible.cfg file provided in this demo

export ANSIBLE_CONFIG=$HOME/cisco_dc_community_of_interest/demos/engine/playbooks/ansible.cfg