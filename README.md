# Data Center Modernization Using Cisco ACI and Red Hat Ansible Automation Platform


## General Resources
* Ansible Meetups: https://www.meetup.com/topics/ansible/
* Cisco DevNet Code Exchange: https://developer.cisco.com/codeexchange
* Red Hat Ansible Automation: https://www.ansible.com/
* Ansible Galaxy: https://galaxy.ansible.com/

## Demo Resources
* Instructions: https://github.com/johnwelby1965/cisco_aci/
* Demo video on Vimeo (without audio ): https://vimeo.com/383756669
* DevNet: https://developer.cisco.com
* DevNet ACI Sandbox: https://developer.cisco.com/site/aci/
* Red Hat Product Demo System: https://rhpds.redhat.com
* Cisco dCloud: https://dCloud.cisco.com

## Red Hat Training Resources
* OpenShift training:  https://learn.openshift.com
* Red Hat Partner Site: https://redhat.com/en/partners
* Red Hat Training: https://www.redhat.com/en/services/training/all-courses-exams

## AnsibleFest
* AnsibleFest: https://www.ansible.com/ansiblefest
* Videos: https://www.ansible.com/resources/videos/ansiblefest
* Automation at scale: Building a global community: https://www.ansible.com/chris-festa-keynote-talk

## Ansible ACI modules
* List of Network Modules: https://docs.ansible.com/ansible/latest/modules/list_of_network_modules.html#aci
* ACI Guide: https://docs.ansible.com/ansible/latest/scenario_guides/guide_aci.html

## Directory Structure
The `demos` directory is divided into two sections, `engine` and `tower`.  For this demo was originally created for the `engine` section. The goal of the demo is that every participant will have a basic understanding on how to execute the sample playbook from their laptop, using Ansible Engine (i.e. command line)  to configure the ACI demo fabric in the DevNet Sandbox.

```bash

.
├── CODE_OF_CONDUCT.md
├── CONTRIBUTING.md
├── demos
│   ├── engine
│   └── tower
├── FAQ.md
├── LICENSE
├── NOTICE
└── README.md
```
The `tower` section includes a sample Vagrantfile which builds a VM and installs **awx** - the official command-line client for AWX and Red Hat Ansible Tower.  

## Author


