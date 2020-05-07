Syllabus
--------


## Day 1

*Introduction* : 30 min. : **Training goals and introductions**

*Session 1* : 60 min. : **Introduction to Ansible for Networking**

In this lecture, we introduce the base components of Ansible and how it can be used for configuration management of network infrastructure, as well as compute, storage and cloud.

*Session 2* : 60 min. : **Automating ACI with Ansible**

In this lecture, we focus on the specific components of Ansible key to managing the Cisco ACI fabric. We examine Signature-based authentication in Ansible modules and best practices for using the ACI Content collections. 

*Session 3* : 15 min. : **Overview of the training environment, topology and goals**

This section highlights the components of the training environment, which includes cloud services GitHub / GitLab, Ansible Galaxy and the Cisco DevNet sandbox and the WWT Advanced Technology Center.

*Session 4* : 30 min. : **Interactive walk-through of setting up and connecting to resources**

In this session the students will verify connectivity to the lab resources from their laptop.

## Day 2

*Lab 1* : 60 min. : **Manage Tenants, VRFs and fabric policies**

This lab demonstrates how to manage (create, delete or update) Tenants, VRFs and fabric policies using a YAML input file. The student will clone this repository to their Ansible control node using the Visual Studio Code Remote Development Extension Pack, modify the input file, examine and execute the sample playbook provided. The sample playbook demonstrates the Cisco Ansible ACI content collection.

*Lab 2* : 60 min. : **Incorporate using Excel (CSV) files as a Source of Truth to configure the fabric**

This lab demonstrates using Excel files as a source of truth for playbooks managing an ACI fabric. The students will also see the extensibility of Ansible Engine through the use of WWT developed software to optimize and incorporate spreadsheets into the workflow.

*Lab 3* : 60 min. : **Configure and execute your playbook using Ansible Tower**

This lab provides experience configuring Ansible Tower to execute the playbooks from Lab 1 and 2. This lab reinforces the concept of promoting workflow from the network programmability developer's desktop to production deployment by using version control and Ansible Tower.
