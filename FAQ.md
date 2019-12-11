Frequently Asked Questions
--------------------------

These are frequently asked questions based on customer engagements and the collateral provided in the webinar.

## Questions and Answers

Q: *Could you define what 'control node' represents in the context of Ansible?*

A. There are two types of machines in the Ansible architecture: the control node and managed hosts. Ansible (engine) software is installed on the control node. Ansible Tower is a control node with the Tower software installed.  In the case of Cisco ACI, the managed host is one of the three clustered APICs.

Q: *What are some of the reasons for implementing Content Collections?*

A: Ansible has increased in popularity to the point where the shear number of contributors exceeded the ability to incorporate their code into the official Ansible distribution in a timely manner. Collections provide a means where the OEMs, or individual contributors, could develop and publish moduless and roles independently from the core Ansible distribution. It greatly enhances the extensibility of the Ansible framework.

Q: *Are there any best practices for authenticating with the APIC?*

A: While you can authenticate using a username and password, the best solution is to use signature-based authentication. It is more efficient than than password-based authentication and minimizes the likelihood of triggering the anti-DOS logic.

Q: *In a three APIC cluster, does it matter which APIC the playbook uses?*

A: No, use any available APIC, with either the in-band or out-of-band management IP address. You can code the playbook to randomly select one of the cluster management IP addresses.

Q: *Can the same playbook be used to create or delete managed objects on the APIC?*

A: Yes, the ACI modules include a variable called 'state', which can be set to 'present' or 'absent', which will create or delete the target object. The sample playbooks in this repository illustrate that use case.

Q: *Does the playbook run on the APIC?*

A: No, the playbook runs on the control node and communicates with the APIC via the REST API. The local connection runs commands locally, instead of running over SSH. In the sample playbook we specify 'connection: local'.

Q: *If my playbook has multiple tasks, for example, tasks to manage tenants, VRFs, Bridge Domains, Application Profiles, etc., can I selectively execute the task to delete an Application Profile?*

A: Yes, you can associate one or more 'tags' with a task and specify the tags you wish to execute using the '--tags' option. Alternately, if the tasks in the playbook loop over a list variable, you could control the execution by providing an empty list for the list variable. There are a number of ways to control the execution of a playbook without modifying the playbook itself.

Q: *Where can I go for more information or questions on using Ansible with Cisco ACI?*

A: There several lists of resources in the main `README.md` file. Use the [issue tracker](https://gitlab.com/joelwking/cisco_dc_community_of_interest/issues/new) and open a new issue if you have questions or comments not covered in those links. There is a slide with a list of key contacts shared during the presentation.