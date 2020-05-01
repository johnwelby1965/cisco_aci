README
------

This directory contains playbooks and configuration files to build an Ansible Tower machine (in AWs EC2) for customer training.

The directory structure is as shown:
```
.
├── playbooks
│   ├── files
│   ├── host_vars
│   ├── install_ansible.yml
│   ├── inventory.yml
│   ├── launch_instance.yml
│   ├── templates
│   │   └── single_node_inventory.ini.j2
```

Playbook `lanuch_instance.yml` will create EC2 instances of the correct size and OS.

Playbook `install_ansible.yml` will install Ansible Engine and Tower as well as Content Collections for the training class.


TODO: THIS IS A WORK IN PROCESS

### Author
Joel King - joel.king@wwt.com